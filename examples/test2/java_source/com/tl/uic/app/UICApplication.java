package com.tl.uic.app;

import android.app.Application;
import com.bangcle.andjni.JniLib;
import com.tl.uic.Tealeaf;

public class UICApplication
  extends Application
{
  private Tealeaf tealeaf;
  
  static
  {
    JniLib.a(UICApplication.class, 1028);
  }
  
  public UICApplication() {}
  
  public final native Tealeaf getTealeaf();
  
  public native void onCreate();
  
  public native void onLowMemory();
  
  public native void onTerminate();
}
