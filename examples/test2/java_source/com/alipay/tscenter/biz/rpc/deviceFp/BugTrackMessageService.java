package com.alipay.tscenter.biz.rpc.deviceFp;

import com.alipay.mobile.framework.service.annotation.a;

public abstract interface BugTrackMessageService
{
  @a(a="alipay.security.errorLog.collect")
  public abstract String logCollect(String paramString);
}
