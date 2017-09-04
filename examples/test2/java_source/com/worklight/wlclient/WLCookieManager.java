package com.worklight.wlclient;

import com.bangcle.andjni.JniLib;
import java.net.URI;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.cookie.Cookie;

public class WLCookieManager
{
  private static Set<Cookie> cookies;
  private static String instanceAuthId = null;
  
  static
  {
    JniLib.a(WLCookieManager.class, 1223);
  }
  
  public WLCookieManager() {}
  
  public static native void addCookies(WLRequest paramWLRequest);
  
  public static native void clearCookies();
  
  public static native Set<Cookie> getCookies();
  
  public static native String getInstanceAuthId();
  
  public static native void handleResponseHeaders(Header[] paramArrayOfHeader, URI paramURI);
  
  public static native void setCookies(String paramString1, String paramString2);
  
  public static native void setInstanceAuthId(String paramString);
}
