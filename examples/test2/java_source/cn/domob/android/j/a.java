package cn.domob.android.j;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.VideoView;
import cn.domob.android.i.f;
import cn.domob.android.i.g;
import cn.domob.android.i.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Timer;
import java.util.TimerTask;

public class a
  extends RelativeLayout
  implements c.a, d.b, e.a, e.b
{
  public static final int a = 0;
  private static f b = new f(a.class.getSimpleName());
  private boolean A = false;
  private boolean B = false;
  private boolean C = false;
  private boolean D = false;
  private boolean E = false;
  private boolean F = false;
  private int G;
  private int H;
  private int I;
  private boolean J = false;
  private boolean K = false;
  private Runnable L = new Runnable()
  {
    public void run()
    {
      g();
    }
  };
  private Context c;
  private b d;
  private d e;
  private int f = 0;
  private int g = 0;
  private String h;
  private RelativeLayout.LayoutParams i;
  private RelativeLayout.LayoutParams j;
  private RelativeLayout k;
  private VideoView l;
  private Dialog m;
  private c n;
  private a o;
  private c p;
  private b q = null;
  private long[] r;
  private e s;
  private boolean t = false;
  private boolean u = false;
  private boolean v = false;
  private boolean w = false;
  private Handler x = new Handler(Looper.getMainLooper());
  private Timer y;
  private Timer z;
  
  public a(Context paramContext, String paramString, int paramInt1, int paramInt2, b paramB, a paramA)
  {
    super(paramContext);
    if ((paramContext != null) && (!h.e(paramString)) && (paramInt1 > 0) && (paramInt2 > 0))
    {
      c = paramContext;
      h = paramString;
      f = paramInt1;
      g = paramInt2;
      o = paramA;
      d = paramB;
      I = d.f();
      e = new d(paramContext, d, I, x, this);
      i = e.b(c, f, g);
      i.addRule(13);
      j = e.b(c, f, g);
      j.addRule(13);
      k = new RelativeLayout(paramContext);
      k.setBackgroundColor(-16777216);
      k.setLayoutParams(i);
      addView(k);
      paramContext = e.b(c, f, g);
      paramContext.addRule(13);
      setLayoutParams(paramContext);
      setBackgroundColor(-16777216);
      e.g();
      if (d.d()) {
        H();
      }
      return;
    }
    b.e("Constructor parameter error, video ad end");
    g();
  }
  
  private boolean A()
  {
    try
    {
      boolean bool = l.isPlaying();
      return bool;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      b.a(localIllegalStateException);
    }
    return false;
  }
  
  private void B()
  {
    if (z != null) {
      z.cancel();
    }
    Object localObject = new ArrayList();
    ArrayList localArrayList = new ArrayList();
    int i1 = 1000;
    if (I > 0)
    {
      C = false;
      I -= I % 100;
      if (I % 1000 != 0) {
        break label211;
      }
    }
    label211:
    for (i1 = 1000;; i1 = 100)
    {
      D = false;
      if ((r == null) || (r.length <= 0)) {
        break label264;
      }
      int i2 = 0;
      while (i2 < r.length)
      {
        Long localLong = new Long(r[i2] - r[i2] % 100L);
        if (!localArrayList.contains(localLong))
        {
          localArrayList.add(localLong);
          ((ArrayList)localObject).add(new Long(r[i2]));
        }
        int i3 = i1;
        if (i1 == 1000)
        {
          i3 = i1;
          if (r[i2] % 1000L > 0L) {
            i3 = 100;
          }
        }
        i2 += 1;
        i1 = i3;
      }
    }
    label264:
    for (;;)
    {
      z = new Timer();
      localObject = new TimerTask()
      {
        public void run()
        {
          if ((a.c(a.this) != null) && (a.u(a.this) != null))
          {
            int i = a.s(a.this);
            if ((a.v(a.this) > 0) && (!a.w(a.this)) && (i >= a.v(a.this)))
            {
              a.a(a.this, i);
              a.c(a.this, true);
            }
            while ((a.size() > 0) && (((Long)a.get(0)).longValue() <= i))
            {
              a.b(a.this, ((Long)a.get(0)).longValue());
              a.remove(0);
            }
            if (((a.w(a.this)) || (a.v(a.this) <= 0)) && (a.size() == 0)) {
              a.x(a.this).cancel();
            }
          }
        }
      };
      try
      {
        z.scheduleAtFixedRate((TimerTask)localObject, 0L, i1);
        return;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        b.a(localIllegalStateException);
        return;
      }
    }
  }
  
  private void C()
  {
    E();
  }
  
  private void D()
  {
    int i1 = cn.domob.android.b.a.u(c);
    int i2 = cn.domob.android.b.a.v(c);
    if (f / g > i1 / i2)
    {
      b(i1, (int)(i1 / f * g));
      return;
    }
    b((int)(i2 / g * f), i2);
  }
  
  private void E()
  {
    x.post(new Runnable()
    {
      public void run()
      {
        if (a.z(a.this) != null)
        {
          a.s(a.this);
          a.a(a.this, a.A(a.this));
          a.z(a.this).dismiss();
          a.a(a.this, null);
          a.a(a.this, a.B(a.this), a.C(a.this));
          DtopMargin = 0;
          DleftMargin = 0;
          addView(a.A(a.this));
        }
      }
    });
  }
  
  private boolean F()
  {
    boolean bool2 = true;
    boolean bool1;
    if (d.d())
    {
      bool1 = bool2;
      if (v)
      {
        if (!u) {
          break label50;
        }
        bool1 = bool2;
      }
    }
    for (;;)
    {
      if (bool1) {
        I();
      }
      return bool1;
      bool1 = bool2;
      if (!H()) {
        label50:
        bool1 = false;
      }
    }
  }
  
  private boolean G()
  {
    return !h.e(d.c());
  }
  
  private boolean H()
  {
    if (G())
    {
      String str1 = d.c();
      String str2 = Uri.parse(str1).getScheme();
      if (("http".equals(str2)) || ("https".equals(str2)))
      {
        s = new e(c);
        s.a(this);
        s.a(this);
        s.loadUrl(str1);
        return true;
      }
      b(str1);
      J();
    }
    for (;;)
    {
      return false;
      b.d("detail URL is empty");
      L();
    }
  }
  
  private boolean I()
  {
    if (s != null)
    {
      o();
      x.post(new Runnable()
      {
        public void run()
        {
          if (a.k(a.this)) {
            a.l(a.this);
          }
          a.A(a.this).removeAllViews();
          a.F(a.this).setLayoutParams(a.E(a.this));
          a.b(a.this, a.F(a.this));
          b.a localA = a.m(a.this).e();
          if (localA.f()) {
            a.b(a.this, a.j(a.this).b());
          }
          if (localA.h()) {
            a.b(a.this, a.j(a.this).a(false));
          }
          if (a.t(a.this) != null) {
            a.t(a.this).cancel();
          }
        }
      });
      return true;
    }
    return false;
  }
  
  private void J()
  {
    b.b("DetailPage Load Finish");
    v = true;
    if (d.d()) {
      w();
    }
  }
  
  private void K()
  {
    u = true;
    J();
    if (o != null) {
      o.q();
    }
  }
  
  private void L()
  {
    if ((s != null) && (s.getParent() != null) && (!d.d())) {
      g();
    }
    for (;;)
    {
      if (o != null) {
        o.p();
      }
      return;
      J();
    }
  }
  
  private void M()
  {
    if (s != null)
    {
      b(s);
      s.destroy();
      s = null;
    }
  }
  
  private int N()
  {
    int i1 = 0;
    int i2 = 0;
    try
    {
      VideoView localVideoView = l;
      if (localVideoView != null) {}
      try
      {
        i1 = l.getCurrentPosition();
        i2 = i1;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        for (;;)
        {
          b.a(localIllegalStateException);
        }
      }
      i1 = i2;
      if (G > 0)
      {
        if ((i2 > 0) && (i2 <= G)) {
          H = i2;
        }
        if (i2 <= G)
        {
          i1 = i2;
          if (i2 >= 0) {}
        }
        else
        {
          b.d(String.format("the value(%d) of video play position is invalid, so turn to the last available pasition(%d)", new Object[] { Integer.valueOf(i2), Integer.valueOf(H) }));
          i1 = H;
        }
      }
      return i1;
    }
    finally {}
  }
  
  private boolean O()
  {
    if (k.getParent() != null) {
      return !((RelativeLayout)k.getParent() instanceof a);
    }
    return false;
  }
  
  private void P()
  {
    o();
    if (l != null)
    {
      l.stopPlayback();
      l = null;
    }
  }
  
  private void Q()
  {
    J = false;
    o();
    x.removeCallbacks(L);
    if (l != null)
    {
      l.seekTo(0);
      l.start();
      e.c(true);
    }
    n();
  }
  
  private void a(long paramLong)
  {
    if (s())
    {
      b.b("imp progress report, time note: " + paramLong);
      p.a(paramLong);
    }
  }
  
  private void a(View paramView)
  {
    k.addView(paramView);
  }
  
  private void a(View paramView, RelativeLayout.LayoutParams paramLayoutParams)
  {
    k.addView(paramView, paramLayoutParams);
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    if ((i != null) && (j != null))
    {
      i.width = paramInt1;
      i.height = paramInt2;
      j.width = paramInt1;
      j.height = paramInt2;
    }
  }
  
  private void b(long paramLong)
  {
    if (s())
    {
      b.b("imp report min");
      p.b(paramLong);
    }
  }
  
  private void b(final View paramView)
  {
    if ((paramView != null) && (paramView.getParent() != null)) {
      ((Activity)c).runOnUiThread(new Runnable()
      {
        public void run()
        {
          ((ViewGroup)paramView.getParent()).removeView(paramView);
        }
      });
    }
  }
  
  private void b(String paramString)
  {
    if ((o != null) && (!h.e(paramString)))
    {
      b.b("Intercept webview url:" + paramString);
      o.b(paramString);
    }
  }
  
  private void c(long paramLong)
  {
    if ((p != null) && (F))
    {
      b.b("imp report finish");
      p.c(paramLong);
    }
  }
  
  private void n()
  {
    B();
    t();
  }
  
  private void o()
  {
    if ((p != null) && (!D))
    {
      D = true;
      int i1 = 0;
      if (l != null) {
        i1 = N();
      }
      int i2;
      if (i1 > 0)
      {
        i2 = i1;
        if (i1 <= G) {}
      }
      else
      {
        i2 = H;
      }
      c(i2);
    }
  }
  
  private void p()
  {
    if (o != null)
    {
      b.b("call method of callbackOnVideoReadyToPlay");
      o.a(this);
      B = true;
    }
  }
  
  private void q()
  {
    if (o != null) {
      o.a(B);
    }
  }
  
  private void r()
  {
    try
    {
      g();
      if ((o != null) && (!E))
      {
        E = true;
        o.o();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private boolean s()
  {
    if ((p != null) && (F) && (g.a(c, k))) {
      return true;
    }
    b.d("can not meet condition to send imp report, mResourceAvailable: " + F);
    return false;
  }
  
  private void t()
  {
    if (s())
    {
      b.b("imp report start");
      p.n();
    }
  }
  
  private void u()
  {
    if ((l != null) && (l.canPause())) {}
    try
    {
      l.pause();
      return;
    }
    catch (Exception localException)
    {
      b.a(localException);
    }
  }
  
  private void v()
  {
    if (l != null)
    {
      b.b("video resume, current position: " + N() + " total time: " + l.getDuration());
      if (J) {}
    }
    try
    {
      l.start();
      return;
    }
    catch (Exception localException)
    {
      b.a(localException);
    }
  }
  
  private void w()
  {
    if (x())
    {
      b.b("meet condition to create video");
      x.post(new Runnable()
      {
        public void run()
        {
          a.a(a.this);
        }
      });
      return;
    }
    b.b("can not meet condition to create video");
  }
  
  private boolean x()
  {
    return (!w) && (t) && (((d.d()) && (v)) || (!d.d()));
  }
  
  /* Error */
  private void y()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 139	cn/domob/android/j/a:w	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: getstatic 120	cn/domob/android/j/a:b	Lcn/domob/android/i/f;
    //   17: ldc_w 573
    //   20: invokevirtual 371	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   23: aload_0
    //   24: iconst_1
    //   25: putfield 139	cn/domob/android/j/a:w	Z
    //   28: aload_0
    //   29: new 248	android/widget/VideoView
    //   32: dup
    //   33: aload_0
    //   34: getfield 180	cn/domob/android/j/a:c	Landroid/content/Context;
    //   37: invokespecial 574	android/widget/VideoView:<init>	(Landroid/content/Context;)V
    //   40: putfield 246	cn/domob/android/j/a:l	Landroid/widget/VideoView;
    //   43: aload_0
    //   44: getfield 200	cn/domob/android/j/a:e	Lcn/domob/android/j/d;
    //   47: iconst_1
    //   48: invokevirtual 427	cn/domob/android/j/d:c	(Z)V
    //   51: aload_0
    //   52: getfield 246	cn/domob/android/j/a:l	Landroid/widget/VideoView;
    //   55: new 38	cn/domob/android/j/a$8
    //   58: dup
    //   59: aload_0
    //   60: invokespecial 575	cn/domob/android/j/a$8:<init>	(Lcn/domob/android/j/a;)V
    //   63: invokevirtual 579	android/widget/VideoView:setOnErrorListener	(Landroid/media/MediaPlayer$OnErrorListener;)V
    //   66: aload_0
    //   67: getfield 246	cn/domob/android/j/a:l	Landroid/widget/VideoView;
    //   70: new 40	cn/domob/android/j/a$9
    //   73: dup
    //   74: aload_0
    //   75: invokespecial 580	cn/domob/android/j/a$9:<init>	(Lcn/domob/android/j/a;)V
    //   78: invokevirtual 584	android/widget/VideoView:setOnPreparedListener	(Landroid/media/MediaPlayer$OnPreparedListener;)V
    //   81: aload_0
    //   82: getfield 246	cn/domob/android/j/a:l	Landroid/widget/VideoView;
    //   85: new 16	cn/domob/android/j/a$10
    //   88: dup
    //   89: aload_0
    //   90: invokespecial 585	cn/domob/android/j/a$10:<init>	(Lcn/domob/android/j/a;)V
    //   93: invokevirtual 589	android/widget/VideoView:setOnTouchListener	(Landroid/view/View$OnTouchListener;)V
    //   96: aload_0
    //   97: getfield 246	cn/domob/android/j/a:l	Landroid/widget/VideoView;
    //   100: new 18	cn/domob/android/j/a$11
    //   103: dup
    //   104: aload_0
    //   105: invokespecial 590	cn/domob/android/j/a$11:<init>	(Lcn/domob/android/j/a;)V
    //   108: invokevirtual 594	android/widget/VideoView:setOnCompletionListener	(Landroid/media/MediaPlayer$OnCompletionListener;)V
    //   111: aload_0
    //   112: aload_0
    //   113: getfield 246	cn/domob/android/j/a:l	Landroid/widget/VideoView;
    //   116: aload_0
    //   117: getfield 213	cn/domob/android/j/a:j	Landroid/widget/RelativeLayout$LayoutParams;
    //   120: invokespecial 596	cn/domob/android/j/a:a	(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    //   123: aload_0
    //   124: getfield 246	cn/domob/android/j/a:l	Landroid/widget/VideoView;
    //   127: invokevirtual 563	android/widget/VideoView:getDuration	()I
    //   130: istore_1
    //   131: aload_0
    //   132: aload_0
    //   133: getfield 200	cn/domob/android/j/a:e	Lcn/domob/android/j/d;
    //   136: iload_1
    //   137: sipush 1000
    //   140: idiv
    //   141: invokevirtual 599	cn/domob/android/j/d:c	(I)Landroid/widget/RelativeLayout;
    //   144: invokespecial 494	cn/domob/android/j/a:a	(Landroid/view/View;)V
    //   147: aload_0
    //   148: aload_0
    //   149: getfield 200	cn/domob/android/j/a:e	Lcn/domob/android/j/d;
    //   152: invokevirtual 602	cn/domob/android/j/d:e	()Landroid/widget/RelativeLayout;
    //   155: invokespecial 494	cn/domob/android/j/a:a	(Landroid/view/View;)V
    //   158: aload_0
    //   159: invokespecial 603	cn/domob/android/j/a:p	()V
    //   162: goto -151 -> 11
    //   165: astore_3
    //   166: aload_0
    //   167: monitorexit
    //   168: aload_3
    //   169: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	170	0	this	a
    //   130	11	1	i1	int
    //   6	2	2	bool	boolean
    //   165	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	165	finally
    //   14	162	165	finally
  }
  
  private void z()
  {
    if (y == null)
    {
      TimerTask local12 = new TimerTask()
      {
        public void run()
        {
          try
          {
            if (a.c(a.this) != null)
            {
              if (a.r(a.this))
              {
                int i = (a.c(a.this).getDuration() - a.s(a.this)) / 1000;
                a.j(a.this).a(i);
              }
            }
            else
            {
              a.t(a.this).cancel();
              a.a(a.this, null);
              return;
            }
          }
          catch (Exception localException)
          {
            a.m().a(localException);
          }
        }
      };
      y = new Timer();
      y.scheduleAtFixedRate(local12, 0L, 1000L);
    }
  }
  
  public void a()
  {
    v();
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if (m != null) {
      D();
    }
    for (;;)
    {
      f = paramInt1;
      g = paramInt2;
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      if (localLayoutParams != null)
      {
        width = paramInt1;
        height = paramInt2;
      }
      return;
      b(paramInt1, paramInt2);
    }
  }
  
  public void a(b paramB)
  {
    q = paramB;
  }
  
  public void a(b.a.a.a paramA)
  {
    String str = paramA.d();
    int i1;
    if (h.e(str))
    {
      str = paramA.b();
      if (str.equals("goto"))
      {
        F();
        paramA = paramA.f();
        if (paramA == null) {
          return;
        }
        i1 = 0;
        label43:
        if (i1 >= paramA.length) {
          return;
        }
        if (!h.e(paramA[i1]))
        {
          if (!paramA[i1].startsWith("http")) {
            break label121;
          }
          if (o != null) {
            o.c(paramA[i1]);
          }
        }
      }
    }
    for (;;)
    {
      i1 += 1;
      break label43;
      if (!str.equals("replay")) {
        break;
      }
      Q();
      break;
      b(str);
      break;
      label121:
      b(paramA[i1]);
    }
  }
  
  public void a(e paramE)
  {
    b.b("detail page load successfully");
    K();
  }
  
  public void a(String paramString)
  {
    b(paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      if (!A)
      {
        A = true;
        if (z != null) {
          z.cancel();
        }
        if (y != null) {
          y.cancel();
        }
        ((Activity)c).runOnUiThread(new Runnable()
        {
          public void run()
          {
            if (a.z(a.this) != null)
            {
              a.z(a.this).dismiss();
              a.a(a.this, null);
            }
            a.G(a.this);
            a.H(a.this);
          }
        });
        if (!paramBoolean) {
          q();
        }
        if (n != null) {
          n.b();
        }
        b.b("destroy videoAdView");
      }
      return;
    }
    finally {}
  }
  
  public void a(long[] paramArrayOfLong, c paramC)
  {
    if ((paramArrayOfLong != null) && (paramC != null))
    {
      r = paramArrayOfLong;
      Arrays.sort(r);
      p = paramC;
      return;
    }
    b.e("the method setImpProgressListener parameter error");
  }
  
  public void b()
  {
    u();
  }
  
  public void b(e paramE)
  {
    b.d("detail page load failed");
    L();
  }
  
  public void c()
  {
    b.b("start to play video when prepared");
    if (l != null)
    {
      l.setVideoPath(h);
      b.a("video local path: " + h);
      l.start();
      n = new c(c, this);
      n.a();
    }
  }
  
  public void c(e paramE)
  {
    if (!A)
    {
      b.d("detail page load timeout");
      x.post(new Runnable()
      {
        public void run()
        {
          a.I(a.this);
        }
      });
      return;
    }
    b.d("detail page load timeout and videoAdView has destroyed now");
  }
  
  public void d()
  {
    u();
    K = true;
  }
  
  public void e()
  {
    v();
    K = false;
  }
  
  public void f()
  {
    m = new Dialog(c, 16973841);
    e.b(false);
    m.setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        a.l(a.this);
        a.j(a.this).b(true);
        if (a.y(a.this) != null) {
          a.y(a.this).b();
        }
      }
    });
    RelativeLayout localRelativeLayout = new RelativeLayout(c);
    localRelativeLayout.setBackgroundColor(-16777216);
    localRelativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    m.setContentView(localRelativeLayout);
    N();
    b(k);
    D();
    localRelativeLayout.addView(k);
    m.show();
  }
  
  public void g()
  {
    a(false);
  }
  
  public void h()
  {
    g();
  }
  
  public void i()
  {
    if (O())
    {
      C();
      return;
    }
    f();
  }
  
  public void j()
  {
    b.b("button images download finish");
    t = true;
    w();
  }
  
  public void k()
  {
    b.b("no image need to download");
    t = true;
    w();
  }
  
  public b l()
  {
    return d;
  }
  
  public static abstract interface a
  {
    public abstract void a(a paramA);
    
    public abstract void a(boolean paramBoolean);
    
    public abstract void b(String paramString);
    
    public abstract void c(String paramString);
    
    public abstract void o();
    
    public abstract void p();
    
    public abstract void q();
  }
  
  public static abstract interface b
  {
    public abstract void b();
  }
  
  public static abstract interface c
  {
    public abstract void a(long paramLong);
    
    public abstract void b(long paramLong);
    
    public abstract void c(long paramLong);
    
    public abstract void n();
  }
}
