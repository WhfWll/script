package com.alipay.sdk.app;

import android.app.Activity;
import com.alipay.sdk.util.h;
import com.bangcle.andjni.JniLib;

public class PayTask
{
  static final Object a = h.class;
  private Activity b;
  private com.alipay.sdk.widget.a c = null;
  
  static
  {
    JniLib.a(PayTask.class, 115);
  }
  
  public PayTask(Activity paramActivity)
  {
    b = paramActivity;
  }
  
  private native String a(com.alipay.sdk.protocol.a paramA);
  
  private native String a(String paramString);
  
  private native String b(String paramString);
  
  private native String c(String paramString);
  
  public native boolean checkAccountIfExist();
  
  public native String getVersion();
  
  public native String pay(String paramString);
}
