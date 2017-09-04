package com.alipay.tscenter.biz.rpc.vkeydfp;

import com.alipay.mobile.framework.service.annotation.a;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;

public abstract interface DeviceDataReportService
{
  @a(a="alipay.security.vkeyDFP.appList.get")
  public abstract AppListResult getAppList(String paramString);
  
  @a(a="alipay.security.vkeyDFP.staticData.report")
  public abstract DeviceDataReportResult reportStaticData(DeviceDataReportRequest paramDeviceDataReportRequest);
}
