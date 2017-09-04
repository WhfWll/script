# coding=utf-8
from static_tester.android.dvm_permissions import DVM_PERMISSIONS
from utils import pinfo


class PermissionAnalysis(object):
    def __init__(self, permissions):
        self.permissions = eval(permissions)

    def format_permissions(self):
        pinfo("开始格式化权限")
        d_perm = []
        unknown_perm = []

        for ech in self.permissions:
            pos = ech.rfind(".")
            if pos != -1:
                prm = ech[pos + 1:]
                try:
                    perm = DVM_PERMISSIONS["MANIFEST_PERMISSION"][prm]
                except:
                    unknown_perm.append(ech)
                    continue
                if perm[0] == 'dangerous':
                    d_perm.append(ech)
                else:
                    pass
            else:
                continue
        result = {
            'dangerous_permissions': d_perm,
            'unknown_perm': unknown_perm
        }
        return result

    def find_redundancy_permissions(self):
        return {}
