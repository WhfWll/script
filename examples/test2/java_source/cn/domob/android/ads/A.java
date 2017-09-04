package cn.domob.android.ads;

import android.content.Context;
import cn.domob.android.b.a;
import cn.domob.android.i.f;

public class A
{
  private static f a = new f(A.class.getSimpleName());
  
  public A() {}
  
  protected static String a(Context paramContext, DomobSplashAd.DomobSplashMode paramDomobSplashMode)
  {
    String str = a.r(paramContext);
    int i = (int)(a.u(paramContext) / a.t(paramContext));
    if ("h".equals(str)) {
      a.b("横屏，忽略mode，请求全屏");
    }
    while (!"v".equals(str)) {
      return null;
    }
    switch (1.a[paramDomobSplashMode.ordinal()])
    {
    default: 
      return null;
    case 1: 
      return String.format("%dx%d", new Object[] { Integer.valueOf(i), Integer.valueOf(i * 3 / 4) });
    }
    return String.format("%dx%d", new Object[] { Integer.valueOf(i), Integer.valueOf(i * 5 / 4) });
  }
  
  protected static void a(Context paramContext, y paramY, int paramInt)
  {
    if ((s != DomobSplashAd.DomobSplashMode.DomobSplashModeFullScreen) && (!"h".equals(a.r(paramContext))))
    {
      paramY.a(paramInt);
      return;
    }
    paramY.a(0);
  }
}
