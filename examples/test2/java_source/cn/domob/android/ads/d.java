package cn.domob.android.ads;

import android.content.Context;
import android.util.Log;
import cn.domob.android.i.f;
import java.lang.reflect.Field;

public class d
{
  private static f a = new f(d.class.getSimpleName());
  private static final String b = d.class.getName();
  private static d c;
  private static Class<?> e = null;
  private static Class<?> f = null;
  private static Class<?> g = null;
  private static Class<?> h = null;
  private static Class<?> i = null;
  private static Class<?> j = null;
  private static Class<?> k = null;
  private static Class<?> l = null;
  private Context d;
  
  private d(Context paramContext)
  {
    d = paramContext.getApplicationContext();
    try
    {
      f = Class.forName(d.getPackageName() + ".R$drawable");
    }
    catch (ClassNotFoundException paramContext)
    {
      try
      {
        g = Class.forName(d.getPackageName() + ".R$layout");
      }
      catch (ClassNotFoundException paramContext)
      {
        try
        {
          e = Class.forName(d.getPackageName() + ".R$id");
        }
        catch (ClassNotFoundException paramContext)
        {
          try
          {
            h = Class.forName(d.getPackageName() + ".R$anim");
          }
          catch (ClassNotFoundException paramContext)
          {
            try
            {
              i = Class.forName(d.getPackageName() + ".R$style");
            }
            catch (ClassNotFoundException paramContext)
            {
              try
              {
                j = Class.forName(d.getPackageName() + ".R$string");
              }
              catch (ClassNotFoundException paramContext)
              {
                try
                {
                  for (;;)
                  {
                    k = Class.forName(d.getPackageName() + ".R$color");
                    try
                    {
                      l = Class.forName(d.getPackageName() + ".R$array");
                      return;
                    }
                    catch (ClassNotFoundException paramContext)
                    {
                      a.e(b, paramContext.getMessage());
                    }
                    paramContext = paramContext;
                    a.e(b, paramContext.getMessage());
                    continue;
                    paramContext = paramContext;
                    a.e(b, paramContext.getMessage());
                    continue;
                    paramContext = paramContext;
                    a.e(b, paramContext.getMessage());
                    continue;
                    paramContext = paramContext;
                    a.e(b, paramContext.getMessage());
                    continue;
                    paramContext = paramContext;
                    a.e(b, paramContext.getMessage());
                    continue;
                    paramContext = paramContext;
                    a.e(b, paramContext.getMessage());
                  }
                }
                catch (ClassNotFoundException paramContext)
                {
                  for (;;)
                  {
                    a.e(b, paramContext.getMessage());
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  private int a(Class<?> paramClass, String paramString)
  {
    if (paramClass == null)
    {
      a.e(b, "getRes(null," + paramString + ")");
      throw new IllegalArgumentException("ResClass is not initialized. Please make sure you have added neccessary resources. Also make sure you have " + d.getPackageName() + ".R$* configured in obfuscation. field=" + paramString);
    }
    try
    {
      int m = paramClass.getField(paramString).getInt(paramString);
      return m;
    }
    catch (Exception localException)
    {
      Log.e(b, "getRes(" + paramClass.getName() + ", " + paramString + ")");
      Log.e(b, "Error getting resource. Make sure you have copied all resources (res/) from SDK to your project. ");
      a.e(b, localException.getMessage());
    }
    return -1;
  }
  
  public static d a(Context paramContext)
  {
    if (c == null) {
      c = new d(paramContext);
    }
    return c;
  }
  
  public int a(String paramString)
  {
    return a(h, paramString);
  }
  
  public int b(String paramString)
  {
    return a(e, paramString);
  }
  
  public int c(String paramString)
  {
    return a(f, paramString);
  }
  
  public int d(String paramString)
  {
    return a(g, paramString);
  }
  
  public int e(String paramString)
  {
    return a(i, paramString);
  }
  
  public int f(String paramString)
  {
    return a(j, paramString);
  }
  
  public int g(String paramString)
  {
    return a(k, paramString);
  }
  
  public int h(String paramString)
  {
    return a(l, paramString);
  }
}
