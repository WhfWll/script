package cn.domob.android.ads;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.domob.android.b.a;
import cn.domob.android.i.d;
import cn.domob.android.i.f;
import cn.domob.android.i.g;
import cn.domob.android.i.h;

public class v
{
  public static final int a = -1;
  public static final int b = 1232;
  public static final String c = "btn_close_interstitial.png";
  public static final String d = "btn_close_interstitial_pressed.png";
  public static final String e = "domob_close.png";
  public static final int f = 36;
  public static final int g = 36;
  private static f h = new f(v.class.getSimpleName());
  private static final int i = 5;
  private static final int j = 15;
  private static final int k = 88;
  private static final int l = 28;
  private e m;
  private Dialog n;
  private Handler o = new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (what)
      {
      }
      do
      {
        do
        {
          return;
          ((ImageButton)obj).setVisibility(0);
          return;
          v.b().a("Arrival auto-off time");
        } while (!v.a(v.this).isShowing());
        v.a(v.this).dismiss();
        return;
        v.b().a("the time of ad to reach the minimum");
        v.a(v.this).setCancelable(true);
      } while (v.e.a(v.b(v.this)) == null);
      v.e.a(v.b(v.this)).b();
    }
  };
  
  private v(e paramE)
  {
    m = paramE;
  }
  
  private int a(int paramInt)
  {
    return g.a(e.b(m), paramInt);
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 < 0) {
      return Math.abs(paramInt3) + paramInt1;
    }
    return Math.max(paramInt3 + paramInt2, paramInt1);
  }
  
  private RelativeLayout.LayoutParams a(String paramString)
  {
    if (("triangle".equals(paramString)) || (!e.g(m))) {
      return i();
    }
    return h();
  }
  
  private RelativeLayout a(Integer paramInteger)
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(e.b(m));
    if (paramInteger != null) {
      localRelativeLayout.setBackgroundColor(paramInteger.intValue());
    }
    return localRelativeLayout;
  }
  
  private void a(View paramView)
  {
    if ((paramView == null) || (paramView.getParent() != null))
    {
      h.e("需要弹出显示的View已经被加载其他ViewGroup中，需要remove之后显示。");
      return;
    }
    if (e.h(m)) {}
    for (Object localObject = Integer.valueOf(e.i(m));; localObject = null)
    {
      localObject = a((Integer)localObject);
      RelativeLayout localRelativeLayout = a(Integer.valueOf(e.j(m)));
      localRelativeLayout.setId(1232);
      localRelativeLayout.addView(paramView, g());
      ((RelativeLayout)localObject).addView(localRelativeLayout, a(e.k(m)));
      if (e.g(m)) {
        ((RelativeLayout)localObject).addView(b(e.k(m)), c(e.k(m)));
      }
      n = b(paramView);
      n.addContentView((View)localObject, p());
      if (e.l(m))
      {
        paramView = new Message();
        what = 1;
        o.sendMessageDelayed(paramView, e.m(m));
      }
      n.setContentView((View)localObject);
      n.show();
      if (e.a(m) == null) {
        break;
      }
      e.a(m).a();
      return;
    }
  }
  
  private void a(View paramView, String paramString)
  {
    if ((paramView != null) && (!h.e(paramString))) {
      paramView.setBackgroundDrawable(d.b(e.b(m), paramString));
    }
  }
  
  private void a(ImageButton paramImageButton)
  {
    paramImageButton.setVisibility(8);
    paramImageButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (v.a(v.this).isShowing()) {
          v.a(v.this).dismiss();
        }
      }
    });
    Message localMessage = new Message();
    obj = paramImageButton;
    what = 0;
    o.sendMessageDelayed(localMessage, e.x(m));
  }
  
  private Dialog b(final View paramView)
  {
    n = new Dialog(e.b(m), 16973841);
    n.setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        ((ViewGroup)paramView.getParent()).removeAllViews();
        if (v.e.y(v.b(v.this)) != null) {
          v.e.y(v.b(v.this)).a();
        }
        if (v.e.a(v.b(v.this)) != null) {
          v.e.a(v.b(v.this)).c();
        }
      }
    });
    if (e.z(m))
    {
      n.setCancelable(false);
      paramView = new Message();
      what = 2;
      o.sendMessageDelayed(paramView, e.x(m));
    }
    return n;
  }
  
  private ImageButton b(String paramString)
  {
    if ("triangle".equals(paramString)) {}
    for (paramString = m();; paramString = l())
    {
      a(paramString);
      return paramString;
    }
  }
  
  private RelativeLayout.LayoutParams c(String paramString)
  {
    if ("triangle".equals(paramString)) {
      return n();
    }
    return o();
  }
  
  private boolean c()
  {
    int i1 = e();
    int i2 = f();
    if (i1 >= e.n(m) + e.o(m)) {}
    while (i2 >= e.p(m) + e.q(m)) {
      return false;
    }
    return true;
  }
  
  private boolean d()
  {
    int i1 = e();
    int i2 = f();
    int i3 = a.u(e.b(m));
    return (a.v(e.b(m)) > i2) && (i3 > i1);
  }
  
  private int e()
  {
    if (e.g(m)) {
      return a(e.o(m), e.n(m), e.r(m)[0]);
    }
    return e.o(m);
  }
  
  private int f()
  {
    if (e.g(m)) {
      return a(e.q(m), e.p(m), e.r(m)[1]);
    }
    return e.q(m);
  }
  
  private RelativeLayout.LayoutParams g()
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(e.o(m), e.q(m));
    localLayoutParams.addRule(13);
    return localLayoutParams;
  }
  
  private RelativeLayout.LayoutParams h()
  {
    RelativeLayout.LayoutParams localLayoutParams = j();
    localLayoutParams.addRule(14);
    topMargin = k();
    return localLayoutParams;
  }
  
  private RelativeLayout.LayoutParams i()
  {
    RelativeLayout.LayoutParams localLayoutParams = j();
    if ((!e.s(m)) && (!e.t(m)) && (!e.u(m)) && (!e.v(m))) {
      localLayoutParams.addRule(13);
    }
    if (e.s(m)) {
      localLayoutParams.addRule(9);
    }
    if (e.u(m)) {
      localLayoutParams.addRule(11);
    }
    if (e.t(m)) {
      localLayoutParams.addRule(10);
    }
    if (e.v(m)) {
      localLayoutParams.addRule(12);
    }
    return localLayoutParams;
  }
  
  private RelativeLayout.LayoutParams j()
  {
    int i3 = -1;
    int i1 = 0;
    if (e.w(m)) {
      i1 = a(5) * 2;
    }
    if (e.o(m) != -1) {}
    for (int i2 = e.o(m) + i1;; i2 = -1)
    {
      if (e.q(m) != -1) {
        i3 = e.q(m) + i1;
      }
      return new RelativeLayout.LayoutParams(i2, i3);
    }
  }
  
  private int k()
  {
    int i1 = (f() - e.q(m)) / 2;
    int i2 = a.v(e.b(m));
    int i3 = e.q(m);
    if (e.r(m)[1] < 0) {
      return i1 + (i2 - i3) / 2;
    }
    return (i2 - i3) / 2 - i1;
  }
  
  private ImageButton l()
  {
    final ImageButton localImageButton = new ImageButton(e.b(m));
    a(localImageButton, "btn_close_interstitial.png");
    localImageButton.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0) {
          v.a(v.this, localImageButton, "btn_close_interstitial_pressed.png");
        }
        for (;;)
        {
          return false;
          if (paramAnonymousMotionEvent.getAction() == 1) {
            v.a(v.this, localImageButton, "btn_close_interstitial.png");
          }
        }
      }
    });
    return localImageButton;
  }
  
  private ImageButton m()
  {
    ImageButton localImageButton = new ImageButton(e.b(m));
    a(localImageButton, "domob_close.png");
    return localImageButton;
  }
  
  private RelativeLayout.LayoutParams n()
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(e.n(m), e.p(m));
    localLayoutParams.addRule(6, 1232);
    localLayoutParams.addRule(7, 1232);
    return localLayoutParams;
  }
  
  private RelativeLayout.LayoutParams o()
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(e.n(m), e.p(m));
    int i1;
    if ((e.r(m) != null) && (e.r(m).length == 2))
    {
      if (!e.w(m)) {
        break label107;
      }
      i1 = 5;
    }
    for (int i2 = 5;; i2 = 0)
    {
      leftMargin = (e.r(m)[0] + i2);
      topMargin = (i1 + e.r(m)[1]);
      localLayoutParams.addRule(6, 1232);
      localLayoutParams.addRule(5, 1232);
      return localLayoutParams;
      label107:
      i1 = 0;
    }
  }
  
  private RelativeLayout.LayoutParams p()
  {
    return new RelativeLayout.LayoutParams(-1, -1);
  }
  
  public void a()
  {
    if ((n != null) && (n.isShowing())) {}
    try
    {
      n.dismiss();
      return;
    }
    catch (Exception localException)
    {
      h.a(localException);
    }
  }
  
  public static class a
  {
    public static final String a = "rectangle";
    public static final String b = "triangle";
    private v c;
    private v.e d;
    
    public a(Context paramContext)
    {
      v.b().a("Init and config present dialog.");
      d = new v.e(paramContext);
    }
    
    private boolean a(v paramV)
    {
      if ((v.e.e(d)) && (!v.c(paramV)))
      {
        v.b().d("Interstitial is too big, Give up ads show");
        return false;
      }
      if ((v.e.f(d)) && (v.e.g(d)) && (v.d(paramV)))
      {
        v.b().d("Close button and ad views overlap, Give up ads show");
        return false;
      }
      return true;
    }
    
    public a a(int paramInt)
    {
      v.e.e(d, paramInt);
      return this;
    }
    
    public a a(int paramInt1, int paramInt2)
    {
      v.e.a(d, paramInt1);
      v.e.b(d, paramInt2);
      return this;
    }
    
    public a a(v.b paramB)
    {
      v.e.a(d, paramB);
      return this;
    }
    
    public a a(v.c paramC)
    {
      v.e.a(d, paramC);
      return this;
    }
    
    public a a(v.d paramD)
    {
      v.e.a(d, paramD);
      return this;
    }
    
    public a a(String paramString)
    {
      v.e.a(d, paramString);
      return this;
    }
    
    public a a(boolean paramBoolean)
    {
      v.b().a("Close button is needed for present dialog.");
      v.e.a(d, paramBoolean);
      return this;
    }
    
    public a a(boolean paramBoolean, float paramFloat)
    {
      v.b().a("Force show is needed for present dialog with time = " + paramFloat);
      if (paramBoolean)
      {
        v.e.b(d, true);
        v.e.c(d, (int)paramFloat * 1000);
      }
      return this;
    }
    
    public a a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
    {
      v.e.d(d, paramBoolean1);
      v.e.e(d, paramBoolean2);
      v.e.f(d, paramBoolean3);
      v.e.g(d, paramBoolean4);
      return this;
    }
    
    public a a(int[] paramArrayOfInt)
    {
      if ((paramArrayOfInt != null) && (paramArrayOfInt.length == 2))
      {
        v.b().a(String.format("Close button offset x: %d y: %d", new Object[] { new Integer(paramArrayOfInt[0]), new Integer(paramArrayOfInt[1]) }));
        paramArrayOfInt[0] = g.a(v.e.b(d), paramArrayOfInt[0]);
        paramArrayOfInt[1] = g.a(v.e.b(d), paramArrayOfInt[1]);
        v.e.a(d, paramArrayOfInt);
        return this;
      }
      v.e.a(d, null);
      return this;
    }
    
    public void a()
    {
      c.a();
    }
    
    public void a(View paramView)
    {
      v.e.c(d);
      c = new v(d, null);
      if (a(c)) {
        v.a(c, paramView);
      }
      while (v.e.d(d) == null) {
        return;
      }
      v.e.d(d).a();
    }
    
    public a b(int paramInt)
    {
      v.e.f(d, paramInt);
      return this;
    }
    
    public a b(boolean paramBoolean)
    {
      v.e.h(d, paramBoolean);
      return this;
    }
    
    public a b(boolean paramBoolean, float paramFloat)
    {
      v.b().a("Auto close is needed for present dialog with time = " + paramFloat);
      if (paramBoolean)
      {
        v.e.c(d, true);
        v.e.d(d, (int)paramFloat * 1000);
      }
      return this;
    }
    
    public a c(boolean paramBoolean)
    {
      v.e.i(d, paramBoolean);
      return this;
    }
    
    public a d(boolean paramBoolean)
    {
      v.e.j(d, paramBoolean);
      return this;
    }
    
    public a e(boolean paramBoolean)
    {
      v.e.k(d, paramBoolean);
      return this;
    }
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
  
  public static abstract interface c
  {
    public abstract void a();
    
    public abstract void b();
    
    public abstract void c();
  }
  
  public static abstract interface d
  {
    public abstract void a();
  }
  
  public static class e
  {
    private Context a;
    private int b = -1;
    private int c = -1;
    private boolean d = false;
    private boolean e = false;
    private boolean f = false;
    private boolean g = false;
    private v.d h;
    private v.c i;
    private v.b j;
    private boolean k = false;
    private String l = "triangle";
    private int[] m = null;
    private boolean n = false;
    private int o = 0;
    private boolean p = false;
    private int q = 0;
    private boolean r = false;
    private int s = Color.parseColor("#7f000000");
    private boolean t = true;
    private int u = Color.parseColor("#7f000000");
    private boolean v = false;
    private boolean w = false;
    private int x;
    private int y;
    
    e(Context paramContext)
    {
      a = paramContext;
    }
    
    private void a()
    {
      if (k)
      {
        if (!"rectangle".equals(l)) {
          break label70;
        }
        x = g.a(a, 88);
        y = g.a(a, 28);
        if ((m == null) || (m.length != 2)) {
          m = b();
        }
      }
      label70:
      while (!"triangle".equals(l)) {
        return;
      }
      x = g.a(a, 36);
      y = g.a(a, 36);
    }
    
    private int[] b()
    {
      return new int[] { (b - x) / 2, -(g.a(a, 15) + y) };
    }
  }
}
