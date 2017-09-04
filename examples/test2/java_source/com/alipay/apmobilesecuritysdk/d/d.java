package com.alipay.apmobilesecuritysdk.d;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import java.util.Map;

public final class d
{
  static
  {
    JniLib.a(d.class, 71);
  }
  
  public static native Map<String, String> a(Context paramContext);
}
