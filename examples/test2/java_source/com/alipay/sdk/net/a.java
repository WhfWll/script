package com.alipay.sdk.net;

import android.content.Context;
import android.net.NetworkInfo;
import com.alipay.sdk.data.c;
import com.alipay.sdk.exception.NetErrorException;
import com.bangcle.andjni.JniLib;
import java.io.IOException;
import java.net.URL;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.entity.ByteArrayEntity;

public final class a
{
  String a;
  private Context b;
  
  static
  {
    JniLib.a(a.class, 158);
  }
  
  private a(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public a(Context paramContext, String paramString)
  {
    b = paramContext;
    a = paramString;
  }
  
  private native String a();
  
  private static native ByteArrayEntity a(c paramC, String paramString)
    throws IOException;
  
  private native void a(String paramString);
  
  private native URL b();
  
  private native HttpResponse b(String paramString)
    throws NetErrorException;
  
  private native HttpHost c();
  
  private native HttpHost d();
  
  private native HttpHost e();
  
  private native NetworkInfo f();
  
  private native String g();
  
  public final native HttpResponse a(String paramString, c paramC)
    throws NetErrorException;
}
