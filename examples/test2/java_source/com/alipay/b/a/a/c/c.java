package com.alipay.b.a.a.c;

import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.bangcle.andjni.JniLib;

final class c
  implements Runnable
{
  static
  {
    JniLib.a(c.class, 100);
  }
  
  c(b paramB, DeviceDataReportRequest paramDeviceDataReportRequest) {}
  
  public final native void run();
}
