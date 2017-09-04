package com.google.common.base;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
final class Platform
{
  private static final ThreadLocal<char[]> DEST_TL = new ThreadLocal()
  {
    static
    {
      JniLib.a(1.class, 349);
    }
    
    protected native char[] initialValue();
  };
  
  static
  {
    JniLib.a(Platform.class, 350);
  }
  
  private Platform() {}
  
  static native char[] charBufferFromThreadLocal();
  
  static native boolean isInstance(Class<?> paramClass, @Nullable Object paramObject);
  
  static native CharMatcher precomputeCharMatcher(CharMatcher paramCharMatcher);
  
  static native long systemNanoTime();
}
