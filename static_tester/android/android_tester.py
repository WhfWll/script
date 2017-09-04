# coding=utf-8
import sqlite3
import settings
from base import Base, ScanLog
from management.models.appinfo import AppInfo
from static_tester.android.aapt import AaptAnalysis
from static_tester.android.cert_analysis import CertAnalysis
from static_tester.android.code_analysis import CodeAnalysis
from static_tester.android.features import AndroidFeature
from static_tester.android.manifest_analysis import Manifest
from static_tester.android.permissions_analysis import PermissionAnalysis
from static_tester.android.sdk_check import SdkCheck
from utils import pinfo, einfo


class AndroidAnalyzer(Base):
    def __init__(self, apk_path):
        super(AndroidAnalyzer, self).__init__(apk_path)
        self.aapt = None
        self.base_context = None
        self.static_context = {}
        self.unzip()

    def get_base_info(self):
        log = ScanLog(self.extract_path)
        self.aapt = AaptAnalysis(self.apk_path, log)
        aapt_value = self.aapt.get_info_from_aapt()
        self.base_context = (
            self.file_name, aapt_value['icon'], aapt_value['app_name'], self.file_size(), self.get_md5(),
            self.get_sha1(),
            aapt_value['package_name'], aapt_value['main_activity'], aapt_value['target_sdk'], aapt_value['min_sdk'],
            aapt_value['max_sdk'], aapt_value['version'], aapt_value['version_code'], aapt_value['permissions'])
        self.save_db()

    def start(self):
        self.is_protected()
        self.cert_analysis()
        self.manifest_analysis()
        self.permissions_analysis()
        self.code_analysis()
        # context = update_dict(context, udfAnalysis)
        # self.save_db()
        # self.set_check_state(1)
        # self.calcscore()

    def save_db(self):
        appinfo = AppInfo()
        appinfo.save(self.base_context)

    def is_protected(self):
        # 获得加固状态
        app = open(self.apk_path, 'rb')
        data = app.read()
        app.close()

        protected = False
        enterprise = 'None'

        for key, value in AndroidFeature.protect_dic.items():
            if key in data:
                protected = True
                enterprise = value
                break

        if protected:
            pinfo('%s被%s加固了' % (self.base_context[2], enterprise))
        else:
            pinfo('%s没有被加固!' % self.base_context[2])
        context = {'protected': protected, 'enterprise': enterprise}
        self.static_context.update(context)

    def cert_analysis(self):
        cert_analysis = CertAnalysis(self.extract_path, self.files)
        self.static_context.update(cert_analysis.get_hardcoded_cert_keystore())
        self.static_context.update(cert_analysis.get_cert())

    def manifest_analysis(self):
        try:
            manifest = Manifest(self.extract_path)
            context = manifest.get_component_from_xml()
            context.update(manifest.xml_analysis())
        except Exception as e:
            einfo(e)
            context = self.aapt.get_info_from_xml()
        self.static_context.update(context)

    def permissions_analysis(self):
        per_analysis = PermissionAnalysis(self.base_context[-1])
        self.static_context.update(per_analysis.format_permissions())
        self.static_context.update(per_analysis.find_redundancy_permissions())

    def code_analysis(self):
        code = CodeAnalysis(self.extract_path, self.files)
        sdks = SdkCheck(self.static_context['activities'], self.static_context['services'], self.context['receivers'],
                        self.static_context['metainfo'])
        sdks.find()
        code.analysis_code()

    def calc_score(self):
        score_weight = {
            'Bug': 0.8,
            'Threat': 0.3,
            'Sensitive': 0.2,
        }
        score = 100.0
        check_result = self.aobj.checkresult_set.all()
        for result in check_result:
            if result.number == 0:
                continue
            else:
                vunl_db = result.vulnerability
                weight = vunl_db.knowledge.rank
                v_type = getattr(vunl_db, 'v_type')

                # 如果是敏感信息，则按个数计算分数
                if v_type == 'Sensitive':
                    weight = weight * result.number
                    if weight >= 100:
                        weight = 100
                # 若判断条件为‘存在则安全’，则表示其为加分项目
                # 此时判断检测结果表中该项对应的漏洞数目是否为0
                # 若为0，则表示通过检查，应该加分。否则减分
                if vunl_db.judge_reverse and result.number == 0:
                    score += weight * score_weight.get(v_type)
                elif result.number != 0:
                    pinfo('subtract %s cause %s' % (weight, str(vunl_db.name)))
                    score -= weight * score_weight.get(v_type)
        # 控制分数在10-90的区间内
        if score < 10:
            score = 10
        elif score > 90:
            score = 90
        if self.aobj is not None:
            self.aobj.Score = score
            self.aobj.save()
        return score

    def set_check_state(self, check_state):
        self.aobj.CheckState = check_state
        self.aobj.save()
