package com.alipay.sdk.widget;

import android.app.Activity;
import android.app.ProgressDialog;
import com.bangcle.andjni.JniLib;

public final class a
{
  Activity a;
  ProgressDialog b;
  
  static
  {
    JniLib.a(a.class, 182);
  }
  
  public a(Activity paramActivity)
  {
    a = paramActivity;
  }
  
  private native void a(CharSequence paramCharSequence);
  
  public final native boolean a();
  
  public final native void b();
  
  public final native void c();
}
