package cn.domob.android.i;

import android.util.Log;

public class f
{
  public static String a = "DB";
  private static boolean c = false;
  private static final int d = 7;
  private static long e = 0L;
  private static long f = 0L;
  private String b;
  
  public f(String paramString)
  {
    b = paramString;
  }
  
  public f(String paramString1, String paramString2)
  {
    b = paramString1;
    if (!h.e(paramString2)) {
      a = paramString2;
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public static String b()
  {
    return a;
  }
  
  private void b(String paramString, int paramInt)
  {
    a(b + "::" + paramString, paramInt);
  }
  
  public void a(Object paramObject, String paramString)
  {
    a(paramString);
  }
  
  public void a(String paramString)
  {
    b(paramString, 2);
  }
  
  public void a(String paramString, int paramInt)
  {
    if (c) {}
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      Log.v(a, paramString);
      return;
    case 3: 
      Log.d(a, paramString);
      return;
    case 4: 
      Log.i(a, paramString);
      return;
    case 5: 
      Log.w(a, paramString);
      return;
    case 6: 
      Log.e(a, paramString);
      return;
    }
    f = System.currentTimeMillis();
    Log.d(a, paramString + "spend time is:" + String.valueOf((float)(f - e) / 1000.0F));
    e = f;
  }
  
  public void a(Throwable paramThrowable)
  {
    if (c) {
      paramThrowable.printStackTrace();
    }
  }
  
  public boolean a()
  {
    return c;
  }
  
  public void b(Object paramObject, String paramString)
  {
    b(paramString);
  }
  
  public void b(String paramString)
  {
    b(paramString, 3);
  }
  
  public void c(Object paramObject, String paramString)
  {
    c(paramString);
  }
  
  public void c(String paramString)
  {
    b(paramString, 4);
  }
  
  public void d(Object paramObject, String paramString)
  {
    d(paramString);
  }
  
  public void d(String paramString)
  {
    b(paramString, 5);
  }
  
  public void e(Object paramObject, String paramString)
  {
    e(paramString);
  }
  
  public void e(String paramString)
  {
    b(paramString, 6);
  }
  
  public void f(Object paramObject, String paramString)
  {
    b(paramString);
  }
  
  public void f(String paramString)
  {
    b(paramString, 7);
  }
}
