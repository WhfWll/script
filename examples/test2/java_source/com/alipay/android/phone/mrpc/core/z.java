package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import com.bangcle.andjni.JniLib;

public final class z
{
  private static Boolean a = null;
  
  static
  {
    JniLib.a(z.class, 64);
  }
  
  public static final native boolean a(Context paramContext);
}
