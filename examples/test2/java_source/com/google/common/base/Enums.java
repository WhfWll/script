package com.google.common.base;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;

@Beta
@GwtCompatible
public final class Enums
{
  static
  {
    JniLib.a(Enums.class, 329);
  }
  
  private Enums() {}
  
  public static native <T extends Enum<T>> Function<String, T> valueOfFunction(Class<T> paramClass);
  
  private static final class ValueOfFunction<T extends Enum<T>>
    implements Function<String, T>
  {
    private final Class<T> enumClass;
    
    static
    {
      JniLib.a(ValueOfFunction.class, 328);
    }
    
    private ValueOfFunction(Class<T> paramClass)
    {
      enumClass = ((Class)Preconditions.checkNotNull(paramClass));
    }
    
    public native T apply(String paramString);
  }
}
