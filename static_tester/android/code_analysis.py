# coding=utf-8
import os
import re
import shutil
import io
from settings import ToolSettings
from utils import einfo, pinfo, exec_command_silence


class CodeAnalysis(object):
    def __init__(self, extract_path, files):
        self.extract_path = extract_path
        self.files = files
        self.black_list = ['android', 'com/google', 'com/android', 'org/apache']
        self.dex_path = []
        self.dex_to_jar()
        self.dex_to_smali()
        self.jar_to_java()

    def dex_to_jar(self):
        pinfo("DEX -> JAR")
        # files = os.walk(self.extract_path).next()[2]
        self.dex_path = [os.path.join(self.extract_path, f) for f in self.files if
                         '.' in f and f.split('.')[-1] == 'dex']
        for dex in self.dex_path:
            args = [ToolSettings.TOOL_DEX2JAR, dex, '-o', dex.replace('dex', 'jar')]
            exec_command_silence(args)

    def dex_to_smali(self):
        pinfo("DEX -> SMALI")
        output = os.path.join(self.extract_path, 'smali_source')
        for dex in self.dex_path:
            args = [ToolSettings.JAVA_PATH, '-jar', ToolSettings.TOOL_BAKSAMLI, dex, '-o', output]
            exec_command_silence(args)

    def jar_to_java(self):
        pinfo("JAR -> JAVA")
        jar_path = [dex.replace('dex', 'jar') for dex in self.dex_path]
        output = os.path.join(self.extract_path, 'java_source')
        for jar in jar_path:
            args = [ToolSettings.JAVA_PATH, '-jar', ToolSettings.TOOL_JDCORE, jar, output]
            exec_command_silence(args)

    def init_blacklist(self, path):
        for black_path in self.black_list:
            if type(black_path) is str:
                if path.startswith(black_path):
                    return True
            elif type(black_path) is list:
                for b in black_path:
                    if path.startswith(b):
                        return True
        return False

    def analysis_code(self):
        column = []
        code_vul_db = []
        for vul_item in code_vul_db:
            column.append(vul_item.flag)

        context = {key: [] for key in column}

        urllist = []
        emaillist = []

        JS = os.path.join(self.extract_path, 'java_source')

        url_reg = re.compile(
            ur'((?:https?://|s?ftps?://|file://|javascript:|data:|www\d{0,3}[.])[\w().=/;,#:@?&~*+!$%\'{}-]+)',
            re.UNICODE)
        email_reg = re.compile("[\w.-]+@[\w-]+\.[\w.]+")

        pinfo("Code Analysis Started on - " + JS)
        for dirName, subDir, files in os.walk(JS):
            for jfile in files:
                jfile_path = os.path.join(JS, dirName, jfile)
                if "+" in jfile:
                    p2 = os.path.join(JS, dirName, jfile.replace("+", "x"))
                    shutil.move(jfile_path, p2)
                    jfile_path = p2
                repath = jfile_path.replace(JS, '')

                # 排除分析默认框架的源码 及 第三方SDK源码
                if not self.init_blacklist(repath):
                    with io.open(jfile_path, mode='r', encoding="utf8", errors="ignore") as f:
                        dat = f.read()
                        f.close()

                    for vul in code_vul_db:
                        result = False
                        features = getattr(vul, 'check_feature')
                        for feature in features:
                            is_found = True
                            if isinstance(feature, list):
                                # pinfo('Now checking %s' % feature)
                                for i in feature:
                                    try:
                                        t_reg = re.compile(i)
                                        if not t_reg.findall(dat):
                                            is_found = False
                                    except Exception as e:
                                        einfo('Code analysis error! ' + str(e))
                            else:
                                try:
                                    t_reg = re.compile(feature)
                                    if not t_reg.findall(dat):
                                        is_found = False
                                except Exception as e:
                                    einfo('Code analysis error! ' + str(e))
                            result = result or is_found

                        if result:
                            t_column = getattr(vul, 'flag')
                            context[t_column].append(
                                jfile_path.replace(JS, ''))

                    # URLs My Custom regex
                    for url in re.findall(url_reg, dat.lower()):
                        urllist.append(url)
                    # Email Etraction Regex
                    for email in email_reg.findall(dat.lower()):
                        emaillist.append(email)

        context['URLs'] = list(set(urllist))
        context['Emails'] = []

        for email in list(set(emaillist)):
            if not email.startswith('//'):
                context['Emails'].append(email)

        print "[INFO] Finished Code Analysis, Email and URL Extraction"
        return context
