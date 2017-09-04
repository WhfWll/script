package cn.domob.android.ads;

import android.content.Context;
import cn.domob.android.i.f;

public class DomobInterstitialAd
{
  public static final String INTERSITIAL_SIZE_300X250 = "300x250";
  public static final String INTERSITIAL_SIZE_600X500 = "600x500";
  public static final String INTERSITIAL_SIZE_FULL_SCREEN = null;
  private static f a = new f(DomobInterstitialAd.class.getSimpleName());
  private u b;
  
  public DomobInterstitialAd(Context paramContext, String paramString1, String paramString2)
  {
    b = new u(paramContext, paramString1, paramString2, null);
  }
  
  private void domobAdDismiss()
  {
    b.a.j("mogo_dismiss");
  }
  
  private void domobAdImpression()
  {
    b.a.j("mogo_imp");
  }
  
  private void domobAdLoad()
  {
    b.a.j("mogo_load");
  }
  
  public boolean isInterstitialAdReady()
  {
    return b.m();
  }
  
  public void loadInterstitialAd()
  {
    if (!b.q()) {
      b.l();
    }
    while (b.r()) {
      return;
    }
    a.d(f.b(), "the last ad didn't show, so please show it before request the next ad");
  }
  
  public void setInterstitialAdListener(DomobInterstitialAdListener paramDomobInterstitialAdListener)
  {
    b.a(paramDomobInterstitialAdListener, this);
  }
  
  public void setKeyword(String paramString)
  {
    b.setKeyword(paramString);
  }
  
  public void setUserBirthdayStr(String paramString)
  {
    b.setUserBirthdayStr(paramString);
  }
  
  public void setUserGender(String paramString)
  {
    b.setUserGender(paramString);
  }
  
  public void setUserPostcode(String paramString)
  {
    b.setUserPostcode(paramString);
  }
  
  public void showInterstitialAd(Context paramContext)
  {
    if (!b.r())
    {
      a.b("Show Interstitial View.");
      b.b(paramContext);
      return;
    }
    a.d(this, "Interstial ad is not ready");
  }
  
  public static enum BorderType
  {
    private BorderType() {}
  }
}
