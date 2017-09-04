package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import java.util.regex.Pattern;

public final class r
{
  private static final Pattern a = Pattern.compile("([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])");
  private static final Pattern b = Pattern.compile("[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})");
  
  static
  {
    JniLib.a(r.class, 56);
  }
  
  public static native long a(String paramString);
  
  private static native int b(String paramString);
  
  private static native int c(String paramString);
  
  private static native int d(String paramString);
  
  private static native a e(String paramString);
  
  private static final class a
  {
    int a;
    int b;
    int c;
    
    a(int paramInt1, int paramInt2, int paramInt3)
    {
      a = paramInt1;
      b = paramInt2;
      c = paramInt3;
    }
  }
}
