package com.tl.uic.util;

import android.os.AsyncTask;
import com.bangcle.andjni.JniLib;
import com.tl.uic.webkit.UICWebView;
import java.util.Date;
import java.util.Map;
import org.apache.http.HttpResponse;

public class LoadUrlTask
  extends AsyncTask<String, Void, HttpResponse>
{
  private static final int BUFFER_SIZE = 8192;
  private final Map<String, String> extraHeaders;
  private String urlToLoad;
  private final UICWebView webView;
  
  static
  {
    JniLib.a(LoadUrlTask.class, 1061);
  }
  
  public LoadUrlTask(UICWebView paramUICWebView, Map<String, String> paramMap)
  {
    webView = paramUICWebView;
    extraHeaders = paramMap;
    webView.setInitTime(new Date());
  }
  
  private native HttpResponse doRequest(String paramString);
  
  protected final HttpResponse doInBackground(String... paramVarArgs)
  {
    urlToLoad = paramVarArgs[0];
    return doRequest(urlToLoad);
  }
  
  protected final native void onPostExecute(HttpResponse paramHttpResponse);
}
