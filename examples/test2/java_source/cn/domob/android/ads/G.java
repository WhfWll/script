package cn.domob.android.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AnimationSet;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.domob.android.a.a.a;
import cn.domob.android.a.a.a.a;
import cn.domob.android.a.a.b;
import cn.domob.android.a.a.b.a;
import cn.domob.android.ads.c.d.b;
import cn.domob.android.i.f;
import cn.domob.android.i.h;
import cn.domob.android.j.c;
import cn.domob.android.j.c.a;
import java.util.HashMap;

class G
  extends DomobAdView
  implements DomobAdEventListener
{
  private static final int B = 1233;
  private static f p = new f(G.class.getSimpleName());
  private static final int q = 16;
  private static final int r = 9;
  private static final int s = 6;
  private static final int t = 5;
  private boolean A = false;
  private boolean C = false;
  private boolean D = false;
  private boolean E = false;
  private boolean F = false;
  private boolean G = false;
  private cn.domob.android.ads.c.d H;
  private cn.domob.android.ads.c.d I;
  private cn.domob.android.ads.c.d J;
  private boolean K = true;
  private Handler u = new Handler(Looper.getMainLooper());
  private DomobVideoInterstitialAdListener v;
  private DomobPreRollAdListener w;
  private a x;
  private a y;
  private c z;
  
  public G(Context paramContext, String paramString1, String paramString2, String paramString3, DomobAdView.a paramA)
  {
    super(paramContext, paramString1, paramString2, paramString3);
    if (a != null)
    {
      a.a(false);
      a.b(false);
    }
    b = paramA.ordinal();
  }
  
  private d.b a(final ImageButton paramImageButton)
  {
    new d.b()
    {
      public void a()
      {
        if (paramImageButton != null) {
          paramImageButton.setVisibility(0);
        }
      }
    };
  }
  
  private cn.domob.android.ads.c.d a(final long paramLong)
  {
    new cn.domob.android.ads.c.d(u, new d.b()
    {
      public void a()
      {
        G.a(G.this, "m", paramLong);
      }
    });
  }
  
  private void a(Context paramContext, a paramA, RelativeLayout paramRelativeLayout)
  {
    if (t()) {}
    int i;
    for (long l = paramA.z() * 1000 - a.g();; l = paramA.z() * 1000)
    {
      i = (int)l;
      if (i > 0) {
        break;
      }
      return;
    }
    int j = paramA.u();
    int k = paramA.v();
    paramA = new RelativeLayout.LayoutParams(paramA.d(c), paramA.e(c));
    topMargin = k;
    leftMargin = j;
    y = new a(paramContext, i);
    y.a(new a.a()
    {
      public void a()
      {
        ((Activity)c).runOnUiThread(new Runnable()
        {
          public void run()
          {
            q();
          }
        });
      }
    });
    paramRelativeLayout.addView(y, paramA);
    y.b();
  }
  
  private void a(b paramB, final a paramA)
  {
    paramB.a(new b.a()
    {
      public void a(boolean paramAnonymousBoolean)
      {
        G.a(G.this, paramAnonymousBoolean);
        if (paramAnonymousBoolean)
        {
          G.a(G.this, paramA);
          return;
        }
        G.a(G.this);
      }
    });
  }
  
  private void a(a paramA)
  {
    x = paramA;
    int i;
    int j;
    Object localObject1;
    Object localObject2;
    if (paramA.a())
    {
      a.a = paramA.i();
      d(paramA);
      i = rgetLayoutParamswidth;
      j = rgetLayoutParamsheight;
      localObject1 = new b(paramA.i());
      a((b)localObject1, paramA);
      paramA.a((RelativeLayout)localObject1);
      paramA.r().addView((View)localObject1, i, j);
      p.b(String.format("secure area parent relativeLyaout width:%d， height:%d", new Object[] { Integer.valueOf(i), Integer.valueOf(j) }));
      RelativeLayout localRelativeLayout = new RelativeLayout(paramA.i());
      localRelativeLayout.setBackgroundColor(paramA.y());
      localObject2 = new RelativeLayout.LayoutParams(paramA.w(), paramA.x());
      p.b(String.format("secure area width:%d height:%d", new Object[] { Integer.valueOf(paramA.w()), Integer.valueOf(paramA.x()) }));
      leftMargin = paramA.s();
      topMargin = paramA.t();
      ((RelativeLayout.LayoutParams)localObject2).addRule(9);
      ((RelativeLayout.LayoutParams)localObject2).addRule(10);
      ((b)localObject1).addView(localRelativeLayout, (ViewGroup.LayoutParams)localObject2);
      localObject1 = new RelativeLayout.LayoutParams(paramA.k(), paramA.l());
      ((RelativeLayout.LayoutParams)localObject1).addRule(13);
      localRelativeLayout.addView(g.b(), (ViewGroup.LayoutParams)localObject1);
      g.a(paramA.k(), paramA.l());
      if ((paramA.d()) || (paramA.A()))
      {
        g.b().setId(1233);
        i = paramA.b(paramA.i());
        j = paramA.c(paramA.i());
        localObject1 = new RelativeLayout.LayoutParams(i, j);
        if (paramA.j() == 2)
        {
          ((RelativeLayout.LayoutParams)localObject1).addRule(7, 1233);
          ((RelativeLayout.LayoutParams)localObject1).addRule(6, 1233);
          localObject2 = new ImageButton(paramA.i());
          ((ImageButton)localObject2).setVisibility(8);
          ((ImageButton)localObject2).setBackgroundDrawable(cn.domob.android.i.d.b(paramA.i(), paramA.q()));
          ((ImageButton)localObject2).setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymousView)
            {
              q();
            }
          });
          localRelativeLayout.addView((View)localObject2, (ViewGroup.LayoutParams)localObject1);
          if (t()) {
            break label626;
          }
          J = new cn.domob.android.ads.c.d(u, a((ImageButton)localObject2));
          J.a(0L);
        }
      }
      else
      {
        label463:
        if ((paramA.A()) && (!E)) {
          a(c, paramA, localRelativeLayout);
        }
        if (!t()) {
          e(paramA);
        }
      }
    }
    label626:
    do
    {
      return;
      if (paramA.j() == 1)
      {
        ((RelativeLayout.LayoutParams)localObject1).addRule(6, 1233);
        ((RelativeLayout.LayoutParams)localObject1).addRule(7, 1233);
        topMargin = (-j + cn.domob.android.i.g.a(paramA.i(), 2));
        rightMargin = (-cn.domob.android.i.g.a(paramA.i(), 6));
        break;
      }
      if (paramA.j() != 3) {
        break;
      }
      ((RelativeLayout.LayoutParams)localObject1).addRule(6, 1233);
      ((RelativeLayout.LayoutParams)localObject1).addRule(7, 1233);
      topMargin = (-cn.domob.android.i.g.a(paramA.i(), 12));
      rightMargin = (-i + cn.domob.android.i.g.a(paramA.i(), 6));
      break;
      if (J == null) {
        break label463;
      }
      if (J.g())
      {
        ((ImageButton)localObject2).setVisibility(0);
        break label463;
      }
      J.a(a((ImageButton)localObject2));
      break label463;
      q();
    } while ((!C) || (!D));
    onDomobAdFailed(this, DomobAdManager.ErrorCode.INTERNAL_ERROR);
  }
  
  private void a(a paramA, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    String str = String.format("ad area width:%d height:%d, ad proportions width:%d, height:%d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3), Integer.valueOf(paramInt4) });
    int i;
    if ((paramInt1 > 0) && (paramInt2 > 0) && (paramInt3 > 0) && (paramInt4 > 0)) {
      if (paramInt1 * paramInt4 > paramInt3 * paramInt2)
      {
        p.b("Advertising area can be filled with too wide");
        i = paramInt2 - paramInt2 % paramInt4;
        paramInt1 = paramInt2;
        if (i * 3.0D / paramInt2 > 2.0D) {
          paramInt1 = i;
        }
        paramA.d(paramInt1 * paramInt3 / paramInt4);
        paramA.e(paramInt1);
        p.b(str);
      }
    }
    for (;;)
    {
      p.b(String.format("after corrected, ad width:%d, height:%d", new Object[] { Integer.valueOf(paramA.k()), Integer.valueOf(paramA.l()) }));
      return;
      p.b("Advertising area can be filled with too high");
      i = paramInt1 - paramInt1 % paramInt3;
      paramInt2 = paramInt1;
      if (i * 3.0D / paramInt1 > 2.0D) {
        paramInt2 = i;
      }
      paramA.d(paramInt2);
      paramA.e(paramInt2 * paramInt4 / paramInt3);
      break;
      p.e(str);
    }
  }
  
  private void a(cn.domob.android.ads.c.d paramD)
  {
    if (paramD != null) {
      paramD.f();
    }
  }
  
  private void a(String paramString, long paramLong)
  {
    g.a(o(), paramString, paramLong);
  }
  
  private void b(final a paramA)
  {
    z = new c(c, new c.a()
    {
      public void a()
      {
        if (G.b(G.this)) {
          G.a(G.this, paramA);
        }
      }
      
      public void b()
      {
        if (G.b(G.this)) {
          G.a(G.this);
        }
      }
    });
    z.a();
  }
  
  private void c(a paramA)
  {
    if (t())
    {
      a.f();
      if (y != null) {
        y.d();
      }
      if (H != null) {
        H.c();
      }
      if (J != null) {
        J.c();
      }
      if (I != null) {
        I.c();
      }
    }
  }
  
  private void d(a paramA)
  {
    int n = paramA.w();
    int i1 = paramA.o();
    int i2 = paramA.p();
    int i3 = paramA.x();
    int i4 = paramA.n();
    int i5 = paramA.m();
    int k = a.B().d().h();
    int m = a.B().d().i();
    int i;
    int j;
    if (k > 0)
    {
      i = k;
      j = m;
      if (m > 0) {}
    }
    else
    {
      if (b != DomobAdView.a.h.ordinal()) {
        break label129;
      }
      i = 16;
      j = 9;
    }
    for (;;)
    {
      a(paramA, n - (i1 + i2) * 2, i3 - (i4 + i5) * 2, i, j);
      return;
      label129:
      i = k;
      j = m;
      if (b == DomobAdView.a.g.ordinal())
      {
        i = 6;
        j = 5;
      }
    }
  }
  
  private void e(a paramA)
  {
    a.a(System.currentTimeMillis());
    D = false;
    if ((x.g()) && (!paramA.A()))
    {
      I = s();
      I.a(x.h());
    }
    if (paramA.e())
    {
      H = a(x.f());
      H.a(paramA.f());
    }
    a("s", 0L);
    g.d();
    b(x);
    if (w != null) {
      w.onPreRollAdPresent();
    }
    while (v == null) {
      return;
    }
    v.onVideoInterstitialAdPresent();
  }
  
  private cn.domob.android.ads.c.d s()
  {
    new cn.domob.android.ads.c.d(u, new d.b()
    {
      public void a()
      {
        q();
      }
    });
  }
  
  private boolean t()
  {
    return (!D) && (C);
  }
  
  private void u()
  {
    if (t())
    {
      a.d();
      if (y != null)
      {
        y.c();
        p.b("countdown timeing:" + (x.h() - y.a()));
      }
      if (H != null)
      {
        H.b();
        p.b("impReport timeing:" + (x.f() - H.a()));
      }
      if (I != null)
      {
        I.b();
        p.b("autoClose timeing:" + (x.f() - I.a()));
      }
      if (J != null)
      {
        J.b();
        p.b("closebutton timeing:" + (x.f() - J.a()));
      }
      p.b("controller timeing:" + a.g());
    }
  }
  
  private void v()
  {
    G = false;
    F = false;
    if (v != null) {
      v.onVideoInterstitialAdDismiss();
    }
    while (w == null) {
      return;
    }
    w.onPreRollAdDismiss();
  }
  
  private void w()
  {
    E = true;
    a(y);
  }
  
  protected void a(int paramInt)
  {
    A = true;
    a.b(paramInt);
  }
  
  protected void a(View paramView)
  {
    if ((paramView != null) && (paramView.getParent() != null)) {}
    try
    {
      ((ViewGroup)paramView.getParent()).removeView(paramView);
      return;
    }
    catch (Exception paramView)
    {
      p.a(paramView);
    }
  }
  
  protected void a(DomobPreRollAdListener paramDomobPreRollAdListener)
  {
    w = paramDomobPreRollAdListener;
  }
  
  protected void a(DomobSceneInfo paramDomobSceneInfo, a paramA)
  {
    Object localObject = a.B().d();
    paramA.a(paramDomobSceneInfo.f());
    paramA.a(paramDomobSceneInfo.e());
    paramA.j(paramDomobSceneInfo.i());
    paramA.k(paramDomobSceneInfo.j());
    paramA.f(paramDomobSceneInfo.g());
    paramA.g(paramDomobSceneInfo.h());
    paramA.a(paramDomobSceneInfo.d());
    int i;
    if (paramA.A())
    {
      if (!A) {
        break label206;
      }
      i = a.I();
    }
    for (;;)
    {
      paramA.m(i);
      boolean bool1 = ((j.c)localObject).u();
      i = (int)(((j.c)localObject).w() * 1000.0F);
      boolean bool2 = ((j.c)localObject).x();
      int j = (int)(((j.c)localObject).y() * 1000.0F);
      boolean bool3 = ((j.c)localObject).z();
      localObject = ((j.c)localObject).b();
      a.b = paramDomobSceneInfo.e();
      if (((String)localObject).equals("video")) {
        paramA.b(false);
      }
      if (bool3) {
        paramA.b(j);
      }
      if (bool2) {
        paramA.a(i);
      }
      paramA.a(bool1);
      a(paramA);
      return;
      label206:
      if (((j.c)localObject).z()) {
        i = (int)((j.c)localObject).y();
      } else {
        i = 3;
      }
    }
  }
  
  protected void a(DomobVideoInterstitialAdListener paramDomobVideoInterstitialAdListener)
  {
    v = paramDomobVideoInterstitialAdListener;
  }
  
  protected void a(boolean paramBoolean)
  {
    if ((C) && (!D))
    {
      E = false;
      G = true;
      if (z != null) {
        z.b();
      }
      D = false;
      C = false;
      a(H);
      a(I);
      a(x.c());
      g.e();
      a("f", a.g());
      if ((!F) && (!paramBoolean)) {
        v();
      }
      p.b("close ad successfully");
    }
  }
  
  protected void b(DomobSceneInfo paramDomobSceneInfo, a paramA)
  {
    if ((!D) && (C))
    {
      p.b("Scene change, remove ad ");
      a(x.c());
      a(g.b());
      a(paramDomobSceneInfo, paramA);
    }
  }
  
  public void close()
  {
    q();
  }
  
  protected boolean l()
  {
    return C;
  }
  
  protected boolean m()
  {
    return D;
  }
  
  protected void n()
  {
    super.setAdEventListener(this);
    super.requestRefreshAd();
  }
  
  protected HashMap<String, String> o()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("eid", x.b());
    localHashMap.put("gdim", cn.domob.android.i.g.b(c, x.w()) + "x" + cn.domob.android.i.g.b(c, x.x()));
    localHashMap.put("adim", cn.domob.android.i.g.b(c, x.k()) + "x" + cn.domob.android.i.g.b(c, x.l()));
    return localHashMap;
  }
  
  public void onDomobAdClicked(DomobAdView paramDomobAdView)
  {
    if (v != null)
    {
      p.a("Notify user clicks on the VideoInterstitial ad.");
      v.onVideoInterstitialAdClicked();
    }
    while (w == null) {
      return;
    }
    p.a("Notify user clicks on the Pre-Roll ad.");
    w.onPreRollAdClicked();
  }
  
  public void onDomobAdFailed(DomobAdView paramDomobAdView, DomobAdManager.ErrorCode paramErrorCode)
  {
    if (v != null)
    {
      p.a("Notify VideoInterstitial ad failed.");
      v.onVideoInterstitialAdFailed(paramErrorCode);
    }
    while (w == null) {
      return;
    }
    p.a("Notify PreRoll ad failed.");
    w.onPreRollAdFailed(paramErrorCode);
  }
  
  public void onDomobAdOverlayDismissed(DomobAdView paramDomobAdView)
  {
    F = false;
    if (v != null)
    {
      p.a("Notify VideoInterstitial ad landing page close.");
      v.onLandingPageClose();
    }
    for (;;)
    {
      if (G) {}
      return;
      if (w != null)
      {
        p.a("Notify PreRoll ad landing page close.");
        w.onLandingPageClose();
      }
    }
  }
  
  public void onDomobAdOverlayPresented(DomobAdView paramDomobAdView)
  {
    F = true;
    if (v != null)
    {
      p.a("Notify VideoInterstitial ad landing page open.");
      v.onLandingPageOpen();
    }
    while (w == null) {
      return;
    }
    p.a("Notify PreRoll ad landing page open.");
    w.onLandingPageOpen();
  }
  
  public Context onDomobAdRequiresCurrentContext()
  {
    return a.b;
  }
  
  public void onDomobAdReturned(DomobAdView paramDomobAdView)
  {
    C = true;
    D = true;
    if (v != null)
    {
      p.a("Notify VideoInterstitialAd is ready.");
      v.onVideoInterstitialAdReady();
    }
    while (w == null) {
      return;
    }
    p.a("Notify Pre-Roll Ad is ready.");
    w.onPreRollAdReady();
  }
  
  public void onDomobLeaveApplication(DomobAdView paramDomobAdView)
  {
    if (v != null)
    {
      p.a("Notify VideoInterstitial ad leaving application.");
      v.onVideoInterstitialAdLeaveApplication();
    }
    while (w == null) {
      return;
    }
    p.a("Notify PreRoll ad leaving application.");
    w.onPreRollAdLeaveApplication();
  }
  
  public void onProcessActionType(String paramString)
  {
    if ((!h.e(paramString)) && (x != null) && (x.A()))
    {
      if ((!"download".equals(paramString)) && (!"launch".equals(paramString)) && (!"vibrate".equals(paramString))) {
        break label87;
      }
      w();
      if (J != null) {
        J.d();
      }
      if (I != null) {
        I.f();
      }
    }
    label87:
    while ((!"inapp".equals(paramString)) && (!"video".equals(paramString))) {
      return;
    }
    a(true);
  }
  
  protected boolean p()
  {
    return (x != null) && (x.c() != null) && (x.c().getParent() != null);
  }
  
  protected void q()
  {
    a(false);
  }
  
  public void showAd(n paramN, AnimationSet[] paramArrayOfAnimationSet)
  {
    g = paramN;
    ((Activity)c).runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (o != null) {
          o.onDomobAdReturned(G.this);
        }
      }
    });
    a.D();
  }
  
  static class a
  {
    public static final String a = "domob_close_interstitial.png";
    public static final int b = 36;
    public static final int c = 36;
    public static final int d = 6;
    public static final int e = 6;
    public static final int f = 2;
    public static final int g = 12;
    protected static final int h = 1;
    protected static final int i = 2;
    protected static final int j = 3;
    private static final int k = 40;
    private static final int l = 40;
    private static final int m = 36;
    private static final int n = 36;
    private static final int o = 3;
    private static final boolean p = false;
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G = 2;
    private int H;
    private int I;
    private int J;
    private int K;
    private int L;
    private boolean M;
    private boolean N = false;
    private boolean O = false;
    private boolean P = false;
    private Context q;
    private ViewGroup r;
    private RelativeLayout s;
    private String t;
    private String u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;
    
    a() {}
    
    protected boolean A()
    {
      return N;
    }
    
    protected void a(int paramInt)
    {
      H = paramInt;
      O = true;
    }
    
    protected void a(Context paramContext)
    {
      q = paramContext;
    }
    
    protected void a(Context paramContext, int paramInt)
    {
      B = cn.domob.android.i.g.a(paramContext, paramInt);
    }
    
    protected void a(ViewGroup paramViewGroup)
    {
      r = paramViewGroup;
    }
    
    protected void a(RelativeLayout paramRelativeLayout)
    {
      s = paramRelativeLayout;
    }
    
    protected void a(String paramString)
    {
      t = paramString;
    }
    
    protected void a(boolean paramBoolean)
    {
      M = paramBoolean;
    }
    
    protected boolean a()
    {
      if ((q != null) && (r != null) && (x > 0) && (y > 0)) {}
      for (boolean bool = true;; bool = false)
      {
        if (!bool) {
          Log.e(f.b(), "Parameters provided illegal, can not show ad");
        }
        return bool;
      }
    }
    
    protected int b(Context paramContext)
    {
      return cn.domob.android.i.g.a(paramContext, 36);
    }
    
    protected String b()
    {
      return t;
    }
    
    protected void b(int paramInt)
    {
      I = paramInt;
      P = true;
    }
    
    protected void b(Context paramContext, int paramInt)
    {
      A = cn.domob.android.i.g.a(paramContext, paramInt);
    }
    
    protected void b(String paramString)
    {
      u = paramString;
    }
    
    protected void b(boolean paramBoolean)
    {
      N = paramBoolean;
    }
    
    protected int c(Context paramContext)
    {
      return cn.domob.android.i.g.a(paramContext, 36);
    }
    
    protected RelativeLayout c()
    {
      return s;
    }
    
    protected void c(int paramInt)
    {
      G = paramInt;
    }
    
    protected void c(Context paramContext, int paramInt)
    {
      C = cn.domob.android.i.g.a(paramContext, paramInt);
    }
    
    protected int d(Context paramContext)
    {
      return cn.domob.android.i.g.a(paramContext, 40);
    }
    
    protected void d(int paramInt)
    {
      E = paramInt;
      G.r().b("the width of ad is " + E);
    }
    
    protected void d(Context paramContext, int paramInt)
    {
      D = cn.domob.android.i.g.a(paramContext, paramInt);
    }
    
    protected boolean d()
    {
      return M;
    }
    
    protected int e(Context paramContext)
    {
      return cn.domob.android.i.g.a(paramContext, 40);
    }
    
    protected void e(int paramInt)
    {
      F = paramInt;
      G.r().b("the height of ad is " + F);
    }
    
    protected boolean e()
    {
      return O;
    }
    
    protected int f()
    {
      return H;
    }
    
    protected void f(int paramInt)
    {
      v = paramInt;
    }
    
    protected void g(int paramInt)
    {
      w = paramInt;
    }
    
    protected boolean g()
    {
      return P;
    }
    
    protected int h()
    {
      return I;
    }
    
    protected void h(int paramInt)
    {
      K = paramInt;
    }
    
    protected Context i()
    {
      return q;
    }
    
    protected void i(int paramInt)
    {
      L = paramInt;
    }
    
    protected int j()
    {
      return G;
    }
    
    protected void j(int paramInt)
    {
      x = paramInt;
      G.r().b("secure area width: " + x);
    }
    
    protected int k()
    {
      return E;
    }
    
    protected void k(int paramInt)
    {
      y = paramInt;
      G.r().b("secure area height: " + y);
    }
    
    protected int l()
    {
      return F;
    }
    
    protected void l(int paramInt)
    {
      z = paramInt;
    }
    
    protected int m()
    {
      return B;
    }
    
    protected void m(int paramInt)
    {
      J = paramInt;
    }
    
    protected int n()
    {
      return A;
    }
    
    protected int o()
    {
      return C;
    }
    
    protected int p()
    {
      return D;
    }
    
    protected String q()
    {
      return u;
    }
    
    protected ViewGroup r()
    {
      return r;
    }
    
    protected int s()
    {
      return v;
    }
    
    protected int t()
    {
      return w;
    }
    
    protected int u()
    {
      return K;
    }
    
    protected int v()
    {
      return L;
    }
    
    protected int w()
    {
      return x;
    }
    
    protected int x()
    {
      return y;
    }
    
    protected int y()
    {
      return z;
    }
    
    protected int z()
    {
      return J;
    }
  }
}
