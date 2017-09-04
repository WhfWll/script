package com.alipay.apmobilesecuritysdk.d;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import java.util.Map;

public final class a
{
  static
  {
    JniLib.a(a.class, 68);
  }
  
  public static native Map<String, String> a(Context paramContext, Map<String, String> paramMap);
}
