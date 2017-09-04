package com.alipay.b.a.a.d;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import java.util.Map;

public final class c
{
  static
  {
    JniLib.a(c.class, 104);
  }
  
  public static native String a(Context paramContext, String paramString1, String paramString2, String paramString3);
  
  public static native void a(Context paramContext, String paramString, Map<String, String> paramMap);
}
