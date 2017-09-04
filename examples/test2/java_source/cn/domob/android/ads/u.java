package cn.domob.android.ads;

import android.app.Activity;
import android.content.Context;
import android.view.animation.AnimationSet;
import cn.domob.android.b.a;
import cn.domob.android.i.f;
import cn.domob.android.i.h;

class u
  extends DomobAdView
  implements DomobAdEventListener
{
  private static f r = new f(u.class.getSimpleName());
  protected boolean p = false;
  protected boolean q = true;
  private DomobInterstitialAd s;
  private DomobInterstitialAdListener t;
  private v.a u;
  
  protected u(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    super(paramContext, paramString1, paramString2, paramString3, null, false);
    if (a != null)
    {
      a.a(false);
      a.b(false);
    }
    b = DomobAdView.a.c.ordinal();
  }
  
  private boolean t()
  {
    if ("video".equals(a.e.d().b()))
    {
      int i = a.e.d().c();
      int j = a.e.d().d();
      if (((i != 600) || (j != 500)) && ((i != 300) || (j != 250))) {}
    }
    else
    {
      return true;
    }
    r.e("video ad size is not 600x500 or 300x250");
    return false;
  }
  
  private boolean u()
  {
    if ("domob".equals(a.e.d().b()))
    {
      String str = a.B().d().t();
      if (h.e(str)) {
        break label68;
      }
      if (!str.equals(a.r(c))) {}
    }
    else
    {
      return true;
    }
    r.d("Ad response carrying the current direction and the direction of mobile inconsistencies");
    return false;
    label68:
    r.e("ad response not contain interstitial orientation");
    return false;
  }
  
  private void v()
  {
    r.d("give up showing interstitial ad");
    p = false;
    onDomobAdFailed(this, DomobAdManager.ErrorCode.INTERNAL_ERROR);
  }
  
  private boolean w()
  {
    return !a.B().d().b().equals("video");
  }
  
  void a(DomobInterstitialAdListener paramDomobInterstitialAdListener, DomobInterstitialAd paramDomobInterstitialAd)
  {
    s = paramDomobInterstitialAd;
    t = paramDomobInterstitialAdListener;
  }
  
  protected void a(n paramN) {}
  
  void b(Context paramContext)
  {
    boolean bool1 = false;
    j.c localC = a.B().d();
    boolean bool3 = localC.u();
    float f1 = localC.w();
    float f2 = localC.y();
    j.b localB1 = localC.H();
    boolean bool2 = localB1.a();
    j.b localB2 = localC.I();
    boolean bool4 = localB2.a();
    if ("domob".equals(a.e.d().b()))
    {
      i = -1;
      j = -1;
      bool2 = false;
      bool3 = false;
    }
    for (;;)
    {
      u = new v.a(paramContext).a(i, j).a(bool3).a("rectangle").b(bool2).a(localB1.b()).c(bool1).b(localB2.b()).a(localC.x(), f1).b(localC.z(), f2).a(new v.c()
      {
        public void a()
        {
          n();
          a.a(System.currentTimeMillis());
        }
        
        public void b()
        {
          o();
        }
        
        public void c()
        {
          p();
        }
      });
      if ((!u()) || (!t())) {
        v();
      }
      for (;;)
      {
        q = true;
        r.a(this, "the ad is showing and change mIsAdShow to true");
        return;
        u.a(g.b());
      }
      bool1 = bool4;
    }
  }
  
  protected void b(n paramN) {}
  
  public void close()
  {
    if (u != null) {
      u.a();
    }
  }
  
  void l()
  {
    super.setAdEventListener(this);
    super.requestRefreshAd();
  }
  
  boolean m()
  {
    return p;
  }
  
  protected void n()
  {
    g.d();
    if (t != null) {
      t.onInterstitialAdPresent();
    }
    if (w()) {
      a.a(g.c(), "s", "s", 0L);
    }
  }
  
  protected void o()
  {
    if (w()) {
      a.a(g.c(), "m", "s", a.g());
    }
  }
  
  public void onDomobAdClicked(DomobAdView paramDomobAdView)
  {
    if ((t != null) && (s != null))
    {
      r.a(this, "Notify user clicks on the interstitial or feeds ad.");
      t.onInterstitialAdClicked(s);
    }
  }
  
  public void onDomobAdFailed(DomobAdView paramDomobAdView, DomobAdManager.ErrorCode paramErrorCode)
  {
    if (t != null)
    {
      r.a(this, "Notify interstitial or feeds ad failed.");
      t.onInterstitialAdFailed(paramErrorCode);
    }
  }
  
  public void onDomobAdOverlayDismissed(DomobAdView paramDomobAdView)
  {
    if (t != null)
    {
      r.a(this, "Notify interstitial or feeds ad landing page close.");
      t.onLandingPageClose();
    }
  }
  
  public void onDomobAdOverlayPresented(DomobAdView paramDomobAdView)
  {
    if (t != null)
    {
      r.a(this, "Notify interstitial or feeds ad landing page open.");
      t.onLandingPageOpen();
    }
  }
  
  public Context onDomobAdRequiresCurrentContext()
  {
    return a.b;
  }
  
  public void onDomobAdReturned(DomobAdView paramDomobAdView)
  {
    p = true;
    if (t != null)
    {
      r.a(this, "Notify interstitial or feeds ad ready.");
      q = false;
      r.a(this, "ad already received and change show status to false");
      t.onInterstitialAdReady();
    }
  }
  
  public void onDomobLeaveApplication(DomobAdView paramDomobAdView)
  {
    if (t != null)
    {
      r.a(this, "Notify interstitial or feeds ad leaving application.");
      t.onInterstitialAdLeaveApplication();
    }
  }
  
  protected void p()
  {
    p = false;
    q = true;
    g.e();
    if (w()) {
      a.a(g.c(), "f", "s", a.g());
    }
    if (t != null) {
      t.onInterstitialAdDismiss();
    }
  }
  
  boolean q()
  {
    return p;
  }
  
  boolean r()
  {
    return q;
  }
  
  DomobInterstitialAdListener s()
  {
    return t;
  }
  
  public void showAd(n paramN, AnimationSet[] paramArrayOfAnimationSet)
  {
    g = paramN;
    ((Activity)c).runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (o != null) {
          o.onDomobAdReturned(u.this);
        }
      }
    });
    a.D();
  }
}
