package cn.domob.android.ads;

import android.content.Context;
import android.util.Log;
import android.view.View;
import cn.domob.android.i.f;

public class DomobSplashAd
{
  private static f a = new f(DomobSplashAd.class.getSimpleName());
  private Context b;
  private y c;
  private boolean d = false;
  private boolean e = false;
  
  public DomobSplashAd(Context paramContext, String paramString1, String paramString2, DomobSplashMode paramDomobSplashMode)
  {
    b = paramContext;
    c = new y(paramContext, paramString1, paramString2, A.a(paramContext, paramDomobSplashMode));
    c.s = paramDomobSplashMode;
  }
  
  private void domobAdDismiss()
  {
    c.a.j("mogo_dismiss");
  }
  
  private void domobAdImpression()
  {
    c.a.j("mogo_imp");
  }
  
  private void domobAdLoad()
  {
    c.a.j("mogo_load");
  }
  
  public void closeSplash()
  {
    if (c != null) {
      c.close();
    }
  }
  
  public boolean isSplashAdReady()
  {
    d = true;
    e = c.m();
    return e;
  }
  
  public void setKeyword(String paramString)
  {
    c.setKeyword(paramString);
  }
  
  public void setSplashAdListener(DomobSplashAdListener paramDomobSplashAdListener)
  {
    c.a(paramDomobSplashAdListener);
  }
  
  public void setSplashTopMargin(int paramInt)
  {
    A.a(b, c, paramInt);
  }
  
  public void setUserBirthdayStr(String paramString)
  {
    c.setUserBirthdayStr(paramString);
  }
  
  public void setUserGender(String paramString)
  {
    c.setUserGender(paramString);
  }
  
  public void setUserPostcode(String paramString)
  {
    c.setUserPostcode(paramString);
  }
  
  public void splash(Context paramContext, View paramView, int paramInt)
  {
    if ((d) && (e))
    {
      a.b("Show Splash View.");
      c.a(paramContext, paramView, paramInt);
      d = false;
      return;
    }
    if (d)
    {
      Log.e(f.b(), "Splash AD is not ready yet.");
      return;
    }
    if (isSplashAdReady())
    {
      c.a(paramContext, paramView, paramInt);
      d = false;
      return;
    }
    Log.e(f.b(), "Splash AD is not ready yet. Please call \"isSplashReady()\" first to check.");
  }
  
  public static enum DomobSplashMode
  {
    private DomobSplashMode() {}
  }
}
