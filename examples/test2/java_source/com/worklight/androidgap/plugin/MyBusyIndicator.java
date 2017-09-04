package com.worklight.androidgap.plugin;

import android.app.ProgressDialog;
import com.bangcle.andjni.JniLib;

public class MyBusyIndicator
  extends BusyIndicator
{
  private boolean isShowing = false;
  private ProgressDialog spinnerDialog = null;
  
  static
  {
    JniLib.a(MyBusyIndicator.class, 1120);
  }
  
  public MyBusyIndicator() {}
  
  public native void hide();
  
  public native boolean isShowing();
  
  public native void show(String paramString);
}
