package com.lidroid.xutils.util;

import android.webkit.MimeTypeMap;

public class MimeTypeUtils
{
  private MimeTypeUtils() {}
  
  public static String getMimeType(String paramString)
  {
    String str = "application/octet-stream";
    int i = paramString.lastIndexOf(".");
    if (i != -1)
    {
      paramString = paramString.substring(i + 1);
      str = MimeTypeMap.getSingleton().getMimeTypeFromExtension(paramString);
    }
    return str;
  }
}
