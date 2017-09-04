package com.google.common.base;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import javax.annotation.Nullable;

@GwtCompatible
public final class Strings
{
  static
  {
    JniLib.a(Strings.class, 371);
  }
  
  private Strings() {}
  
  @Nullable
  public static native String emptyToNull(@Nullable String paramString);
  
  public static native boolean isNullOrEmpty(@Nullable String paramString);
  
  public static native String nullToEmpty(@Nullable String paramString);
  
  public static native String padEnd(String paramString, int paramInt, char paramChar);
  
  public static native String padStart(String paramString, int paramInt, char paramChar);
  
  public static native String repeat(String paramString, int paramInt);
}
