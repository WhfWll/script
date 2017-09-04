package cn.domob.android.a.a;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.domob.android.i.f;
import java.util.Timer;
import java.util.TimerTask;

public class a
  extends RelativeLayout
{
  private static final int b = 100;
  private static final int j = Color.rgb(0, 0, 0);
  private static final int k = 75;
  private static final int l = 1;
  private static final int m = 2;
  private static final int n = -1;
  private static final String o = "秒";
  private f a = new f(a.class.getSimpleName());
  private Context c;
  private a d;
  private Timer e;
  private TextView f;
  private int g;
  private int h;
  private int i;
  
  public a(Context paramContext, int paramInt)
  {
    super(paramContext);
    c = paramContext;
    g = paramInt;
    h = e();
    i = 1;
    f();
  }
  
  private int e()
  {
    int i2 = g / 1000;
    if (g % 1000 > 0) {}
    for (int i1 = 1;; i1 = 0) {
      return i1 + i2;
    }
  }
  
  private void f()
  {
    g();
    h();
  }
  
  private void g()
  {
    setBackgroundColor(j);
    getBackground().setAlpha(75);
  }
  
  private void h()
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13);
    f = new TextView(c);
    f.setTextColor(-1);
    f.setText(i());
    addView(f, localLayoutParams);
  }
  
  private String i()
  {
    return h + "秒";
  }
  
  private void j()
  {
    if (e == null)
    {
      a.b("create countdown Timer");
      TimerTask local1 = new TimerTask()
      {
        public void run()
        {
          a.a(a.this);
        }
      };
      e = new Timer();
      e.scheduleAtFixedRate(local1, 100L, 100L);
    }
  }
  
  private void k()
  {
    if (i == 2)
    {
      g -= 100;
      if (g <= 0) {
        break label49;
      }
      int i1 = e();
      if (i1 < h)
      {
        h = i1;
        l();
      }
    }
    label49:
    do
    {
      return;
      a.b("countdown finished");
      i = 1;
    } while (d == null);
    d.a();
  }
  
  private void l()
  {
    ((Activity)c).runOnUiThread(new Runnable()
    {
      public void run()
      {
        a.c(a.this).setText(a.b(a.this));
      }
    });
  }
  
  private void m()
  {
    a.b("countdown destroy");
    i = 1;
    if (e != null) {
      e.cancel();
    }
    a(null);
  }
  
  public int a()
  {
    return g;
  }
  
  public void a(a paramA)
  {
    d = paramA;
  }
  
  public void b()
  {
    a.b("countdown start");
    i = 2;
    j();
  }
  
  public void c()
  {
    a.b("countdown paused");
    i = 1;
  }
  
  public void d()
  {
    a.b("countdown resume");
    i = 2;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    a.b("countdown detached from window");
    m();
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}
