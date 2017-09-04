import os
import sys

BASE_DIR = os.path.abspath(os.path.dirname(__file__))
TOOL_DIRECTORY = os.path.join(BASE_DIR, 'tools')


def tool_path(toolname):
    tool = os.path.join(TOOL_DIRECTORY, toolname)
    assert os.path.exists(tool) == 1
    return tool


def get_aapt():
    if 'linux' in sys.platform:
        return tool_path('aapt')
    else:
        return tool_path('aapt.exe')


def get_java():
    if 'linux' in sys.platform:
        toolname = 'java'
    else:
        toolname = 'java.exe'
    tool = os.path.join(TOOL_DIRECTORY, 'jdk1.8', 'bin', toolname)
    assert os.path.exists(tool) == 1
    return tool


def tool_d2j2(toolname):
    if 'linux' in sys.platform:
        toolname += '.sh'
    else:
        toolname += '.bat'
    tool = os.path.join(TOOL_DIRECTORY, 'd2j2', toolname)
    assert os.path.exists(tool) == 1
    return tool


class ToolSettings(object):
    TOOL_AAPT = get_aapt()
    TOOL_AXML = tool_path('Axml.jar')
    TOOL_AXMLPRINTER3 = tool_path('AXMLPrinter3.jar')
    TOOL_DEX2JAR = tool_d2j2('d2j-dex2jar')
    TOOL_BAKSAMLI = tool_path('baksmali.jar')
    TOOL_JDCORE = tool_path('jd-core.jar')
    TOOL_CERTPRINT = tool_path('CertPrint.jar')
    JAVA_PATH = get_java()


DATA_DB_PATH = os.path.join(BASE_DIR, 'databases', 'data.db')
VUL_DB_PATH = os.path.join(BASE_DIR, 'databases', 'vul.db')
