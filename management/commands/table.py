# coding=utf-8
from management import BaseCommand
from management.models.appinfo import AppInfo
from management.models.repository import Repository


class Command(BaseCommand):
    def __init__(self):
        super(Command, self).__init__()
        self.app = AppInfo()
        self.rep = Repository()
        self.help = "操作数据库."

    def handle(self):

        if self.manipulate == 'create':
            self.app.create_table()
            self.rep.create_table()
            self.rep.init_table()
        elif self.manipulate == 'drop':
            self.app.drop_table()
            self.rep.drop_table()
        else:
            print '未定义的操作: ' + str(self.manipulate)
