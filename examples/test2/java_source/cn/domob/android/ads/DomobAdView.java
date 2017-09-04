package cn.domob.android.ads;

import android.app.Activity;
import android.content.Context;
import android.os.PowerManager;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.domob.android.i.f;

public class DomobAdView
  extends RelativeLayout
  implements m
{
  public static final String INLINE_SIZE_300X250 = "300x250";
  public static final String INLINE_SIZE_320X50 = "320x50";
  public static final String INLINE_SIZE_600X500 = "600x500";
  public static final String INLINE_SIZE_600X94 = "600x94";
  public static final String INLINE_SIZE_728X90 = "728x90";
  public static final String INLINE_SIZE_FLEXIBLE = "FLEXIBLE_BANNER";
  private static f p = new f(DomobAdView.class.getSimpleName());
  private static final String r = "0x90";
  private static final String s = "0x50";
  protected g a = null;
  protected int b;
  protected Context c;
  protected boolean d = false;
  protected boolean e = true;
  protected H f;
  protected n g;
  protected String h;
  protected int i = 0;
  protected int j = 0;
  protected boolean k = true;
  protected boolean l = false;
  protected boolean m = false;
  protected DomobAdListener n;
  protected DomobAdEventListener o;
  private boolean q = true;
  
  @Deprecated
  public DomobAdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, null, null, "320x50", paramAttributeSet);
  }
  
  public DomobAdView(Context paramContext, String paramString1, String paramString2)
  {
    this(paramContext, paramString1, paramString2, "FLEXIBLE_BANNER", null);
  }
  
  protected DomobAdView(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this(paramContext, paramString1, paramString2, paramString3, null);
  }
  
  private DomobAdView(Context paramContext, String paramString1, String paramString2, String paramString3, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramString1, paramString2, paramString3, paramAttributeSet, true);
  }
  
  protected DomobAdView(Context paramContext, String paramString1, String paramString2, String paramString3, AttributeSet paramAttributeSet, boolean paramBoolean)
  {
    super(paramContext, paramAttributeSet);
    c = paramContext;
    f = new H(paramContext);
    f.setVisibility(8);
    a(paramString1, paramString2);
    addView(f);
    setAdSize(paramString3);
    b = a.b.ordinal();
    a.a(c);
    a.H();
    if (paramBoolean)
    {
      cn.domob.android.i.g.a(this);
      p.b("close hardware");
    }
  }
  
  public DomobAdView(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    this(paramContext, paramString1, paramString2, "FLEXIBLE_BANNER", null);
    if ((a != null) && (!paramBoolean))
    {
      a.a(false);
      a.b(false);
    }
  }
  
  private void c(n paramN)
  {
    if (a.i())
    {
      int i1 = paramN.c().d().s();
      switch (i1)
      {
      default: 
        i1 -= 2;
        if ((i1 >= 0) && (i1 < L.a.values().length))
        {
          showAd(paramN, L.a(L.a.values()[i1]));
          return;
        }
        break;
      case 0: 
        showAd(paramN, null);
        return;
      case 1: 
        i1 = L.a.values().length;
        double d1 = Math.random();
        i1 = (int)(i1 * d1);
        showAd(paramN, L.a(L.a.values()[i1]));
        return;
      }
      p.e("Invalid animation type index.");
      showAd(paramN, null);
      return;
    }
    showAd(paramN, null);
  }
  
  private void domobAdDismiss()
  {
    a.j("mogo_dismiss");
  }
  
  private void domobAdImpression()
  {
    a.j("mogo_imp");
  }
  
  private void domobAdLoad()
  {
    a.j("mogo_load");
  }
  
  private void l()
  {
    if ((a != null) && (!a.A())) {
      requestRefreshAd();
    }
  }
  
  private void needCleanWhenDetached(boolean paramBoolean)
  {
    q = paramBoolean;
  }
  
  protected void a(n paramN)
  {
    a.a(paramN.c(), "s", "s", 0L);
  }
  
  protected void a(String paramString1, String paramString2)
  {
    a = new g(this, paramString1, paramString2);
  }
  
  protected boolean a()
  {
    return cn.domob.android.i.g.a(c, this);
  }
  
  protected boolean a(Context paramContext)
  {
    try
    {
      boolean bool = ((PowerManager)paramContext.getSystemService("power")).isScreenOn();
      return bool;
    }
    catch (Exception paramContext)
    {
      p.a(paramContext);
    }
    return true;
  }
  
  protected Context b()
  {
    return c;
  }
  
  protected void b(n paramN)
  {
    paramN.d();
  }
  
  protected boolean c()
  {
    return d;
  }
  
  public void clean()
  {
    for (;;)
    {
      int i1;
      try
      {
        a.b();
        p.a("Clean DomobAdView.");
        int i2 = f.getChildCount();
        p.a(i2 + " WebView to DESTROY.");
        i1 = 0;
        if (i1 < i2)
        {
          if (!(f.getChildAt(0) instanceof a)) {
            break label123;
          }
          a localA = (a)f.getChildAt(0);
          if (localA != null)
          {
            f.removeView(localA);
            localA.destroy();
          }
          else
          {
            p.a("WebView has already been destroyed.");
          }
        }
      }
      catch (Exception localException)
      {
        p.a(localException);
      }
      return;
      label123:
      i1 += 1;
    }
  }
  
  public void close() {}
  
  protected boolean d()
  {
    return e;
  }
  
  protected int e()
  {
    return b;
  }
  
  protected DomobAdListener f()
  {
    return n;
  }
  
  protected DomobAdEventListener g()
  {
    return o;
  }
  
  protected n h()
  {
    return g;
  }
  
  protected String i()
  {
    return h;
  }
  
  protected boolean j()
  {
    for (ViewParent localViewParent = getParent(); localViewParent != null; localViewParent = localViewParent.getParent())
    {
      if (!(localViewParent instanceof View)) {
        return true;
      }
      if (((View)localViewParent).getVisibility() != 0) {
        return false;
      }
    }
    return true;
  }
  
  public void loadUrl(String paramString1, String paramString2)
  {
    if (a != null)
    {
      a.a(false);
      a.c(true);
      a.h(paramString1);
      a.i(paramString2);
      a.F();
      return;
    }
    p.e("mAdController is not initialized!");
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    p.a("onAttachedToWindow");
    p.b("Start to load AD.");
    l();
  }
  
  protected void onDetachedFromWindow()
  {
    for (;;)
    {
      int i1;
      try
      {
        p.a("onDetachedFromWindow");
        a.b();
        if (q)
        {
          p.a("Clean DomobAdView.");
          int i2 = f.getChildCount();
          p.a(i2 + " WebView to DESTROY.");
          i1 = 0;
          if (i1 >= i2) {
            continue;
          }
          if (!(f.getChildAt(0) instanceof a)) {
            break label164;
          }
          a localA = (a)f.getChildAt(0);
          if (localA != null)
          {
            f.removeView(localA);
            localA.destroy();
          }
          else
          {
            p.a("WebView has already been destroyed.");
          }
        }
      }
      catch (Exception localException)
      {
        p.a(localException);
        return;
        p.b("ad detached from window, but do not clean flipper");
        return;
      }
      finally
      {
        super.onDetachedFromWindow();
      }
      label164:
      i1 += 1;
    }
  }
  
  public void onDomobAdClicked()
  {
    if (o != null) {
      o.onDomobAdClicked(this);
    }
  }
  
  public void onDomobAdFailed(DomobAdManager.ErrorCode paramErrorCode)
  {
    if (o != null) {
      o.onDomobAdFailed(this, paramErrorCode);
    }
  }
  
  public void onDomobAdOverlayDismissed()
  {
    if (o != null) {
      o.onDomobAdOverlayDismissed(this);
    }
  }
  
  public void onDomobAdOverlayPresented()
  {
    if (o != null) {
      o.onDomobAdOverlayPresented(this);
    }
  }
  
  public Context onDomobAdRequiresCurrentContext()
  {
    if (o != null) {
      return o.onDomobAdRequiresCurrentContext();
    }
    return null;
  }
  
  public void onDomobAdReturned(n paramN)
  {
    c(paramN);
  }
  
  public void onDomobLeaveApplication()
  {
    if (o != null) {
      o.onDomobLeaveApplication(this);
    }
  }
  
  public void onProcessActionType(String paramString) {}
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    p.a("onWindowFocusChanged:" + paramBoolean);
    e = paramBoolean;
    if (a != null)
    {
      if ((!e) || (!d)) {
        break label83;
      }
      if (!a.A()) {
        break label75;
      }
      a.e();
    }
    label75:
    label83:
    while ((e) && (d))
    {
      return;
      a.k();
      return;
    }
    a.c();
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    boolean bool2 = true;
    super.onWindowVisibilityChanged(paramInt);
    f localF = p;
    StringBuilder localStringBuilder = new StringBuilder().append("onWindowVisibilityChanged:");
    if (paramInt == 0)
    {
      bool1 = true;
      localF.a(bool1);
      if (paramInt != 0) {
        break label64;
      }
    }
    label64:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      d = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public void orientationChanged()
  {
    if ((a != null) && (f != null) && (h != null) && ((h.equals("0x50")) || (h.equals("0x90"))))
    {
      int i1 = cn.domob.android.b.a.u(c);
      if ((i != 0) && (i != i1))
      {
        onDetachedFromWindow();
        i = i1;
        requestRefreshAd();
      }
    }
  }
  
  public void requestRefreshAd()
  {
    if ((a != null) && (a.j())) {
      a.C();
    }
  }
  
  public void setAdEventListener(DomobAdEventListener paramDomobAdEventListener)
  {
    o = paramDomobAdEventListener;
  }
  
  public void setAdSize(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.equals("FLEXIBLE_BANNER"))
      {
        if (cn.domob.android.b.a.E(c))
        {
          h = "0x90";
          return;
        }
        h = "0x50";
        return;
      }
      h = paramString;
      return;
    }
    h = null;
  }
  
  public void setCreativeRect(int paramInt1, int paramInt2)
  {
    i = paramInt1;
    j = paramInt2;
  }
  
  public void setKeyword(String paramString)
  {
    a.b(paramString);
  }
  
  @Deprecated
  public void setOnAdListener(DomobAdListener paramDomobAdListener)
  {
    n = paramDomobAdListener;
  }
  
  public void setRefreshable(boolean paramBoolean)
  {
    if (a != null) {
      a.a(paramBoolean);
    }
  }
  
  public void setSpots(String paramString)
  {
    if (a != null) {
      a.f(paramString);
    }
  }
  
  public void setUserBirthdayStr(String paramString)
  {
    a.e(paramString);
  }
  
  public void setUserGender(String paramString)
  {
    a.d(paramString);
  }
  
  public void setUserPostcode(String paramString)
  {
    a.c(paramString);
  }
  
  public void showAd(final n paramN, final AnimationSet[] paramArrayOfAnimationSet)
  {
    p.b("Switch AD with/without animation.");
    g = paramN;
    final View localView = paramN.b();
    ((Activity)c).runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (f.getLayoutParams() != null)
        {
          DomobAdView.k().a("AdView's layoutParams is not null.");
          f.getLayoutParams().width = i;
          f.getLayoutParams().height = j;
          if (paramArrayOfAnimationSet == null) {
            break label356;
          }
          DomobAdView.k().b("Show ad with animation.");
          Object localObject = paramArrayOfAnimationSet[0];
          AnimationSet localAnimationSet = paramArrayOfAnimationSet[1];
          f.setInAnimation((Animation)localObject);
          f.setOutAnimation(localAnimationSet);
          label112:
          f.setVisibility(0);
          f.addView(localView, new RelativeLayout.LayoutParams(i, j));
          if (!k) {
            break label389;
          }
          k = false;
          label176:
          if (f.getChildCount() >= 3)
          {
            if (!(f.getChildAt(0) instanceof a)) {
              break label402;
            }
            localObject = (a)f.getChildAt(0);
            f.removeView((View)localObject);
            ((a)localObject).destroy();
          }
        }
        for (;;)
        {
          b(paramN);
          a.a(System.currentTimeMillis());
          if (n != null) {
            n.onReceivedFreshAd(DomobAdView.this);
          }
          if (o != null) {
            o.onDomobAdReturned(DomobAdView.this);
          }
          return;
          DomobAdView.k().a("AdView's layoutParams is null.");
          f.setLayoutParams(new RelativeLayout.LayoutParams(i, j));
          break;
          label356:
          DomobAdView.k().b("Show ad without animation.");
          f.setInAnimation(null);
          f.setOutAnimation(null);
          break label112;
          label389:
          f.showNext();
          break label176;
          label402:
          f.removeViewAt(0);
        }
      }
    });
    a(paramN);
    a.D();
  }
  
  public static enum a
  {
    private a() {}
  }
}
