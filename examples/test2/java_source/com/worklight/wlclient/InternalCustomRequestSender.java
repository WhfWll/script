package com.worklight.wlclient;

import com.bangcle.andjni.JniLib;
import com.worklight.wlclient.api.WLResponseListener;
import org.apache.http.client.methods.HttpRequestBase;

class InternalCustomRequestSender
  implements Runnable
{
  HttpRequestBase httpRequest;
  WLResponseListener listener;
  int requestTimeoutInMilliseconds;
  
  static
  {
    JniLib.a(InternalCustomRequestSender.class, 1221);
  }
  
  protected InternalCustomRequestSender(HttpRequestBase paramHttpRequestBase, int paramInt, WLResponseListener paramWLResponseListener)
  {
    httpRequest = paramHttpRequestBase;
    requestTimeoutInMilliseconds = paramInt;
    listener = paramWLResponseListener;
  }
  
  public native void run();
}
