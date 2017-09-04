# coding=utf-8
import subprocess
import re
import os
from django.utils.html import escape
from settings import ToolSettings
from utils import einfo, pinfo


class CertAnalysis(object):
    def __init__(self, extract_path, files):
        self.extract_path = extract_path
        self.cert_file = os.path.join(self.extract_path, 'META-INF/')
        self.files = files

    def get_hardcoded_cert_keystore(self):
        pinfo('开始获取硬编码Certificates/Keystores')
        certz = []
        key_store = []
        try:
            for file_name in self.files:
                ext = file_name.split('.')[-1]
                if re.search("cer|pem|cert|crt|pub|key|pfx|p12", ext):
                    pinfo('获取到硬编码证书文件')
                    certz.append(file_name)
                if re.search("jks|bks", ext):
                    pinfo('获取到硬编码keystore文件')
                    key_store.append(file_name)
        except:
            einfo("获取硬编码Certificates/Keystores错误")

        result = {
            'certz': certz,
            'key_store': key_store
        }
        return result

    def get_cert(self):
        try:
            pinfo("开始获取签名文件")
            files = [f for f in os.listdir(self.cert_file) if os.path.isfile(os.path.join(self.cert_file, f))]
            for file_name in files:
                if file_name.lower().split('.')[-1] in ['rsa', 'dsa']:
                    args = [ToolSettings.JAVA_PATH, '-jar', ToolSettings.TOOL_CERTPRINT,
                            os.path.join(self.cert_file, file_name)]
                    issued = 'good'
                    dat = subprocess.check_output(args)
                    if re.findall(r"Issuer: CN=Android Debug|Subject: CN=Android Debug", dat):
                        issued = 'bad'
                    if re.findall(r"\[SHA1withRSA\]", dat):
                        issued = 'bad hash'
                    result = {
                        'cert_file': file_name,
                        'cert_info': dat,
                        'issued': issued
                    }
                    return result
        except:
            einfo("签名获取异常")
