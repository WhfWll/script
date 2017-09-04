# coding=utf-8
from management import BaseCommand
from static_tester.android.android_tester import AndroidAnalyzer
from static_tester.ios.ios_tester import IosAnalyzer
from utils import einfo

android_tester = ['get_base_info', 'static_start']
ios_tester = ['get_base_info', 'static_start']


class Command(BaseCommand):
    def __init__(self):
        super(Command, self).__init__()
        self.help = "静态检测."

    def handle(self):
        file_type = self.get_file_type()
        if file_type == 'APK':
            app = AndroidAnalyzer(self.file_name)
            app.get_base_info()
        elif file_type == 'IOS':
            app = IosAnalyzer(self.file_name)
        else:
            einfo('未知文件类型')
            return
        app.start()
