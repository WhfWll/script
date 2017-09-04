package org.webrtc;

import java.util.EnumSet;
import java.util.Iterator;

public class Logging
{
  static
  {
    System.loadLibrary("Arrownock");
  }
  
  public Logging() {}
  
  public static void enableTracing(String paramString, EnumSet<Logging.TraceLevel> paramEnumSet, Logging.Severity paramSeverity)
  {
    paramEnumSet = paramEnumSet.iterator();
    for (int i = 0; paramEnumSet.hasNext(); i = nextlevel | i) {}
    nativeEnableTracing(paramString, i, paramSeverity.ordinal());
  }
  
  private static native void nativeEnableTracing(String paramString, int paramInt1, int paramInt2);
}
