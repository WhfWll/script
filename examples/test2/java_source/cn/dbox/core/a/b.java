package cn.dbox.core.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.dbox.core.bean.a;
import cn.dbox.core.h.d;

public class b
{
  private static d d = new d(b.class.getSimpleName());
  private static final int k = 100;
  a a;
  c b;
  cn.dbox.ui.common.c c;
  private Context e = null;
  private c.b f;
  private RelativeLayout g;
  private Dialog h = null;
  private Animation i;
  private boolean j = false;
  private a l;
  
  public b(Context paramContext, String paramString1, String paramString2, c.b paramB, a paramA, a paramA1)
  {
    b = new c(paramContext, paramString1, paramString2, paramB, paramA, true);
    b.a(new c.e()
    {
      public void a()
      {
        b.this.b();
      }
      
      public void a(String paramAnonymousString)
      {
        if (c != null)
        {
          c.a(true);
          c.a(paramAnonymousString);
        }
      }
      
      public void b()
      {
        b.a(b.this, true);
      }
    });
    a = paramA;
    l = paramA1;
    e = paramContext;
    f = paramB;
  }
  
  private boolean a(int paramInt1, int paramInt2)
  {
    int m = Integer.toBinaryString(paramInt2).length() - 1;
    return (paramInt1 >>> m) % 2 == (paramInt2 >>> m) % 2;
  }
  
  private boolean c()
  {
    if ((e instanceof Activity)) {
      return a(e).getWindow().getAttributes().flags, 1024);
    }
    return false;
  }
  
  public Dialog a()
    throws Exception
  {
    d.a(this, "Start to build FS/RFS landingpage");
    g = new RelativeLayout(e);
    c = new cn.dbox.ui.common.c(e, a.e());
    c.b(false);
    c.a(false);
    c.setId(9999);
    if (l.ordinal() == a.b.ordinal()) {
      g.addView(c);
    }
    c.a(new cn.dbox.ui.d.c()
    {
      public void a() {}
      
      public void b()
      {
        b.this.b();
      }
    });
    g.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    if (l.ordinal() == a.b.ordinal()) {
      localLayoutParams.addRule(3, 9999);
    }
    g.addView(b, localLayoutParams);
    if (c())
    {
      h = new Dialog(e, 16973841);
      if (l.ordinal() != a.c.ordinal()) {
        break label351;
      }
      i = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
      i.setDuration(100L);
      g.startAnimation(i);
    }
    for (;;)
    {
      h = new Dialog(e, 16973840);
      h.getWindow().getAttributes().dimAmount = 0.5F;
      h.getWindow().setFlags(2, 2);
      h.setContentView(g);
      h.setOnDismissListener(new DialogInterface.OnDismissListener()
      {
        public void onDismiss(DialogInterface paramAnonymousDialogInterface)
        {
          b.a(b.this).removeView(b);
          if (b.b(b.this) != null) {
            b.b(b.this).f(a);
          }
          if ((!b.c(b.this)) && (b.b(b.this) != null)) {
            b.b(b.this).e(a);
          }
        }
      });
      return h;
      h = new Dialog(e, 16973840);
      break;
      label351:
      i = new TranslateAnimation(1, 1.0F, 1, 0.0F, 1, 0.0F, 1, 0.0F);
      i.setDuration(100L);
      b.startAnimation(i);
    }
  }
  
  public void b()
  {
    if ((h != null) && (h.isShowing())) {
      h.dismiss();
    }
  }
  
  public static enum a
  {
    private a() {}
  }
}
