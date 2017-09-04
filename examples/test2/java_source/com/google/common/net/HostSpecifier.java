package com.google.common.net;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import java.text.ParseException;
import javax.annotation.Nullable;

@Beta
public final class HostSpecifier
{
  private final String canonicalForm;
  
  static
  {
    JniLib.a(HostSpecifier.class, 904);
  }
  
  private HostSpecifier(String paramString)
  {
    canonicalForm = paramString;
  }
  
  public static native HostSpecifier from(String paramString)
    throws ParseException;
  
  public static native HostSpecifier fromValid(String paramString);
  
  public static native boolean isValid(String paramString);
  
  public native boolean equals(@Nullable Object paramObject);
  
  public native int hashCode();
  
  public native String toString();
}
