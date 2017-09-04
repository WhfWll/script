package cn.dbox.ui.common;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import cn.dbox.core.bean.c;
import cn.dbox.core.bean.d;
import java.util.ArrayList;

public class k
{
  static float a = 0.0F;
  public static final float b = 0.7072368F;
  public static final float c = 0.55921054F;
  private static float d;
  private static int e;
  private static int f;
  
  public k() {}
  
  public static float a(Context paramContext)
  {
    try
    {
      if (a == 0.0F) {
        a = getResourcesgetDisplayMetricsdensity;
      }
      return a;
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
  }
  
  public static int a(Context paramContext, float paramFloat)
  {
    return (int)(b(paramContext) * paramFloat);
  }
  
  public static int a(Context paramContext, int paramInt)
  {
    return (int)(a(paramContext) * paramInt);
  }
  
  public static ArrayList<d> a(ArrayList<c> paramArrayList)
  {
    ArrayList localArrayList1 = null;
    if (paramArrayList != null)
    {
      localArrayList1 = new ArrayList();
      int i = 0;
      while (i < paramArrayList.size())
      {
        ArrayList localArrayList2 = ((c)paramArrayList.get(i)).d();
        if (localArrayList2 != null)
        {
          int j = 0;
          while (j < localArrayList2.size())
          {
            localArrayList1.add(localArrayList2.get(j));
            j += 1;
          }
        }
        i += 1;
      }
    }
    return localArrayList1;
  }
  
  public static int b(Context paramContext)
  {
    e = Math.round(c(paramContext) * (d(paramContext) / a(paramContext)));
    return e;
  }
  
  protected static int c(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if (paramContext != null) {
      f = paramContext.getWidth();
    }
    return f;
  }
  
  protected static float d(Context paramContext)
  {
    try
    {
      if (d == 0.0F)
      {
        paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        paramContext.getMetrics(localDisplayMetrics);
        d = density;
      }
      return d;
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
  }
  
  public static float e(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramContext.getMetrics(localDisplayMetrics);
    return density;
  }
  
  public static int f(Context paramContext)
  {
    return b(paramContext);
  }
  
  public static int g(Context paramContext)
  {
    return b(paramContext) - a(paramContext, 16);
  }
  
  public static int h(Context paramContext)
  {
    return (int)(g(paramContext) * 0.7072368F);
  }
  
  public static int i(Context paramContext)
  {
    return (int)(g(paramContext) * 0.55921054F);
  }
}
