package com.alipay.mobilesecuritysdk.face;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import java.util.Map;

public final class a
{
  static
  {
    JniLib.a(a.class, 109);
  }
  
  public a() {}
  
  public static native String a(Context paramContext, Map<String, String> paramMap);
}
