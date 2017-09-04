package com.tencent.mm.sdk.a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.sdk.b.h;

public final class a
{
  public static boolean a(Context paramContext, a paramA)
  {
    if (paramContext == null)
    {
      com.tencent.mm.sdk.b.b.b("MicroMsg.SDK.MMessageAct", "send fail, invalid argument");
      return false;
    }
    if (h.h(W))
    {
      com.tencent.mm.sdk.b.b.b("MicroMsg.SDK.MMessageAct", "send fail, invalid targetPkgName, targetPkgName = " + W);
      return false;
    }
    if (h.h(X)) {
      X = (W + ".wxapi.WXEntryActivity");
    }
    com.tencent.mm.sdk.b.b.e("MicroMsg.SDK.MMessageAct", "send, targetPkgName = " + W + ", targetClassName = " + X);
    Intent localIntent = new Intent();
    localIntent.setClassName(W, X);
    if (Z != null) {
      localIntent.putExtras(Z);
    }
    String str = paramContext.getPackageName();
    localIntent.putExtra("_mmessage_sdkVersion", 587268097);
    localIntent.putExtra("_mmessage_appPackage", str);
    localIntent.putExtra("_mmessage_content", Y);
    localIntent.putExtra("_mmessage_checksum", com.tencent.mm.sdk.a.a.b.a(Y, 587268097, str));
    if (flags == -1) {
      localIntent.addFlags(268435456).addFlags(134217728);
    }
    for (;;)
    {
      try
      {
        paramContext.startActivity(localIntent);
        com.tencent.mm.sdk.b.b.e("MicroMsg.SDK.MMessageAct", "send mm message, intent=" + localIntent);
        return true;
      }
      catch (Exception paramContext)
      {
        com.tencent.mm.sdk.b.b.a("MicroMsg.SDK.MMessageAct", "send fail, ex = %s", new Object[] { paramContext.getMessage() });
      }
      localIntent.setFlags(flags);
    }
    return false;
  }
  
  public static final class a
  {
    public String W;
    public String X;
    public String Y;
    public Bundle Z;
    public int flags = -1;
    
    public a() {}
    
    public final String toString()
    {
      return "targetPkgName:" + W + ", targetClassName:" + X + ", content:" + Y + ", flags:" + flags + ", bundle:" + Z;
    }
  }
}
