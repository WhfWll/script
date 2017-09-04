# coding=utf-8
import re
import subprocess
import settings
from base import Base, ScanLog
from settings import ToolSettings
from static_tester.stream import Stream
from utils import einfo, pinfo


class AaptAnalysis(object):
    def __init__(self, apk_path, log):
        self.apk_path = apk_path
        self.log = log
        self.APP_NAME = 'unknown'
        self.ICON = 'unknown'

    # 获得图标和APP_NAME，返回命令执行内容
    def get_icon_label(self):
        # 获取icon
        cmd = Stream.AAPT_DUMP % (ToolSettings.TOOL_AAPT, self.apk_path)
        aapt_raw = self.log.call_subprocess(cmd)
        regx = re.compile("icon='(?P<icon>.+)'")
        match = regx.search(aapt_raw)
        if match is not None:
            self.ICON = match.group('icon')
        # 获取app_name
        zh = "'zh'"
        zh_cn = "'zh_CN'"
        locale_regx = re.compile("locales:(?P<locale>.+)")
        label_regx = re.compile(".+label='(?P<label>.+?)'.+")
        label_zh = re.compile("application-label-zh:'(?P<label>.+)'")
        label_zhcn = re.compile("application-label-zh_CN:'(?P<label>.+)'")
        match = locale_regx.search(aapt_raw)
        if match is not None:
            locales = match.group('locale')
            if zh in locales:
                match = label_zh.search(aapt_raw)
                if match is not None:
                    self.APP_NAME = match.group('label')
                elif zh_cn in locales:
                    match = label_zhcn.search(aapt_raw)
                    if match is not None:
                        self.APP_NAME = match.group('label')
            elif zh_cn in locales:
                match = label_zhcn.search(aapt_raw)
                if match is not None:
                    self.APP_NAME = match.group('label')
            else:
                match = label_regx.search(aapt_raw)
                if match is not None:
                    self.APP_NAME = match.group('label')
        else:
            match = label_regx.search(aapt_raw)
            if match is not None:
                self.APP_NAME = match.group('label')

        if self.APP_NAME == 'unknown':
            match = label_regx.search(aapt_raw)
            if match is not None:
                self.APP_NAME = match.group('label')
        return aapt_raw

    def get_info_from_aapt(self):
        aapt_raw = self.get_icon_label()
        pkgname = re.search("package: name='(?P<my>\S+)'", aapt_raw)
        version_code = re.search("versionCode='(?P<my>\S+)'", aapt_raw)
        version_name = re.search("versionName='(?P<my>\S+)'", aapt_raw)
        sdk_version = re.search("sdkVersion:'(?P<my>\S+)'", aapt_raw)
        target_sdk_version = re.search(
            "targetSdkVersion:'(?P<my>\S+)'", aapt_raw)
        PERMISSIONS = re.findall("uses-permission:'(?P<my>\S+)'", aapt_raw)
        main_activity = re.search(
            "launchable activity name='(?P<my>\S+)'\s?label=", aapt_raw)

        MAX_SDK = ''
        try:
            PACKAGE_NAME = pkgname.groups()[0]
        except:
            PACKAGE_NAME = 'unknown'
        try:
            MAIN_ACTIVITY = main_activity.groups()[0]
        except:
            MAIN_ACTIVITY = 'Unknown'
        try:
            VERSION_CODE = version_code.groups()[0]
        except:
            VERSION_CODE = 'Unknown'
        try:
            VERSION = version_name.groups()[0]
        except:
            VERSION = 'Unknown'
        try:
            MIN_SDK = sdk_version.groups()[0]
        except:
            MIN_SDK = 'Unknown'
        try:
            TARGET_SDK = target_sdk_version.groups()[0]
        except:
            TARGET_SDK = 'Unknown'

        aapt_value = {
            'icon': self.ICON,
            'app_name': self.APP_NAME,
            'package_name': PACKAGE_NAME,
            'main_activity': MAIN_ACTIVITY,
            'target_sdk': TARGET_SDK,
            'min_sdk': MIN_SDK,
            'max_sdk': MAX_SDK,
            'version': VERSION,
            'version_code': VERSION_CODE,
            'permissions': str(PERMISSIONS)
        }
        return aapt_value

    def _parse_xml_from_aapt_(self):
        cmd = Stream.AAPT_DUMP_XMLTREE % (settings.get_aapt(), self.apk_path)
        cmd = cmd.split(' ')
        AAPT_DETAIL = subprocess.Popen(cmd, stdout=subprocess.PIPE)
        manifest = AAPT_DETAIL.stdout.readlines()
        sep = '  '
        xmls = []

        for line in manifest:
            level = 0
            for i in range(1, 10):
                if line.startswith(sep * i) and not line.startswith(sep * (i + 1)):
                    level = i
                    break
            context = {
                'line': line,
                'level': level,
                'feature': self.get_feature(line),
            }

        self.AAPT_XML = {'manifest': []}

        for i in xmls:
            self._parse_(i)

    def get_feature(self, line):
        f_reg = re.compile(': (?P<name>[a-zA-Z0-9\-]+) ?\(?')
        r = f_reg.findall(line)
        if len(r) > 0:
            r = r[0]
        return r

    def _parse_(self, xml):
        t = {}
        t['feature'] = xml['feature']
        t['line'] = xml['line']
        t['level'] = xml['level']
        t['attr'] = []
        if xml['level'] == 0 or xml['level'] == 1:
            pass
        elif xml['level'] == 2:
            self.AAPT_XML['manifest'].append(t)
        elif xml['level'] > 2:
            LEN = []
            floor = xml['level'] - 2
            c_mani = self.AAPT_XML['manifest']
            LEN.append(len(c_mani))
            for i in range(0, floor):
                try:
                    t_mani = c_mani[LEN[i] - 1]
                    c_len = len(t_mani['attr'])
                    LEN.append(c_len)
                    if i + 1 < floor:
                        c_mani = t_mani['attr']
                except Exception as e:
                    einfo("aapt获得XML错误！" + str(e))
                    pass

            para_str = ''
            for i in range(0, floor):
                para_str += '[' + str(LEN[i] - 1) + ''']['attr']'''

            s = '''self.AAPT_XML['manifest']''' + para_str + '''.append(t)'''
            try:
                exec (s)
            except Exception as e:
                einfo("从aapt获得XML错误！这个APP没治了..." + str(e))

    def get_info_from_xml(self):
        context = {}
        if self.AAPT_XML:
            pinfo("应用XML数据获取成功！")
        a_xml = self.AAPT_XML['manifest']
        version_code = None
        version_name = None
        package_name = None
        min_sdk = None
        target_sdk = None
        mainact = None
        permissions = []
        activities = []
        receivers = []
        providers = []
        services = []

        exp_activities = []
        exp_receivers = []
        exp_services = []
        exp_providers = []

        version_code_regx = '\)(?P<version>0x\w+)'
        version_name_regx = '\(Raw: "(?P<vname>.+)"\)'
        package_name_regx = '\(Raw: "(?P<package>.+)"\)'
        min_sdk_regx = '\)(?P<min_sdk>0x\w+)'
        target_sdk_regx = '\)(?P<target_sdk>0x\w+)'
        permission_regx = '\(Raw: "(?P<permission>.+)"\)'
        component_regx = '\(Raw: "(?P<comp>.+)"\)'

        for node in a_xml:
            if 'android:versionCode' in node['line'] and not version_code:
                version_re = re.compile(version_code_regx)
                version_code = version_re.findall(node['line'])
                if len(version_code) > 0:
                    version_code = version_code[0]
                    print "Found version code : %s" % version_code
                else:
                    version_code = 'unknown'
                    # a_xml.remove(node)

            if 'android:versionName' in node['line'] and not version_name:
                # (Raw: "5.5.365")
                version_name_re = re.compile(version_name_regx)
                version_name = version_name_re.findall(node['line'])
                if len(version_name) > 0:
                    version_name = version_name[0]
                    print "Found version name : %s" % version_name
                else:
                    version_name = 'unknown'
                    # a_xml.remove(node)

            if 'package="' in node['line'] and not package_name:
                # package="com.SvADK8.s6lFYYB" (Raw: "com.SvADK8.s6lFYYB")
                package_name_re = re.compile(package_name_regx)
                package_name = package_name_re.findall(node['line'])
                if len(package_name) > 0:
                    package_name = package_name[0]
                    print "Found package name : %s" % package_name
                else:
                    package_name = 'unknown'
                    # a_xml.remove(node)

            if 'uses-sdk' in node['line']:
                for node_attr in node['attr']:
                    if 'android:minSdkVersion' in node_attr['line'] and not min_sdk:
                        # android:minSdkVersion(0x0101020c)=(type 0x10)0x8
                        min_sdk_re = re.compile(min_sdk_regx)
                        min_sdk = min_sdk_re.findall(node_attr['line'])
                        if len(min_sdk) > 0:
                            min_sdk = min_sdk[0]
                            print "Found min_sdk version : %s" % min_sdk
                        else:
                            min_sdk = 'unknown'
                            # node['attr'].remove(node_attr)

                    if 'android:targetSdkVersion' in node_attr['line'] and not target_sdk:
                        # android:targetSdkVersion(0x01010270)=(type 0x10)0x13
                        target_sdk_re = re.compile(target_sdk_regx)
                        target_sdk = target_sdk_re.findall(node_attr['line'])
                        if len(target_sdk) > 0:
                            target_sdk = target_sdk[0]
                            print "Found target_sdk version : %s" % target_sdk
                        else:
                            target_sdk = 'unknown'
                            # node['attr'].remove(node_attr)

            if 'uses-permission' in node['line']:
                for node_attr in node['attr']:
                    permission_re = re.compile(permission_regx)
                    t_perm = permission_re.findall(node_attr['line'])
                    if len(t_perm) > 0:
                        print "Found permission : %s" % t_perm[0]
                        permissions = permissions.__add__(t_perm)

            if 'application' in node['line']:
                component_re = re.compile(component_regx)
                for app_node in node['attr']:
                    if app_node['feature'].lower() == 'activity':
                        exported = True
                        is_intent = False
                        for app_node_node in app_node['attr']:
                            if 'android:name' in app_node_node['line']:
                                activity = component_re.findall(
                                    app_node_node['line'])
                                if len(activity) > 0:
                                    # print "Found activity : %s" % activity[0]
                                    activities = activities.__add__(activity)

                            if 'android:exported' in app_node_node['line'] and '0xffffffff' in app_node_node[
                                'line'].lower():
                                exported = False

                            if 'intent-filter' in app_node_node['line'] and exported:
                                is_intent = True

                                for compo_attr in app_node_node['attr']:
                                    if 'action' in compo_attr['line']:
                                        # exclude main activity
                                        for action in compo_attr['attr']:
                                            if 'android.intent.action.MAIN' in action['line']:
                                                exported = False
                                                mainact = activity[0]

                            if exported and is_intent:
                                exp_activities.append(activity[0])
                                # print "<--!-->Found exported activity : %s" %
                                # activity[0]

                    if app_node['feature'].lower() == 'receiver':
                        exported = True
                        is_intent = False
                        for app_node_node in app_node['attr']:
                            if 'android:name' in app_node_node['line']:
                                receiver = component_re.findall(
                                    app_node_node['line'])
                                if len(receiver) > 0:
                                    print "Found receiver : %s" % receiver[0]
                                    receivers.__add__(receiver)

                            if 'android:exported' in app_node_node['line'] and '0xffffffff' in app_node_node[
                                'line'].lower():
                                exported = False

                            if 'intent-filter' in app_node_node['line']:
                                is_intent = True

                            if exported and is_intent:
                                exp_receivers.append(receiver[0])
                                # print "<--!-->Found exported receiver : %s" %
                                # receiver[0]

                    if app_node['feature'].lower() == 'service':
                        exported = True
                        is_intent = False
                        for app_node_node in app_node['attr']:
                            if 'android:name' in app_node_node['line']:
                                service = component_re.findall(
                                    app_node_node['line'])
                                if len(service) > 0:
                                    # print "Found service : %s" % service[0]
                                    services.__add__(service)

                            if 'android:exported' in app_node_node['line'] and '0xffffffff' in app_node_node[
                                'line'].lower():
                                exported = False

                            if 'intent-filter' in app_node_node['line']:
                                is_intent = True

                            if exported and is_intent:
                                exp_services.append(service[0])
                                # print "<--!-->Found exported service : %s" %
                                # service[0]

                    if app_node['feature'].lower() == 'provider':
                        exported = True
                        is_intent = False
                        for app_node_node in app_node['attr']:
                            if 'android:name' in app_node_node['line']:
                                provider = component_re.findall(
                                    app_node_node['line'])
                                if len(provider) > 0:
                                    # print "Found provider : %s" % provider[0]
                                    providers.__add__(provider)

                            if 'android:exported' in app_node_node['line'] and '0xffffffff' in app_node_node[
                                'line'].lower():
                                exported = False

                            if 'intent-filter' in app_node_node['line']:
                                is_intent = True

                            if exported and is_intent:
                                exp_providers.append(provider[0])
                                # print "<--!-->Found exported provider : %s" %
                                # provider[0]

        if not mainact:
            mainact = activities[0]

        context.update({
            'Permissions': permissions,
            'Package_Name': package_name,
            'Version_Code': version_code,
            'Version': version_name,
            'Min_SDK': min_sdk,
            'Target_SDK': target_sdk,
            'Main_Activity': mainact,
            'Activitys': activities,
            'Services': services,
            'Receivers': receivers,
            'Providers': providers,
            'Act_count': len(activities),
            'Ser_count': len(services),
            'Rec_count': len(receivers),
            'Pro_count': len(providers),
        })

        return context

