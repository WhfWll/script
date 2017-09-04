package com.alipay.apmobilesecuritysdk.d;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import java.util.Map;

public final class c
{
  static
  {
    JniLib.a(c.class, 70);
  }
  
  public static native Map<String, String> a(Context paramContext);
}
