# coding=utf-8
import hashlib
import io
import logging
import os
import subprocess
import zipfile


class Base(object):
    def __init__(self, apk_path, extract_path=None, filename=None, logger=None):
        self.apk_path = apk_path
        assert os.path.exists(self.apk_path) == True
        self.extract_path = os.path.dirname(apk_path)
        self.file_name = os.path.split(apk_path)[-1]
        self.file_type = None
        self.context = {}

    def get_md5(self):
        app_hash = hashlib.md5()
        f = io.open(self.apk_path, 'rb')
        while True:
            block = f.read(65536)
            if not block:
                break
            app_hash.update(block)
        f.close()
        return app_hash.hexdigest()

    def get_sha1(self):
        sha1 = hashlib.sha1()
        with io.open(self.apk_path, mode='rb') as afile:
            buf = afile.read(65536)
            while len(buf) > 0:
                sha1.update(buf)
                buf = afile.read(65536)
        afile.close()
        return sha1.hexdigest()

    def unzip(self):
        """
        解压缩文件
        """
        try:
            with zipfile.ZipFile(self.apk_path, "r") as z:
                z.extractall(self.extract_path)
                self.files = z.namelist()
        except Exception:
            try:
                subprocess.call([
                    'unzip', '-o', '-q', self.apk_path,
                    '-d', self.extract_path
                ])
                dat = subprocess.check_output([
                    'unzip', '-qq', '-l', self.apk_path
                ])
                self.files = [line.strip().split("   ")[-1]
                              for line in dat.split(os.linesep)]
            except Exception:
                pass

    def file_size(self):
        return round(float(os.path.getsize(self.apk_path)) / (1024 * 1024), 2)


class ScanLog(object):
    def __init__(self, extract_path, logfile='app_scan.log'):
        self.extract_path = extract_path
        self.logger = self.logger_constructor(logfile)

    def logger_constructor(self, logfile=None):
        """
        构建日志句柄对象
        :param logfile:
        """
        logger = logging.getLogger()
        log_file = self.get_log(logfile)
        hdlr = logging.FileHandler(log_file)
        formatter = logging.Formatter(
            ('[%(asctime)s]%(filename)s'
             '-%(process)d-%(thread)d'
             '-%(lineno)d-%(levelname)8s'
             '-"%(message)s"'),
            '%Y-%m-%d %a %H:%M:%S'
        )
        hdlr.setFormatter(formatter)
        logger.addHandler(hdlr)
        logger.setLevel(logging.INFO)
        return logger

    def get_log(self, logfile):
        """
        生成日志文件
        :param logfile:
        """
        assert os.path.exists(self.extract_path) == True
        log_path = os.path.join(self.extract_path, logfile)
        if os.path.exists(log_path):
            os.remove(log_path)
        return log_path

    def call_subprocess(self, cmd):
        """
        执行子进程封装, 并对执行命令进行日志记录
        :param cmd:
        :param cwd:
        """
        self.logger.info(cmd)
        kwargs = {
            'stdin': subprocess.PIPE,
            'stdout': subprocess.PIPE,
            'shell': True,
            'close_fds': True,
        }
        p = subprocess.Popen(
            cmd,
            **kwargs
        )
        communicate = p.communicate()
        messages = communicate[0]
        self.logger.info(messages)
        return messages

    def info(self, text):
        self.logger.info(text)

    def error(self, text):
        self.logger.error(text)
