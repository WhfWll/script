package com.alipay.sdk.authjs;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import org.json.JSONException;

public final class d
{
  c a;
  Context b;
  
  static
  {
    JniLib.a(d.class, 143);
  }
  
  public d(Context paramContext, c paramC)
  {
    b = paramContext;
    a = paramC;
  }
  
  private static native void a(Runnable paramRunnable);
  
  private native void a(String paramString);
  
  private native a.a b(a paramA);
  
  private native void c(a paramA);
  
  public final native void a(a paramA)
    throws JSONException;
  
  public final native void a(String paramString, a.a paramA)
    throws JSONException;
}
