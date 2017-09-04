# coding=utf-8
import os


class SdkCheck(object):
    def __init__(self, *args):
        self.activities, self.services, self.receivers, self.meta_data = args

    def find_sdk(self):
        sdks = []
        feature_dict = {
            'activity': self.activities,
            'receiver': self.services,
            'service': self.receivers,
        }

        for sdk in sdks:
            features = sdk.sdk_feature
            paths = sdk.sdk_path
            for feature in features:
                is_this_sdk = True
                if feature[0] in feature_dict.keys():
                    for i in range(1, len(feature)):
                        if feature[i] not in feature_dict.get(feature[0]):
                            is_this_sdk = False
                else:
                    for data in self.meta_data:
                        if feature[1] in data.getAttribute('android:name'):
                            is_this_sdk = True
                            break
                        elif len(feature) > 2 and os.path.exists(self.APP_DIR + "/smali_source/com") and feature[
                            2] in os.listdir(self.APP_DIR + "/smali_source/com"):
                            is_this_sdk = True
                            break
                        else:
                            is_this_sdk = False
                # else:
                #     is_this_sdk = False
                #
                # if is_this_sdk:
                #     # 如果发现使用了该SDK，则设置黑名单
                #     self.black_list.append(paths)
                #     sdk.app_info.add(self)
