package com.tl.uic.http;

import com.bangcle.andjni.JniLib;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

public class TLDefaultHttpClient
  extends DefaultHttpClient
{
  static
  {
    JniLib.a(TLDefaultHttpClient.class, 1029);
  }
  
  public TLDefaultHttpClient()
  {
    init(null);
  }
  
  public TLDefaultHttpClient(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    super(paramClientConnectionManager, paramHttpParams);
    init(null);
  }
  
  public TLDefaultHttpClient(HttpParams paramHttpParams)
  {
    super(paramHttpParams);
    init(null);
  }
  
  public TLDefaultHttpClient(HttpParams paramHttpParams, String paramString)
  {
    super(paramHttpParams);
    init(paramString);
  }
  
  private native void init(String paramString);
}
