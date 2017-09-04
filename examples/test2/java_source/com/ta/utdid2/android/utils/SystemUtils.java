package com.ta.utdid2.android.utils;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import java.io.File;

public class SystemUtils
{
  static
  {
    JniLib.a(SystemUtils.class, 1005);
  }
  
  public SystemUtils() {}
  
  public static native String getAppLabel(Context paramContext);
  
  public static native String getCpuInfo();
  
  public static native File getRootFolder(String paramString);
  
  public static native int getSystemVersion();
}
