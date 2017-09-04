package cn.domob.wall.core.d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.domob.wall.core.h.d;
import cn.domob.wall.core.h.f;

class c
{
  static final int a = 45;
  private static d g = new d(c.class.getSimpleName());
  private static final String h = "e_close.png";
  private static final String i = "e_back.png";
  private static final String j = "e_forward.png";
  private static final String k = "e_back_c.png";
  private static final String l = "e_forward_c.png";
  private static final String m = "e_refresh.png";
  private static final int n = 24;
  private static final int o = 24;
  private static final int p = 24;
  private static final int q = -268435456;
  private static final int r = 20;
  private static final int s = -3026479;
  ImageButton b;
  ImageButton c;
  ProgressBar d;
  ImageView e;
  RotateAnimation f;
  private Context t;
  private a u;
  private String v;
  
  protected c(Context paramContext, String paramString, a paramA)
  {
    t = paramContext;
    v = paramString;
    u = paramA;
  }
  
  private Drawable a(Context paramContext, String paramString)
  {
    if (!f.a(paramString)) {
      try
      {
        paramContext = new BitmapDrawable(BitmapFactory.decodeStream(c.class.getClassLoader().getResourceAsStream("assets/" + paramString)));
        return paramContext;
      }
      catch (Exception paramContext)
      {
        g.a(paramContext);
      }
    }
    return null;
  }
  
  private void a(ImageButton paramImageButton, String paramString)
  {
    if ((paramImageButton != null) && (!f.a(paramString))) {
      paramImageButton.setBackgroundDrawable(a(t, paramString));
    }
  }
  
  private void a(RelativeLayout paramRelativeLayout, View paramView)
  {
    if ((paramView != null) && (paramRelativeLayout != null)) {
      paramRelativeLayout.addView(paramView);
    }
  }
  
