package com.MobileTicket;

import android.app.Activity;
import android.os.Bundle;
import com.bangcle.andjni.JniLib;

public class WebPayActivity
  extends Activity
{
  private static boolean callJSFlag = false;
  
  static
  {
    JniLib.a(WebPayActivity.class, 22);
  }
  
  public WebPayActivity() {}
  
  public static native boolean isCallJSFlag();
  
  public static native void setCallJSFlag(boolean paramBoolean);
  
  public native void onCreate(Bundle paramBundle);
}
