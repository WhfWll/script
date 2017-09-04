package com.worklight.wlclient;

import com.bangcle.andjni.JniLib;
import com.worklight.common.WLConfig;
import org.apache.http.impl.client.DefaultHttpClient;

class HttpClientFactory
{
  private static final int SOCKET_OPERATION_TIMEOUT = 60000;
  private static DefaultHttpClient client;
  
  static
  {
    JniLib.a(HttpClientFactory.class, 1220);
  }
  
  HttpClientFactory() {}
  
  public static native DefaultHttpClient getInstance(WLConfig paramWLConfig)
    throws RuntimeException;
  
  static native void releaseInstance();
}