  private RelativeLayout b(int paramInt)
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(t);
    localRelativeLayout.setBackgroundColor(-268435456);
    localRelativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, c(paramInt)));
    localRelativeLayout.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return true;
      }
    });
    return localRelativeLayout;
  }
  
  private int c(int paramInt)
  {
    return (int)(t.getResources().getDisplayMetrics().density * paramInt);
  }
  
  private void g()
  {
    f = new RotateAnimation(0.0F, 360.0F, 1, 0.5F, 1, 0.5F);
    f.setDuration(1000L);
    f.setInterpolator(new LinearInterpolator());
    f.setRepeatCount(-1);
  }
  
  private void h()
  {
    int i2 = 1;
    int i1;
    if (e != null)
    {
      i1 = 1;
      if (f == null) {
        break label49;
      }
    }
    for (;;)
    {
      if ((i1 & i2) != 0)
      {
        e.setVisibility(0);
        e.startAnimation(f);
      }
      return;
      i1 = 0;
      break;
      label49:
      i2 = 0;
    }
  }
  
  private void i()
  {
    int i2 = 1;
    int i1;
    if (e != null)
    {
      i1 = 1;
      if (f == null) {
        break label37;
      }
    }
    for (;;)
    {
      if ((i1 & i2) != 0) {
        e.clearAnimation();
      }
      return;
      i1 = 0;
      break;
      label37:
      i2 = 0;
    }
  }
  
  protected ImageButton a()
  {
    ImageButton localImageButton = new ImageButton(t);
    a(localImageButton, "e_close.png");
    localImageButton.setVisibility(0);
    RelativeLayout.LayoutParams localLayoutParams = a(t, 24, 24);
    localLayoutParams.addRule(11);
    localLayoutParams.addRule(15);
    rightMargin = c(10);
    localImageButton.setLayoutParams(localLayoutParams);
    localImageButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (c.a(c.this) != null) {
          c.a(c.this).a();
        }
      }
    });
    return localImageButton;
  }
  
  protected RelativeLayout.LayoutParams a(Context paramContext, int paramInt1, int paramInt2)
  {
    return b(paramContext, c(paramInt1), c(paramInt2));
  }
  
  protected TextView a(String paramString)
  {
    TextView localTextView = new TextView(t);
    localTextView.setTextSize(20.0F);
    localTextView.setTextColor(-3026479);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13);
    localTextView.setText(paramString);
    localTextView.setLayoutParams(localLayoutParams);
    return localTextView;
  }
  
  protected void a(int paramInt)
  {
    if (paramInt == 100)
    {
      d.setVisibility(4);
      i();
      return;
    }
    d.setVisibility(0);
    d.setProgress(paramInt);
  }
  
  protected void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1) {
      a(b, "e_back.png");
    }
    while (paramBoolean2)
    {
      a(c, "e_forward.png");
      return;
      a(b, "e_back.png");
    }
    a(c, "e_forward_c.png");
  }
  
  protected ImageButton b()
  {
    b = new ImageButton(t);
    a(b, "e_back.png");
    RelativeLayout.LayoutParams localLayoutParams = a(t, 24, 24);
    localLayoutParams.addRule(9);
    localLayoutParams.addRule(15);
    leftMargin = c(5);
    b.setLayoutParams(localLayoutParams);
    b.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (c.a(c.this) != null) {
          c.a(c.this).b();
        }
      }
    });
    b.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0) {
          c.a(c.this, b, "e_back_c.png");
        }
        for (;;)
        {
          return false;
          if (paramAnonymousMotionEvent.getAction() == 1) {
            c.a(c.this, b, "e_back.png");
          }
        }
      }
    });
    return b;
  }
  
  protected RelativeLayout.LayoutParams b(Context paramContext, int paramInt1, int paramInt2)
  {
    return new RelativeLayout.LayoutParams(paramInt1, paramInt2);
  }
  
  protected ImageButton c()
  {
    c = new ImageButton(t);
    a(c, "e_forward_c.png");
    RelativeLayout.LayoutParams localLayoutParams = a(t, 24, 24);
    localLayoutParams.addRule(9);
    localLayoutParams.addRule(15);
    leftMargin = c(50);
    c.setLayoutParams(localLayoutParams);
    c.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (c.a(c.this) != null) {
          c.a(c.this).c();
        }
      }
    });
    c.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0) {
          c.a(c.this, c, "e_forward_c.png");
        }
        for (;;)
        {
          return false;
          if (paramAnonymousMotionEvent.getAction() == 1) {
            c.a(c.this, c, "e_forward.png");
          }
        }
      }
    });
    return c;
  }
  
  protected ImageView d()
  {
    g();
    e = new ImageView(t);
    e.setBackgroundDrawable(a(t, "e_refresh.png"));
    RelativeLayout.LayoutParams localLayoutParams = a(t, 24, 24);
    localLayoutParams.addRule(9);
    localLayoutParams.addRule(15);
    leftMargin = c(95);
    e.setLayoutParams(localLayoutParams);
    e.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        c.b(c.this);
        if (c.a(c.this) != null) {
          c.a(c.this).d();
        }
      }
    });
    return e;
  }
  
  protected ProgressBar e()
  {
    d = new ProgressBar(t, null, 16842872);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, c(3));
    localLayoutParams.addRule(12);
    d.setLayoutParams(localLayoutParams);
    d.setProgress(30);
    return d;
  }
  
  protected RelativeLayout f()
  {
    RelativeLayout localRelativeLayout = b(45);
    ((RelativeLayout.LayoutParams)localRelativeLayout.getLayoutParams()).addRule(10);
    a(localRelativeLayout, b());
    a(localRelativeLayout, c());
    a(localRelativeLayout, d());
    a(localRelativeLayout, a(v));
    a(localRelativeLayout, a());
    a(localRelativeLayout, e());
    return localRelativeLayout;
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
    
    public abstract void c();
    
    public abstract void d();
  }
}
