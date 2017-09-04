package com.alipay.b.a.a.c;

import android.content.Context;
import com.alipay.android.phone.mrpc.core.ad;
import com.alipay.android.phone.mrpc.core.e;
import com.alipay.android.phone.mrpc.core.o;
import com.alipay.tscenter.biz.rpc.deviceFp.BugTrackMessageService;
import com.alipay.tscenter.biz.rpc.vkeydfp.DeviceDataReportService;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;
import com.bangcle.andjni.JniLib;

public final class b
  implements a
{
  private static b d = null;
  private static DeviceDataReportResult e;
  private ad a = null;
  private BugTrackMessageService b = null;
  private DeviceDataReportService c = null;
  
  static
  {
    JniLib.a(b.class, 99);
  }
  
  private b(Context paramContext, String paramString)
  {
    e localE = new e();
    a = paramString;
    a = new o(paramContext);
    b = ((BugTrackMessageService)a.a(BugTrackMessageService.class, localE));
    c = ((DeviceDataReportService)a.a(DeviceDataReportService.class, localE));
  }
  
  public static native b a(Context paramContext, String paramString);
  
  public final native DeviceDataReportResult a(DeviceDataReportRequest paramDeviceDataReportRequest);
  
  public final native boolean a(String paramString);
}
