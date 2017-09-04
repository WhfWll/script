# coding=utf-8
import os
import pkgutil
import sys
from importlib import import_module
from management.base import CommandParser, BaseCommand


class ManagementUtility(object):
    def __init__(self, argv=None):
        self.argv = argv or sys.argv[:]
        self.prog_name = os.path.basename(self.argv[0])
        self.settings_exception = None

    def main_help_text(self):
        """
        返回脚本帮助信息
        """
        commands = '\n'
        for k in self.get_commands().keys():
            commands = commands + k + '\n'

        usage = "可用命令是: %s" % commands

        return usage

    def fetch_command(self, subcommand):

        commands = self.get_commands()
        try:
            app_name = import_module(commands[subcommand]).Command()
        except KeyError:
            sys.stderr.write("unknown command: %r\nType '%s help' for usage.\n" %
                             (subcommand, self.prog_name))
            sys.exit(1)

        if isinstance(app_name, BaseCommand):
            return app_name

    def execute(self):
        try:
            subcommand = self.argv[1]
        except IndexError:
            subcommand = '--help'

        if subcommand in ['--help', '-h']:
            sys.stdout.write(self.main_help_text() + '\n')
        elif subcommand == 'version' or self.argv[1:] == ['--version']:
            sys.stdout.write('' + '\n')
        elif len(self.argv) == 2:
            pass
        else:
            self.fetch_command(subcommand).run_from_argv(*self.argv)

    def get_commands(self):
        command_dir = os.path.join(os.path.dirname(__file__), 'commands')
        cmd_list = [name for _, name, is_pkg in pkgutil.iter_modules([command_dir])
                    if not is_pkg and not name.startswith('_')]
        return {cmd: 'management.commands.' + cmd for cmd in cmd_list}
