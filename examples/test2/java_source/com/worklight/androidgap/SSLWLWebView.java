package com.worklight.androidgap;

import android.content.Context;
import android.view.KeyEvent;
import android.webkit.WebSettings;
import android.webkit.WebSettings.TextSize;
import com.bangcle.andjni.JniLib;
import java.io.File;
import org.apache.cordova.CordovaWebView;

public class SSLWLWebView
  extends CordovaWebView
{
  static
  {
    JniLib.a(SSLWLWebView.class, 1080);
  }
  
  public SSLWLWebView(Context paramContext)
  {
    super(paramContext);
    WebSettings localWebSettings = getSettings();
    localWebSettings.setDefaultTextEncodingName("utf-8");
    localWebSettings.setDatabaseEnabled(true);
    localWebSettings.setTextSize(WebSettings.TextSize.NORMAL);
    paramContext = paramContext.getApplicationContext().getDir("database", 0).getPath();
    if (paramContext != null) {
      localWebSettings.setDatabasePath(paramContext);
    }
  }
  
  public native boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent);
}
