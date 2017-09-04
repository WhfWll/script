package com.bontai.mobiads.ads;

import android.content.Context;
import android.webkit.JavascriptInterface;
import com.bangcle.andjni.JniLib;

public class RunJavaScript
{
  private Context context;
  
  static
  {
    JniLib.a(RunJavaScript.class, 234);
  }
  
  public RunJavaScript(Context paramContext)
  {
    context = paramContext;
  }
  
  @JavascriptInterface
  public native void onClickAdsImage(String paramString1, String paramString2);
  
  @JavascriptInterface
  public native void showTourMainpage();
}
