package cn.domob.android.ads;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.domob.android.b.a;
import cn.domob.android.i.f;

class y
  extends DomobAdView
  implements DomobAdEventListener
{
  private static final String A = "domob_close.png";
  private static final int B = 40;
  private static final int C = 40;
  private static f t = new f(y.class.getSimpleName());
  private boolean D = true;
  private FrameLayout E;
  private WindowManager F;
  private RelativeLayout G;
  private int H = 300;
  protected View p;
  protected int q;
  protected boolean r = false;
  protected DomobSplashAd.DomobSplashMode s;
  private String u;
  private String v;
  private DomobSplashAdListener w;
  private int x;
  private boolean y = false;
  private String z;
  
  y(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    super(paramContext, paramString1, paramString2, paramString3, null, false);
    t.a("Init SplashAdView.");
    if (a != null)
    {
      a.a(false);
      a.b(false);
    }
    f.setVisibility(0);
    b = DomobAdView.a.d.ordinal();
    D = p();
  }
  
  y(Context paramContext, String paramString1, String paramString2, String paramString3, View paramView, int paramInt)
  {
    super(paramContext, paramString1, paramString2, paramString3, null, false);
    p = paramView;
    q = paramInt;
    t.a("Init SplashAdView.");
    if (a != null)
    {
      a.a(false);
      a.b(false);
    }
    f.setVisibility(0);
    b = DomobAdView.a.d.ordinal();
    D = p();
  }
  
  public static int a(Context paramContext, String paramString)
  {
    return d.a(paramContext).e(paramString);
  }
  
  private void a(final View paramView)
  {
    if (o()) {
      return;
    }
    y = true;
    try
    {
      if (getParent() != null)
      {
        t.b("SplashView already has a parent.");
        return;
      }
    }
    catch (Exception paramView)
    {
      t.a(paramView);
      return;
    }
    if ((p != null) && (p.getRootView() != null))
    {
      E = ((FrameLayout)p.getRootView().findViewById(16908290));
      j.c localC = a.B().d();
      boolean bool = localC.u();
      float f1 = localC.w();
      float f2 = localC.y();
      G = new RelativeLayout(c);
      G.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
      if (q != 0) {
        G.setBackgroundResource(q);
      }
      t.b(String.format("Creative width:%d, creative height:%d", new Object[] { Integer.valueOf(this.i), Integer.valueOf(this.j) }));
      RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)paramView.getLayoutParams();
      if (localLayoutParams == null) {
        t.e("DomobSplashAdView adViewLayoutParams is null");
      }
      localLayoutParams.addRule(2);
      topMargin = x;
      G.addView(paramView, localLayoutParams);
      if (bool)
      {
        int i = (int)(a.t(c) * 40.0F);
        int j = (int)(a.t(c) * 40.0F);
        paramView = new ImageButton(c);
        paramView.setVisibility(8);
        paramView.setBackgroundDrawable(cn.domob.android.i.d.b(c, "domob_close.png"));
        localLayoutParams = new RelativeLayout.LayoutParams(i, j);
        localLayoutParams.addRule(11);
        G.addView(paramView, localLayoutParams);
        paramView.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            n();
          }
        });
        new Handler().postDelayed(new Runnable()
        {
          public void run()
          {
            paramView.setVisibility(0);
          }
        }, (int)(f1 * 1000.0F));
      }
      if (localC.x())
      {
        t.b("Min imp time:" + f1);
        new Handler().postDelayed(new Runnable()
        {
          public void run()
          {
            y.q().a("展现时间到达最小展现时间。");
            a.a(g.c(), "m", "s", a.g());
          }
        }, (int)(f1 * 1000.0F));
      }
      if (localC.z())
      {
        t.b("Auto close time:" + f2);
        new Handler().postDelayed(new Runnable()
        {
          public void run()
          {
            y.q().a("展现时间到达自动关闭时间。");
            n();
          }
        }, (int)(f2 * 1000.0F));
      }
      if (D) {
        E.addView(G);
      }
      for (;;)
      {
        if (w != null) {
          w.onSplashPresent();
        }
        a.a(g.c(), "s", "s", 0L);
        a.a(System.currentTimeMillis());
        return;
        F = ((WindowManager)c.getSystemService("window"));
        paramView = new WindowManager.LayoutParams();
        type = 2007;
        windowAnimations = 16973828;
        F.addView(G, paramView);
      }
    }
    t.e("Splash cannot find view holder.");
  }
  
  private boolean r()
  {
    K localK = new c().b(c);
    if (localK == null)
    {
      t.a("There is no available cache ad.");
      ((x)a).b(null, "sp_no_creative");
    }
    for (;;)
    {
      return false;
      if (System.currentTimeMillis() / 1000L >= localK.d())
      {
        t.a("Cached ad expires.");
        ((x)a).b(j.a(localK.c()), "sp_expire");
      }
      else
      {
        String str = localK.a();
        t.b(String.format("Cached ad orientation:%s", new Object[] { str }));
        if (a.r(c).equals(str))
        {
          u = localK.b();
          v = localK.c();
          z = new c().a(c, u);
          if (!TextUtils.isEmpty(z))
          {
            t.a("resources of creative is ok.");
            return true;
          }
          t.a("resources of creative is not ok.");
          ((x)a).b(j.a(v), "sp_res_incomplete");
        }
        else
        {
          t.a("There is no available cache ad. Orientation wrong.");
          ((x)a).b(null, "sp_no_creative");
        }
      }
    }
  }
  
  void a(int paramInt)
  {
    x = paramInt;
    t.b("Set splash top margin:" + paramInt);
  }
  
  void a(Context paramContext, View paramView, int paramInt)
  {
    p = paramView;
    q = paramInt;
    t.b("Load cached Ad:" + v);
    c = paramContext;
    super.setAdEventListener(this);
    paramContext = j.a(v);
    if (paramContext != null) {
      paramContext.b(z);
    }
    a.a(paramContext, -1);
  }
  
  void a(DomobSplashAdListener paramDomobSplashAdListener)
  {
    w = paramDomobSplashAdListener;
  }
  
  protected void a(n paramN) {}
  
  protected void a(String paramString1, String paramString2)
  {
    a = new x(this, paramString1, paramString2);
  }
  
  public void close()
  {
    if (D) {
      if ((E != null) && (G != null))
      {
        localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
        localAlphaAnimation.setDuration(H);
        localAlphaAnimation.setAnimationListener(new Animation.AnimationListener()
        {
          public void onAnimationEnd(Animation paramAnonymousAnimation)
          {
            y.b(y.this).removeView(y.a(y.this));
          }
          
          public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
          
          public void onAnimationStart(Animation paramAnonymousAnimation) {}
        });
        G.startAnimation(localAlphaAnimation);
      }
    }
    while ((F == null) || (G == null))
    {
      AlphaAnimation localAlphaAnimation;
      return;
    }
    F.removeView(G);
  }
  
  protected boolean l()
  {
    return b == DomobAdView.a.d.ordinal();
  }
  
  boolean m()
  {
    if (r())
    {
      t.a("Both splash ad response and it's resources are OK.");
      return true;
    }
    requestRefreshAd();
    return false;
  }
  
  protected void n()
  {
    if (!r)
    {
      r = true;
      a.a(g.c(), "f", "s", a.g());
      if (w != null) {
        w.onSplashDismiss();
      }
      t.a("Request another Ad when current cached Ad is shown.");
      t.a("Delete old cached ad response.");
      new c().c(c);
      new c().d(c);
      setAdEventListener(null);
      requestRefreshAd();
    }
  }
  
  protected boolean o()
  {
    return y;
  }
  
  public void onDomobAdClicked(DomobAdView paramDomobAdView) {}
  
  public void onDomobAdFailed(DomobAdView paramDomobAdView, DomobAdManager.ErrorCode paramErrorCode)
  {
    t.e("Failed to load ad or get ad responce and the ErrorCode is " + paramErrorCode);
    if (w != null) {
      w.onSplashLoadFailed();
    }
  }
  
  public void onDomobAdOverlayDismissed(DomobAdView paramDomobAdView) {}
  
  public void onDomobAdOverlayPresented(DomobAdView paramDomobAdView) {}
  
  public Context onDomobAdRequiresCurrentContext()
  {
    return c;
  }
  
  public void onDomobAdReturned(DomobAdView paramDomobAdView)
  {
    t.a("Get new splash ad responce.");
  }
  
  public void onDomobLeaveApplication(DomobAdView paramDomobAdView) {}
  
  public boolean p()
  {
    String str = Build.MODEL;
    if (str != null)
    {
      int i = str.indexOf("MI");
      int j = str.indexOf("HM");
      if (i != -1) {
        H = 300;
      }
      if (j != -1) {
        H = 350;
      }
      if ((i != -1) || (j != -1)) {
        return true;
      }
    }
    return false;
  }
  
  public void showAd(n paramN, AnimationSet[] paramArrayOfAnimationSet)
  {
    paramArrayOfAnimationSet = paramN.b();
    g = paramN;
    a(paramArrayOfAnimationSet);
  }
}
