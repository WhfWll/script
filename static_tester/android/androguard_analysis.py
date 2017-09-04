# coding=utf-8
from androguard.core.analysis.analysis import show_Permissions
from androguard.core.bytecodes import apk
from androguard.misc import AnalyzeAPK
from androguard.util import read
from timeout_decorator import timeout_decorator
from utils import pinfo, einfo


@timeout_decorator.timeout(15)
def read_manifest(self, manifest):
    # 要求安装Androguard的androaxml.py
    pinfo('Now Getting AndroidManifest.xml from Androguard module')
    ap = apk.AXMLPrinter(read(manifest))
    buff = ap.get_buff()
    return buff


@timeout_decorator.timeout(150)
def find_redundancy_permissions(self):
    redundancy_permissions = []
    pinfo("Now finding the redundancy permissions...")
    try:
        apk, d, dx = AnalyzeAPK(self.APP_PATH, decompiler="dad")
        used_permissions = show_Permissions(dx)
        for perm in self.PERMISSIONS:
            if perm not in used_permissions.keys():
                redundancy_permissions.append(perm)
    except Exception as e:
        einfo("Find redundancy permissions occured error: " + str(e))
    finally:
        return redundancy_permissions
