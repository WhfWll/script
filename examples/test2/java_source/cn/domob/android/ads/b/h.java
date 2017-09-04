package cn.domob.android.ads.b;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ViewFlipper;
import cn.domob.android.b.a;
import cn.domob.android.i.d;
import cn.domob.android.i.f;
import java.util.ArrayList;

class h
{
  private static f f = new f(h.class.getSimpleName());
  private static final long g = 3000L;
  private static final int h = 50;
  private static final String i = "domob_close.png";
  protected BroadcastReceiver a = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent) {}
  };
  protected float b;
  protected int c = -1;
  protected int d = -1;
  FrameLayout e;
  private m j;
  private Context k;
  private m.l l = m.l.d;
  private final m.b m;
  private final m.d n;
  private FrameLayout o;
  private boolean p;
  private Runnable q = new Runnable()
  {
    public void run()
    {
      boolean bool = e();
      if (h.a(h.this) != bool)
      {
        h.a(h.this, bool);
        h.b(h.this).a(n.a(h.a(h.this)));
      }
      h.c(h.this).postDelayed(this, 3000L);
    }
  };
  private Handler r = new Handler();
  private final int s;
  private ImageView t;
  private boolean u;
  private int v;
  private int w;
  
  h(m paramM, m.b paramB, m.d paramD)
  {
    j = paramM;
    m = paramB;
    n = paramD;
    k = j.getContext();
    if ((k instanceof Activity)) {
      i1 = ((Activity)k).getRequestedOrientation();
    }
    s = i1;
    f();
  }
  
  private ViewGroup a(View paramView, int paramInt1, int paramInt2)
  {
    int i1 = (int)(50.0F * b);
    int i2 = paramInt1;
    if (paramInt1 < i1) {
      i2 = i1;
    }
    paramInt1 = paramInt2;
    if (paramInt2 < i1) {
      paramInt1 = i1;
    }
    FrameLayout localFrameLayout = new FrameLayout(j.getContext());
    localFrameLayout.setId(101);
    Object localObject = new View(j.getContext());
    ((View)localObject).setBackgroundColor(0);
    ((View)localObject).setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return true;
      }
    });
    localFrameLayout.addView((View)localObject, new FrameLayout.LayoutParams(-1, -1));
    localObject = new FrameLayout(j.getContext());
    ((FrameLayout)localObject).setId(102);
    ((FrameLayout)localObject).addView(paramView, new FrameLayout.LayoutParams(i2, paramInt1));
    paramView = new FrameLayout.LayoutParams(i2, paramInt1);
    int[] arrayOfInt = new int[2];
    e.getLocationOnScreen(arrayOfInt);
    paramInt2 = arrayOfInt[0];
    i1 = arrayOfInt[1];
    i2 = a.x(k);
    int i3 = e.getHeight();
    f.a(String.format("Mraid banner view's location on screen is:(%d, %d)", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(paramInt2) }));
    if (i2 - i1 > paramInt1)
    {
      leftMargin = paramInt2;
      topMargin = (i1 - w);
    }
    for (;;)
    {
      localFrameLayout.addView((View)localObject, paramView);
      return localFrameLayout;
      if (i1 - w + i3 > paramInt1)
      {
        leftMargin = arrayOfInt[0];
        topMargin = (i1 - (paramInt1 - i3));
      }
      else
      {
        gravity = 17;
      }
    }
  }
  
  private void c(boolean paramBoolean)
  {
    Object localObject = j.getContext();
    try
    {
      localObject = (Activity)localObject;
      if (paramBoolean) {}
      for (int i1 = getResourcesgetConfigurationorientation;; i1 = s)
      {
        ((Activity)localObject).setRequestedOrientation(i1);
        return;
      }
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      f.e("Unable to modify device orientation.");
    }
  }
  
  private void f()
  {
    l = m.l.a;
    h();
  }
  
  private void g()
  {
    Object localObject = k;
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)((Context)localObject).getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    b = density;
    int i2;
    int i1;
    if ((localObject instanceof Activity))
    {
      localObject = ((Activity)localObject).getWindow();
      Rect localRect = new Rect();
      ((Window)localObject).getDecorView().getWindowVisibleDisplayFrame(localRect);
      i2 = top;
      i1 = ((Window)localObject).findViewById(16908290).getTop() - i2;
    }
    for (;;)
    {
      w = (i2 + i1);
      int i3 = widthPixels;
      i1 = heightPixels - i2 - i1;
      f.a(String.format("Metrics pixels: width=%d, height=%d", new Object[] { Integer.valueOf(i3), Integer.valueOf(i1) }));
      c = ((int)(i3 * (160.0D / densityDpi)));
      d = ((int)(i1 * (160.0D / densityDpi)));
      f.a(String.format("Screen size: width=%d, height=%d", new Object[] { Integer.valueOf(c), Integer.valueOf(d) }));
      return;
      i1 = 0;
      i2 = 0;
    }
  }
  
  private void h()
  {
    r.removeCallbacks(q);
    r.post(q);
  }
  
  private void i()
  {
    Object localObject = (FrameLayout)o.findViewById(102);
    FrameLayout localFrameLayout = (FrameLayout)o.findViewById(101);
    a(false);
    ((FrameLayout)localObject).removeAllViewsInLayout();
    o.removeView(localFrameLayout);
    j.requestLayout();
    localObject = (ViewGroup)e.getParent();
    ((ViewGroup)localObject).addView(j, v, e.getLayoutParams());
    ((ViewGroup)localObject).removeView(e);
    ((ViewGroup)localObject).invalidate();
    if ((localObject instanceof ViewFlipper))
    {
      ((ViewFlipper)localObject).setInAnimation(null);
      ((ViewFlipper)localObject).setOutAnimation(null);
      ((ViewFlipper)localObject).setDisplayedChild(v);
    }
  }
  
  private void j()
  {
    ViewGroup localViewGroup = (ViewGroup)j.getParent();
    if (localViewGroup == null) {
      return;
    }
    e = new FrameLayout(k);
    e.setBackgroundColor(-16711936);
    int i2 = localViewGroup.getChildCount();
    int i1 = 0;
    for (;;)
    {
      if ((i1 >= i2) || (localViewGroup.getChildAt(i1) == j))
      {
        f.a("Current MRAID view's index is:" + i1);
        v = i1;
        localViewGroup.addView(e, i1, new ViewGroup.LayoutParams(j.getWidth(), j.getHeight()));
        localViewGroup.removeView(j);
        return;
      }
      i1 += 1;
    }
  }
  
  public void a()
  {
    r.removeCallbacks(q);
  }
  
  protected void a(String paramString, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (m == m.b.b) {}
    do
    {
      return;
      if ((paramString != null) && (!URLUtil.isValidUrl(paramString)))
      {
        j.b("expand", "URL passed to expand() was invalid.");
        return;
      }
      o = ((FrameLayout)j.getRootView().findViewById(16908290));
      b(paramBoolean1);
      c(paramBoolean2);
      j();
      m localM = j;
      if (paramString != null)
      {
        localM = new m(k);
        localM.loadUrl(paramString);
      }
      paramString = a(localM, (int)(paramInt1 * b), (int)(paramInt2 * b));
      o.addView(paramString, new FrameLayout.LayoutParams(-1, -1));
      if ((n == m.d.a) || ((!u) && (n != m.d.b))) {
        a(true);
      }
      l = m.l.c;
      j.a(l.a(l));
    } while (j.d() == null);
    j.d().a(j);
  }
  
  protected void a(boolean paramBoolean)
  {
    if (o == null) {
      return;
    }
    Object localObject = (FrameLayout)o.findViewById(102);
    if (paramBoolean)
    {
      if (t == null)
      {
        t = new ImageView(j.getContext());
        t.setBackgroundDrawable(d.b(k, "domob_close.png"));
        t.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            d();
          }
        });
      }
      int i1 = (int)(50.0F * b);
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(i1, i1, 5);
      ((FrameLayout)localObject).addView(t, localLayoutParams);
    }
    for (;;)
    {
      localObject = j;
      if (((m)localObject).h() == null) {
        break;
      }
      ((m)localObject).h().a((m)localObject, paramBoolean);
      return;
      ((FrameLayout)localObject).removeView(t);
    }
  }
  
  protected void b()
  {
    g();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(k.a(c, d));
    localArrayList.add(n.a(p));
    j.a(localArrayList);
    l = m.l.b;
    j.a(l.a(l));
  }
  
  protected void b(boolean paramBoolean)
  {
    u = paramBoolean;
    m localM = j;
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      if (localM.h() != null) {
        localM.h().a(localM, paramBoolean);
      }
      return;
    }
  }
  
  protected boolean c()
  {
    return l == m.l.c;
  }
  
  protected void d()
  {
    f.a("MRAID expandable part will be closed.");
    if (l == m.l.c)
    {
      f.a("MRAID view state is expanded and expand part will be closed.");
      i();
      c(false);
      l = m.l.b;
      j.a(l.a(l));
    }
    for (;;)
    {
      if (j.e() != null) {
        j.e().a(j, l);
      }
      return;
      if (l == m.l.b)
      {
        f.a("MRAID view state is default and MRAID view will be hidden.");
        j.setVisibility(4);
        l = m.l.d;
        j.a(l.a(l));
      }
    }
  }
  
  protected boolean e()
  {
    return j.getVisibility() == 0;
  }
}
