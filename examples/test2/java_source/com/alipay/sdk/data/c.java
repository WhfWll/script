package com.alipay.sdk.data;

import com.bangcle.andjni.JniLib;
import java.util.ArrayList;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;

public final class c
{
  public static final String a = "application/octet-stream;binary/octet-stream";
  public Header[] b = null;
  public String c = null;
  public String d = null;
  
  static
  {
    JniLib.a(c.class, 148);
  }
  
  public c() {}
  
  private native void a(String paramString);
  
  private native void a(Header[] paramArrayOfHeader);
  
  private native void b(String paramString);
  
  private native Header[] b();
  
  private native String c();
  
  private native String d();
  
  private native void e();
  
  public final native ArrayList<BasicHeader> a();
}
