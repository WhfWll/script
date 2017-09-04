package com.sdu.didi.uuid;

import android.content.Context;
import android.text.TextUtils;
import java.util.Locale;

public class SigLib
{
  static
  {
    try
    {
      System.loadLibrary("didi_secure");
      return;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      localUnsatisfiedLinkError.printStackTrace();
    }
  }
  
  public SigLib() {}
  
  private static native String generateAddress(Context paramContext);
  
  private static native String generateParam(Context paramContext, int[] paramArrayOfInt);
  
  private static native String generateParam1(Context paramContext, int[] paramArrayOfInt);
  
  private static native String generateParam2(Context paramContext, int[] paramArrayOfInt);
  
  private static native String generateSig(Context paramContext, String paramString);
  
  static String getAddress(Context paramContext)
  {
    try
    {
      paramContext = generateAddress(paramContext);
      return paramContext;
    }
    catch (UnsatisfiedLinkError paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  static String getParam(Context paramContext, int[] paramArrayOfInt)
  {
    try
    {
      paramContext = generateParam(paramContext, paramArrayOfInt);
      return paramContext;
    }
    catch (UnsatisfiedLinkError paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  static String getParam1(Context paramContext, int[] paramArrayOfInt)
  {
    try
    {
      paramContext = generateParam1(paramContext, paramArrayOfInt);
      return paramContext;
    }
    catch (UnsatisfiedLinkError paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  static String getParam2(Context paramContext, int[] paramArrayOfInt)
  {
    try
    {
      paramContext = generateParam2(paramContext, paramArrayOfInt);
      return paramContext;
    }
    catch (UnsatisfiedLinkError paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  static String getSig(Context paramContext, String paramString)
  {
    Object localObject = null;
    String str = paramString;
    if (paramString.length() >= 2048) {
      str = paramString.substring(0, 2048);
    }
    try
    {
      paramContext = generateSig(paramContext, str);
      paramString = localObject;
      if (!TextUtils.isEmpty(paramContext)) {
        paramString = paramContext.toLowerCase(Locale.ENGLISH);
      }
      return paramString;
    }
    catch (UnsatisfiedLinkError paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        paramContext = null;
      }
    }
  }
}
