package com.alipay.a.a;

import com.bangcle.andjni.JniLib;
import java.lang.reflect.Type;
import java.util.Collection;

public final class b
  implements i, j
{
  static
  {
    JniLib.a(b.class, 24);
  }
  
  public b() {}
  
  private static native Collection<Object> a(Class<?> paramClass, Type paramType);
  
  public final native Object a(Object paramObject);
  
  public final native Object a(Object paramObject, Type paramType);
  
  public final native boolean a(Class<?> paramClass);
}
