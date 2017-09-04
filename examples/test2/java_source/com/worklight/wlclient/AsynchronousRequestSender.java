package com.worklight.wlclient;

import com.bangcle.andjni.JniLib;
import com.worklight.wlclient.api.WLResponseListener;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpRequestBase;

public class AsynchronousRequestSender
{
  private static final ExecutorService pool = Executors.newFixedThreadPool(6);
  private static AsynchronousRequestSender sender;
  
  static
  {
    JniLib.a(AsynchronousRequestSender.class, 1219);
  }
  
  private AsynchronousRequestSender() {}
  
  public static native HttpClient getHttpClient();
  
  public static native AsynchronousRequestSender getInstance();
  
  public static native void releaseHttpClient();
  
  public native void sendCustomRequestAsync(HttpRequestBase paramHttpRequestBase, int paramInt, WLResponseListener paramWLResponseListener);
  
  public native void sendRequestAsync(WLRequest paramWLRequest);
}
