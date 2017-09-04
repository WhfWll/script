package com.ut.device;

import android.content.Context;
import com.bangcle.andjni.JniLib;

public final class c
{
  static
  {
    JniLib.a(c.class, 1076);
  }
  
  public c() {}
  
  private static native String a(Context paramContext);
  
  private static native String a(String paramString1, String paramString2, Context paramContext);
  
  private static native void a(String paramString1, String paramString2, Context paramContext, a paramA);
}
