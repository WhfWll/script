package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public final class af
  implements InvocationHandler
{
  protected n a;
  protected Class<?> b;
  protected ag c;
  
  static
  {
    JniLib.a(af.class, 41);
  }
  
  public af(n paramN, Class<?> paramClass, ag paramAg)
  {
    a = paramN;
    b = paramClass;
    c = paramAg;
  }
  
  public final native Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject);
}
