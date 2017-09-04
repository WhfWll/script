package com.tl.uic.util;

import com.bangcle.andjni.JniLib;
import java.lang.reflect.Method;

public final class ReflectionUtil
{
  private static volatile ReflectionUtil _myInstance;
  
  static
  {
    JniLib.a(ReflectionUtil.class, 1064);
  }
  
  private ReflectionUtil() {}
  
  public static native Object getField(Object paramObject, String paramString);
  
  public static native ReflectionUtil getInstance();
  
  public static Method getMethod(Object paramObject, String paramString, Class... paramVarArgs)
  {
    Object localObject = null;
    try
    {
      paramObject = paramObject.getClass().getDeclaredMethod(paramString, paramVarArgs);
      localObject = paramObject;
      paramObject.setAccessible(true);
      return paramObject;
    }
    catch (Exception paramObject)
    {
      LogInternal.logException(paramObject);
    }
    return localObject;
  }
  
  public static Method getStaticMethod(Class paramClass, String paramString, Class... paramVarArgs)
  {
    localClass = null;
    if ((paramClass == null) || (paramString == null) || (paramVarArgs == null)) {
      return null;
    }
    try
    {
      paramClass = paramClass.getClass().getDeclaredMethod(paramString, paramVarArgs);
      localClass = paramClass;
      paramClass.setAccessible(true);
    }
    catch (Exception paramClass)
    {
      for (;;)
      {
        LogInternal.logException(paramClass);
        paramClass = localClass;
      }
    }
    return paramClass;
  }
}
