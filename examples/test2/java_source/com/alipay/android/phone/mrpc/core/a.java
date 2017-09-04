package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;

public final class a
  extends Exception
{
  public static final int a = 0;
  public static final int b = 1;
  public static final int c = 2;
  public static final int d = 3;
  public static final int e = 4;
  public static final int f = 5;
  public static final int g = 6;
  public static final int h = 7;
  public static final int i = 8;
  public static final int j = 9;
  private static final long k = -6320569206365033676L;
  private int l;
  private String m;
  
  static
  {
    JniLib.a(a.class, 38);
  }
  
  public a(Integer paramInteger, String paramString)
  {
    super(localStringBuilder.toString());
    l = paramInteger.intValue();
    m = paramString;
  }
  
  private a(String paramString)
  {
    super(paramString);
    l = 0;
    m = paramString;
  }
  
  public final native int a();
  
  public final native String b();
}
