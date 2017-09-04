package com.alipay.a.a;

import com.bangcle.andjni.JniLib;
import java.lang.reflect.Type;
import java.util.Map;

public final class h
  implements i, j
{
  static
  {
    JniLib.a(h.class, 30);
  }
  
  public h() {}
  
  private static native Map<Object, Object> a(Type paramType);
  
  public final native Object a(Object paramObject);
  
  public final native Object a(Object paramObject, Type paramType);
  
  public final native boolean a(Class<?> paramClass);
}
