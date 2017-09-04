import sqlite3
import settings
from utils import einfo


class DataModel(object):
    def __init__(self):
        self.cx = sqlite3.connect(settings.DATA_DB_PATH)
        self.cx.text_factory = 'st'
        self.cu = self.cx.cursor()

    def exec_sql(self, val):
        try:
            self.cu.execute(val)
            self.cx.commit()
        except Exception as e:
            einfo(e)


class VULModel(object):
    def __init__(self):
        self.cx = sqlite3.connect(settings.VUL_DB_PATH)
        self.cx.text_factory = 'st'
        self.cu = self.cx.cursor()

    def exec_sql(self, val):
        try:
            self.cu.execute(val)
            self.cx.commit()
        except Exception as e:
            einfo(e)
