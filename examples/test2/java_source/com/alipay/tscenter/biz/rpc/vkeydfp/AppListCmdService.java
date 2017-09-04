package com.alipay.tscenter.biz.rpc.vkeydfp;

import com.alipay.mobile.framework.service.annotation.a;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.AppListCmdRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListCmdResult;

public abstract interface AppListCmdService
{
  @a(a="alipay.security.vkeyDFP.appListCmd.get")
  public abstract AppListCmdResult getAppListCmd(AppListCmdRequest paramAppListCmdRequest);
  
  @a(a="alipay.security.vkeyDFP.appListCmd.reGet")
  public abstract AppListCmdResult reGetAppListCmd(AppListCmdRequest paramAppListCmdRequest);
}
