package com.sdu.didi.openapi.ss;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Environment;
import android.webkit.WebSettings;
import android.webkit.WebSettings.TextSize;
import android.webkit.WebView;
import android.widget.Toast;
import com.sdu.didi.openapi.DiDiWebActivity;
import com.sdu.didi.openapi.utils.Utils;
import java.io.File;
import java.util.ArrayList;

public class g
{
  private ArrayList<AsyncTask> a;
  private WebView b;
  private AsyncTask c;
  
  public g(WebView paramWebView)
  {
    b = paramWebView;
    a(b);
  }
  
  private void a(WebView paramWebView)
  {
    WebSettings localWebSettings = paramWebView.getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setBuiltInZoomControls(false);
    String str = localWebSettings.getUserAgentString();
    if (str.contains("didi.sdk")) {}
    for (;;)
    {
      localWebSettings.setUserAgentString(str);
      localWebSettings.setUseWideViewPort(true);
      localWebSettings.setCacheMode(-1);
      localWebSettings.setDefaultTextEncodingName("UTF-8");
      localWebSettings.setLoadsImagesAutomatically(true);
      paramWebView.getSettings().setDomStorageEnabled(true);
      paramWebView.getSettings().setDatabaseEnabled(true);
      localWebSettings.setTextSize(WebSettings.TextSize.NORMAL);
      if (Build.VERSION.SDK_INT < 19) {
        paramWebView.getSettings().setDatabasePath("/data/data/" + paramWebView.getContext().getPackageName() + "/databases/");
      }
      return;
      str = str + " " + "didi.sdk" + Utils.a();
    }
  }
  
  public void a(String paramString, DiDiWebActivity paramDiDiWebActivity)
  {
    paramDiDiWebActivity = new h(this, paramDiDiWebActivity);
    if (Utils.b()) {
      paramDiDiWebActivity.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[] { paramString });
    }
    for (;;)
    {
      a.add(paramDiDiWebActivity);
      return;
      paramDiDiWebActivity.execute(new String[] { paramString });
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    paramString3 = Uri.parse(paramString1).getLastPathSegment();
    paramString2 = b.getContext();
    if (!Environment.getExternalStorageState().equals("mounted")) {
      Toast.makeText(paramString2, "SD卡没有准备好", 0).show();
    }
    do
    {
      return;
      paramString3 = new File(Environment.getExternalStorageDirectory(), paramString3);
      if (paramString3.exists()) {
        paramString3.delete();
      }
    } while (c != null);
    c = new i(this, paramString2, paramString1, paramString3).execute(new Void[0]);
  }
  
  public void a(ArrayList<AsyncTask> paramArrayList)
  {
    a = paramArrayList;
  }
}
