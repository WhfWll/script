package com.tl.uic.javascript;

import android.content.Context;
import com.bangcle.andjni.JniLib;

public class JavaScriptInterface
{
  static
  {
    JniLib.a(JavaScriptInterface.class, 1032);
  }
  
  public JavaScriptInterface(Context paramContext) {}
  
  public final native void addMessage(String paramString);
}
