package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Context;
import com.alipay.sdk.protocol.a;
import com.alipay.sdk.util.h;
import com.bangcle.andjni.JniLib;

public class AuthTask
{
  static final Object a = h.class;
  private static final int b = 73;
  private Activity c;
  
  static
  {
    JniLib.a(AuthTask.class, 110);
  }
  
  public AuthTask(Activity paramActivity)
  {
    c = paramActivity;
  }
  
  private native String a(Activity paramActivity, String paramString);
  
  private native String a(a paramA);
  
  private static native boolean a(Context paramContext);
  
  private native String b(Activity paramActivity, String paramString);
  
  public native String auth(String paramString);
}
