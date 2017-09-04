package com.MobileTicket;

import android.app.Application;
import android.content.Context;
import com.bangcle.andjni.JniLib;

public class MyApplication
  extends Application
{
  public static Context context;
  
  static
  {
    JniLib.a(MyApplication.class, 14);
  }
  
  public MyApplication() {}
  
  public static native Context getContext();
  
  public native void onCreate();
}
