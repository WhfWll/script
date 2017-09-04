package cn.domob.android.ads;

import android.content.Context;
import cn.domob.android.i.f;
import cn.domob.android.i.g;

public class DomobVideoInterstitialAd
{
  private static f a = new f(DomobVideoInterstitialAd.class.getSimpleName());
  private G b;
  
  public DomobVideoInterstitialAd(Context paramContext, String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    b = new G(paramContext, paramString1, paramString2, g.b(paramContext, paramInt1) + "x" + g.b(paramContext, paramInt2), DomobAdView.a.g);
  }
  
  private G.a a(Context paramContext, DomobSceneInfo paramDomobSceneInfo)
  {
    G.a localA;
    if ((paramDomobSceneInfo instanceof DomobVideoInterstitialSceneInfo))
    {
      paramDomobSceneInfo = (DomobVideoInterstitialSceneInfo)paramDomobSceneInfo;
      localA = new G.a();
      localA.b("domob_close_interstitial.png");
      localA.b(paramContext, 0);
      localA.c(paramContext, 0);
      localA.c(paramDomobSceneInfo.a());
      if (paramDomobSceneInfo.a() != 1) {
        break label73;
      }
      a(paramContext, localA);
    }
    label73:
    while (paramDomobSceneInfo.a() != 3)
    {
      return localA;
      paramDomobSceneInfo = new DomobVideoInterstitialSceneInfo();
      break;
    }
    b(paramContext, localA);
    return localA;
  }
  
  private void a(Context paramContext, G.a paramA)
  {
    paramA.a(paramContext, 34);
    paramA.d(paramContext, 6);
  }
  
  private void b(Context paramContext, G.a paramA)
  {
    paramA.d(paramContext, 30);
    paramA.a(paramContext, 12);
  }
  
  public void changeScene(DomobSceneInfo paramDomobSceneInfo)
  {
    a.b("scene change");
    b.b(paramDomobSceneInfo, a(paramDomobSceneInfo.e(), paramDomobSceneInfo));
  }
  
  public void closeVideoInterstitialAd()
  {
    b.q();
  }
  
  public boolean isVideoInterstitialAdReady()
  {
    return b.l();
  }
  
  public void loadVideoInterstitialAd()
  {
    if (!b.l()) {
      b.n();
    }
    while (!b.m()) {
      return;
    }
    a.d(f.b(), "the last ad didn't show, so please show it before request the next ad");
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
  
  public void setVideoInterstitialAdListener(DomobVideoInterstitialAdListener paramDomobVideoInterstitialAdListener)
  {
    b.a(paramDomobVideoInterstitialAdListener);
  }
  
  public void showVideoInterstitialAd(DomobSceneInfo paramDomobSceneInfo)
  {
    if (b.m())
    {
      a.b("Show VideoInterstitial View.");
      b.a(paramDomobSceneInfo, a(paramDomobSceneInfo.e(), paramDomobSceneInfo));
      return;
    }
    a.d(this, "VideoInterstitial ad is not ready");
  }
}
