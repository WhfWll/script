package ss.ss.gK;

import ss.ag;
import ss.ak;
import ss.ss.h;
import ss.w;

public final class o
{
  static final String a = h.a().b();
  public static final String b = a + "-Sent-Millis";
  public static final String c = a + "-Received-Millis";
  public static final String d = a + "-Selected-Protocol";
  public static final String e = a + "-Response-Source";
  
  public static long a(ag paramAg)
  {
    return a(paramAg.c());
  }
  
  public static long a(ak paramAk)
  {
    return a(paramAk.e());
  }
  
  public static long a(w paramW)
  {
    return b(paramW.a("Content-Length"));
  }
  
  static boolean a(String paramString)
  {
    return (!"Connection".equalsIgnoreCase(paramString)) && (!"Keep-Alive".equalsIgnoreCase(paramString)) && (!"Proxy-Authenticate".equalsIgnoreCase(paramString)) && (!"Proxy-Authorization".equalsIgnoreCase(paramString)) && (!"TE".equalsIgnoreCase(paramString)) && (!"Trailers".equalsIgnoreCase(paramString)) && (!"Transfer-Encoding".equalsIgnoreCase(paramString)) && (!"Upgrade".equalsIgnoreCase(paramString));
  }
  
  private static long b(String paramString)
  {
    if (paramString == null) {
      return -1L;
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return -1L;
  }
}
