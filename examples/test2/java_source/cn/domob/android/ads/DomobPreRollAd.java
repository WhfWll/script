package cn.domob.android.ads;

import android.content.Context;
import cn.domob.android.i.f;
import cn.domob.android.i.g;

public class DomobPreRollAd
{
  private static f a = new f(DomobPreRollAd.class.getSimpleName());
  private G b;
  
  public DomobPreRollAd(Context paramContext, String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    b = new G(paramContext, paramString1, paramString2, g.b(paramContext, paramInt1) + "x" + g.b(paramContext, paramInt2), DomobAdView.a.h);
  }
  
  private G.a a(DomobSceneInfo paramDomobSceneInfo)
  {
    if ((paramDomobSceneInfo instanceof DomobPreRollSceneInfo)) {}
    for (paramDomobSceneInfo = (DomobPreRollSceneInfo)paramDomobSceneInfo;; paramDomobSceneInfo = new DomobPreRollSceneInfo())
    {
      G.a localA = new G.a();
      localA.c(2);
      localA.b("domob_close.png");
      localA.l(-16777216);
      if (paramDomobSceneInfo.a())
      {
        localA.b(paramDomobSceneInfo.a());
        localA.h(paramDomobSceneInfo.b());
        localA.i(paramDomobSceneInfo.c());
      }
      return localA;
    }
  }
  
  public void changeScene(DomobSceneInfo paramDomobSceneInfo)
  {
    a.b("scene change");
    b.b(paramDomobSceneInfo, a(paramDomobSceneInfo));
  }
  
  public void closePreRollAd(boolean paramBoolean)
  {
    G localG = b;
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      localG.a(paramBoolean);
      return;
    }
  }
  
  public boolean isPreRollAdReady()
  {
    return b.l();
  }
  
  public void loadPreRollAd()
  {
    if (!b.l()) {
      b.n();
    }
    while (!b.m()) {
      return;
    }
    a.d(f.b(), "the last ad didn't show, so please show it before request the next ad");
  }
  
  public void setCountdownTotalSeconds(int paramInt)
  {
    b.a(paramInt);
  }
  
  public void setKeyword(String paramString)
  {
    b.setKeyword(paramString);
  }
  
  public void setProRollAdListener(DomobPreRollAdListener paramDomobPreRollAdListener)
  {
    b.a(paramDomobPreRollAdListener);
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
  
  public void showPreRollAd(DomobSceneInfo paramDomobSceneInfo)
  {
    if (b.m())
    {
      a.b("Show PreRoll View.");
      b.a(paramDomobSceneInfo, a(paramDomobSceneInfo));
      return;
    }
    a.d(this, "PreRoll ad is not ready");
  }
}
