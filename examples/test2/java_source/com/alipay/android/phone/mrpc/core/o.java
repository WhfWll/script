package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import com.bangcle.andjni.JniLib;

public final class o
  extends ad
{
  Context a;
  
  static
  {
    JniLib.a(o.class, 53);
  }
  
  public o(Context paramContext)
  {
    a = paramContext;
  }
  
  public final native <T> T a(Class<T> paramClass, e paramE);
}
