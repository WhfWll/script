package cn.dbox.core.g;

import android.content.Context;
import android.provider.Settings.System;
import java.security.MessageDigest;

public class a
{
  private static final String a = "ODIN";
  private static final String b = "SHA-1";
  private static final String c = "iso-8859-1";
  
  public a() {}
  
  public static String a(Context paramContext)
  {
    try
    {
      String str = Settings.System.getString(paramContext.getContentResolver(), "android_id");
      paramContext = str;
    }
    catch (Exception localException)
    {
      try
      {
        paramContext = Settings.System.getString(paramContext.getContentResolver(), "android_id");
      }
      catch (Exception paramContext) {}
    }
    return a(paramContext);
    return null;
  }
  
  private static String a(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
      byte[] arrayOfByte = new byte[40];
      localMessageDigest.update(paramString.getBytes("iso-8859-1"), 0, paramString.length());
      paramString = a(localMessageDigest.digest());
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  private static String a(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    int k;
    int j;
    if (i < paramArrayOfByte.length)
    {
      k = paramArrayOfByte[i] >>> 4 & 0xF;
      j = 0;
    }
    for (;;)
    {
      if ((k >= 0) && (k <= 9)) {
        localStringBuffer.append((char)(k + 48));
      }
      for (;;)
      {
        k = paramArrayOfByte[i];
        if (j < 1) {
          break label88;
        }
        i += 1;
        break;
        localStringBuffer.append((char)(k - 10 + 97));
      }
      return localStringBuffer.toString();
      label88:
      j += 1;
      k &= 0xF;
    }
  }
}
