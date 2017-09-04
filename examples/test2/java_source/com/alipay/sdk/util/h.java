package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Intent;
import android.content.ServiceConnection;
import com.alipay.android.app.IAlixPay;
import com.alipay.android.app.IRemoteServiceCallback;
import com.bangcle.andjni.JniLib;
import java.lang.ref.WeakReference;

public class h
{
  public static final String a = "failed";
  private WeakReference<Activity> b;
  private IAlixPay c;
  private final Object d = IAlixPay.class;
  private boolean e = false;
  private boolean f;
  private String g;
  private String h;
  private String i = null;
  private ServiceConnection j = new i(this);
  private IRemoteServiceCallback k = new j(this);
  
  static
  {
    JniLib.a(h.class, 178);
  }
  
  public h(Activity paramActivity)
  {
    b = new WeakReference(paramActivity);
  }
  
  private native String a(String paramString, Intent paramIntent);
  
  public final native String a(String paramString);
}
