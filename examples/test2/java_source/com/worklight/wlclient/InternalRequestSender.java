package com.worklight.wlclient;

import com.bangcle.andjni.JniLib;
import org.apache.http.client.HttpClient;

class InternalRequestSender
  implements Runnable
{
  WLRequest request;
  
  static
  {
    JniLib.a(InternalRequestSender.class, 1222);
  }
  
  protected InternalRequestSender(WLRequest paramWLRequest)
  {
    request = paramWLRequest;
  }
  
  private native void addInstanceAuthHeader();
  
  private native void setConnectionTimeout(HttpClient paramHttpClient);
  
  private native void setUserAgentHeader(HttpClient paramHttpClient);
  
  public native void run();
}
