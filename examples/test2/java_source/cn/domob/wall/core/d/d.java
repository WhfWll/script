package cn.domob.wall.core.d;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.domob.wall.core.DService.EWallReportType;
import cn.domob.wall.core.bean.AdExtend;

public class d
  extends RelativeLayout
{
  private static cn.domob.wall.core.h.d a = new cn.domob.wall.core.h.d(d.class.getSimpleName());
  private a b;
  private Context c;
  private Dialog d;
  private cn.domob.wall.core.b e;
  private b f;
  private ProgressBar g;
  
  public d(final cn.domob.wall.core.b paramB, Context paramContext, AdExtend paramAdExtend)
  {
    super(paramContext);
    c = paramContext;
    b = new a(paramContext);
    e = paramB;
    setBackgroundColor(-1);
    f = new b(e, c, paramAdExtend.getmLabel(), new b.a()
    {
      public void a()
      {
        d.a().b("ewall close");
        if (d.a(d.this) != null) {
          d.a(d.this).dismiss();
        }
      }
    });
    paramContext = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
    paramContext.setDuration(600L);
    f.startAnimation(paramContext);
    d = new Dialog(c, 16973840);
    d.setContentView(f);
    b.a(new a.a()
    {
      public void a(a paramAnonymousA, final String paramAnonymousString)
      {
        d.a().b("EWallView onURLIntercepted URL:" + paramAnonymousString);
        try
        {
          ((Activity)d.c(d.this)).runOnUiThread(new Runnable()
          {
            public void run()
            {
              d.b(d.this).a(paramAnonymousString);
              if (d.a(d.this).isShowing())
              {
                d.a().b("mDialog.isShowing");
                return;
              }
              d.a().b("mDialog.isNotShowing");
              d.a(d.this).show();
            }
          });
          cn.domob.wall.core.f.a.a().a(paramB, DService.EWallReportType.E_PAGE_CLICK, paramAnonymousString);
          return;
        }
        catch (Exception paramAnonymousA)
        {
          d.a().a(paramAnonymousA);
        }
      }
    });
    cn.domob.wall.core.f.a.a().a(paramB, DService.EWallReportType.E_PAGE_REQ, null);
    b.loadUrl(paramAdExtend.getmUrl());
    b.setOnKeyListener(new View.OnKeyListener()
    {
      public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        return (paramAnonymousInt == 4) && (paramAnonymousKeyEvent.getAction() == 0);
      }
    });
    b.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return false;
      }
    });
    b.a(new a.b()
    {
      public void a(a paramAnonymousA, String paramAnonymousString)
      {
        d.d(d.this).setVisibility(4);
        cn.domob.wall.core.f.a.a().a(paramB, DService.EWallReportType.E_PAGE_SHOW, null);
      }
    });
    addView(b, new RelativeLayout.LayoutParams(-1, -1));
    g = new ProgressBar(c);
    paramB = new RelativeLayout.LayoutParams(-2, -2);
    paramB.addRule(13);
    g.setLayoutParams(paramB);
    g.setVisibility(0);
    addView(g);
  }
}
