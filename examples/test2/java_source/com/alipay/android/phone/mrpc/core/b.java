package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public final class b
  implements Serializable
{
  private static final long a = -6098125857367743614L;
  private Map<String, String> b = new HashMap();
  
  static
  {
    JniLib.a(b.class, 43);
  }
  
  public b() {}
  
  private native Map<String, String> a();
  
  private native void a(Map<String, String> paramMap);
  
  public final native String a(String paramString);
  
  public final native void a(String paramString1, String paramString2);
}
