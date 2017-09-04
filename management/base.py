# coding=utf-8
import os
from argparse import ArgumentParser
from optparse import OptionParser


class CommandParser(ArgumentParser):
    def __init__(self, cmd, **kwargs):
        self.cmd = cmd
        super(CommandParser, self).__init__(**kwargs)

    def parse_args(self, args=None, namespace=None):
        return super(CommandParser, self).parse_args(args, namespace)


class BaseCommand(object):

    def __init__(self):
        self.file_name = None
        self.manipulate = None

    def run_from_argv(self, *argv):
        parser = OptionParser()
        parser.add_option('-f', '--file', dest="filename", help='要检测的文件名')
        parser.add_option('-m', '--manipulate', dest="manipulate", help='要进行的检测项')
        options, args = parser.parse_args(list(argv[2:]))
        self.file_name = options.filename
        self.manipulate = options.manipulate
        output = self.handle()

    def handle(self):
        raise NotImplementedError('subclasses of BaseCommand must provide a handle() method')

    def get_file_type(self):

        with open(self.file_name) as fd:
            raw = fd.read(10)
            if raw[0:2] == "PK" or ('AndroidManifest.xml' in raw and 'META-INF/MANIFEST.MF' in raw):
                self.file_type = "APK"
            elif raw[0:3] == "dex":
                self.file_type = "DEX"
            elif raw[0:3] == "dey":
                self.file_type = "DEY"
            elif raw[0:7] == "\x7fELF\x01\x01\x01":
                self.file_type = "ELF"
            elif raw[0:4] == "\x03\x00\x08\x00":
                self.file_type = "AXML"
            elif raw[0:4] == "\x02\x00\x0C\x00":
                self.file_type = "ARSC"
        return self.file_type