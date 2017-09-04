# coding=utf-8
import subprocess


def pinfo(mstr):
    print '[Info] ' + str(mstr)


def einfo(e):
    print '[Error] ' + str(e)


def exec_command_silence(cmd):
    try:
        subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    except Exception as e:
        einfo(e)