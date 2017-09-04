# coding=utf-8
import os
from xml.dom import minidom
import subprocess
from settings import ToolSettings
from utils import einfo, pinfo


class Manifest(object):
    def __init__(self, extract_path):
        self.file = os.path.join(extract_path, 'AndroidManifest.xml')
        self.main_act = None
        self.MANIFEST = self.get_manifest()

    def read_manifest(self):
        try:
            pinfo("将二进制xml文件转化成可读xml文件")
            args = [ToolSettings.JAVA_PATH, '-jar', ToolSettings.TOOL_AXMLPRINTER3, self.file]
            dat = subprocess.check_output(args)
            return dat
        except Exception as e:
            einfo('AndroidManifest.xml文件解析失败, app可能受保护了! %s' % e)

    def get_manifest(self):
        dat = self.read_manifest()
        try:
            pinfo("解析AndroidManifest.xml")
            mfest = minidom.parseString(dat)
        except Exception as e:
            einfo('获取配置文件时出错： ' + str(e))
            mfest = None
        return mfest

    def get_base_info(self):
        version_code = ''
        version_name = ''
        package = ''
        min_sdk = ''
        target_sdk = ''
        max_sdk = ''

        for node in self.MANIFEST.getElementsByTagName("uses-sdk"):
            min_sdk = node.getAttribute("android:minSdkVersion")
            max_sdk = node.getAttribute("android:maxSdkVersion")
            target_sdk = node.getAttribute("android:targetSdkVersion")
        for node in self.MANIFEST.getElementsByTagName("manifest"):
            package = node.getAttribute("package")
            version_code = node.getAttribute("android:versionCode")
            version_name = node.getAttribute("android:versionName")

        context = {
            'permissions': {p.getAttribute("android:name") for p in
                            self.MANIFEST.getElementsByTagName("uses-permission")},
            'package_ame': package,
            'version_code': version_code,
            'version': version_name,
            'min_sdk': min_sdk,
            'target_sdk': target_sdk,
            'max_sdk': max_sdk,
        }
        return context

    def get_component_from_xml(self):
        acts = []
        main_act = ''
        try:
            activities = self.MANIFEST.getElementsByTagName("activity")
            metainfo = self.MANIFEST.getElementsByTagName('meta')

            for act in activities:
                acts.append(act.getAttribute("android:name"))
                if len(main_act) < 1:
                    for item in act.getElementsByTagName("action"):
                        if item.getAttribute("android:name") == "android.intent.action.MAIN":
                            main_act = act.getAttribute("android:name")
                    if main_act == '':
                        for item in act.getElementsByTagName("category"):
                            if item.getAttribute("android:name") == "android.intent.category.LAUNCHER":
                                main_act = act.getAttribute("android:name")

            self.main_act = main_act
            services = [s.getAttribute("android:name") for s in self.MANIFEST.getElementsByTagName("service")]
            providers = [p.getAttribute("android:name") for p in self.MANIFEST.getElementsByTagName("provider")]
            receivers = [r.getAttribute("android:name") for r in self.MANIFEST.getElementsByTagName("receiver")]
            libs = [lib.getAttribute("android:name") for lib in self.MANIFEST.getElementsByTagName("uses-library")]

            context = {
                'activities': acts,
                'main_act': main_act,
                'services': services,
                'receivers': receivers,
                'providers': providers,
                'act_count': len(acts),
                'ser_count': len(services),
                'rec_count': len(receivers),
                'pro_count': len(providers),
                'libs': libs,
                'metainfo': metainfo
            }
            return context
        except Exception as e:
            einfo('通过配置文件获取组件信息时发生错误' + str(e))

    def xml_analysis(self):
        pinfo("开始分析AndroidManifest.xml文件")
        is_debugable = False
        is_allow_backup = False
        is_test_only = False
        task_stack = []
        launch_mode = []
        exp_activities = []
        grant_uri = []
        secret_code = []
        sms_port = []
        android_priority = []
        exp_broadcast = [b.getAttribute("android:name") for b in self.MANIFEST.getElementsByTagName("receiver") if
                         b.getAttribute("android:exported") == 'true']
        exp_provider = [p.getAttribute("android:name") for p in self.MANIFEST.getElementsByTagName("provider") if
                        p.getAttribute("android:exported") == 'true']
        exp_service = [s.getAttribute("android:name") for s in self.MANIFEST.getElementsByTagName("service") if
                       s.getAttribute("android:exported") == 'true']

        for application in self.MANIFEST.getElementsByTagName("application"):
            is_debugable = application.getAttribute("android:debuggable") == "true" or False
            # 只有明确指定 android:allowBackup 值为false时才会不允许备份
            is_allow_backup = False if application.getAttribute("android:allowBackup") == "false" else True
            is_test_only = application.getAttribute("android:testOnly") == "true" or False

            for node in application.childNodes:
                component_dict = {
                    'activity': 'Activity',
                    'activity-alias': 'Activity-Alias',
                    'provider': 'Content Provider',
                    'receiver': 'Broadcast Receiver',
                    'service': 'Service'
                }
                item_name = component_dict.get(node.nodeName)
                if not item_name:
                    continue
                # 任务栈亲和度
                if item_name in ['Activity', 'Activity-Alias'] and node.getAttribute("android:taskAffinity"):
                    # 为Activity指定了taskAffinity，不安全。
                    task_stack.append(node.getAttribute("android:name"))

                # 加载模式
                if item_name in ['Activity', 'Activity-Alias'] and node.getAttribute("android:launchMode") in [
                    'singleInstance', 'singleTask']:
                    launch_mode.append(node.getAttribute("android:name"))

                # 导出检测
                if node.getAttribute("android:exported") == 'true':
                    item = node.getAttribute("android:name")
                    if item != self.main_act and item_name in ['Activity', 'Activity-Alias']:
                        exp_activities.append(item)

                if node.getAttribute("android:name") == self.main_act:
                    continue
                else:
                    item = node.getAttribute("android:name")
                if not node.getAttribute("android:exported"):
                    # 组件没有声明 android:exported时，检查intent-filter
                    for i in node.childNodes:
                        if i.nodeName == "intent-filter":
                            if item_name in ['Activity', 'Activity-Alias']:
                                exp_activities.append(item)
                            elif item_name == 'Broadcast Receiver':
                                exp_broadcast.append(item)
                            elif item_name == 'Content Provider':
                                exp_provider.append(item)
                            elif item_name == 'Service':
                                exp_service.append(item)
                            else:
                                pass

        # GRANT-URI-PERMISSIONS
        # 应用内授权检查（Content Provider安全）
        for grant_uri in self.MANIFEST.getElementsByTagName("grant-uri-permission"):
            try:
                parent_node_name = grant_uri.parentNode.getAttribute("android:name")
            except:
                parent_node_name = 'unknown'
                # "[pathPrefix=/]" 被设置，外部程序可以访问任意内容
                # "[path=/]" 被设置，外部程序可以访问根目录下的任意内容
                # "[path=*]" 被设置，外部程序可以访问任意后缀的内容，即所有内容
            if grant_uri.getAttribute("android:pathPrefix") == '/' or grant_uri.getAttribute(
                    "android:path") == '/' or grant_uri.getAttribute("android:pathPattern") == '*':
                grant_uri.append(parent_node_name)

        # data 标签
        for data in self.MANIFEST.getElementsByTagName("data"):
            if data.getAttribute("android:scheme") == "android_secret_code":
                # 在data标签中使用 android_secret_code 来处理Android的隐形字符串（如拨打
                # #*#888#*#*这样的电话号码），处理结果可能会返回敏感信息")
                secret_code.append(data.getAttribute("android:host"))
            elif data.getAttribute("android:port"):
                # 在某个端口监听为一个二进制短信接收器，系统可以用它来接收短信并且认为它来自一个可信的信道
                sms_port.append(data.getAttribute("android:port"))

        # INTENTS
        for intent in self.MANIFEST.getElementsByTagName("intent-filter"):
            if intent.getAttribute("android:priority").isdigit() and int(intent.getAttribute("android:priority")) > 100:
                # 组件设置了一个较高优先级的过滤器，可能会覆盖系统应用或其他的处理响应
                try:
                    intent_parent_name = intent.parentNode.getAttribute("android:name")
                except:
                    intent_parent_name = 'unknown'
                android_priority.append(intent_parent_name)

        # ACTIONS
        for action in self.MANIFEST.getElementsByTagName("action"):
            if action.getAttribute("android:priority").isdigit() and int(action.getAttribute("android:priority")) > 100:
                # 组件设置了一个较高优先级的过滤器，可能会覆盖系统应用或其他的处理响应
                try:
                    intent_parent_name = action.parentNode.getAttribute("android:name")
                except:
                    intent_parent_name = 'unknown'
                android_priority.append(intent_parent_name)

        result = {'is_debugable': is_debugable,
                  'is_allow_backup': is_allow_backup,
                  'is_test_only': is_test_only,
                  'taskStack': task_stack,
                  'launchMode': launch_mode,
                  'GrantURI': grant_uri,
                  'exp_activity': exp_activities,
                  'exp_broadcast': exp_broadcast,
                  'exp_provider': exp_provider,
                  'exp_service': exp_service,
                  'secret_code': secret_code,
                  'smsPort': sms_port,
                  'Android_priority': android_priority
                  }

        return result
