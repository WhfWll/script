package cn.dbox.ui.b;

import android.content.Context;
import android.view.View;
import cn.dbox.core.b.d;
import cn.dbox.core.bean.d;
import cn.dbox.ui.a.g.a;
import cn.dbox.ui.common.f;
import cn.dbox.ui.common.f.b;
import java.util.ArrayList;

public class a
  extends b
{
  cn.dbox.ui.a.a a;
  
  public a(Context paramContext, d paramD, cn.dbox.core.b paramB, boolean paramBoolean)
  {
    super(paramContext, paramD, paramB, paramBoolean);
    setLayoutParams(k);
    setBackgroundColor(-789000);
    if (d != null) {
      addView(d);
    }
    if (h != null) {
      addView(h);
    }
    if ((h == null) && (paramD.l().size() == 0))
    {
      if (i != null) {
        addView(i);
      }
      return;
    }
    a(paramContext, paramD, paramB);
    addView(b);
  }
  
  public f a(Context paramContext, final d paramD, cn.dbox.core.b paramB)
  {
    b = new f(paramContext);
    b.setBackgroundColor(-789000);
    b.setCacheColorHint(0);
    b.setSelector(cn.dbox.ui.e.b.a(paramContext, "dbox_item_selector"));
    b.a(new f.b()
    {
      public void a()
      {
        if (!l)
        {
          o.setVisibility(0);
          if (!t)
          {
            t = true;
            a(a);
          }
        }
      }
    });
    if (o != null)
    {
      b.addFooterView(o);
      o.setVisibility(8);
    }
    s = paramD.l();
    a = new cn.dbox.ui.a.a(paramContext, s, paramB);
    a.a(new g.a()
    {
      public void a(View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (e != null)
        {
          if (paramAnonymousInt < s.size())
          {
            paramAnonymousView = (cn.dbox.core.bean.a)paramD.l().get(paramAnonymousInt);
            paramAnonymousView.a(paramAnonymousInt);
            e.a(paramAnonymousView, b.d.c, paramD.a(), paramD.c());
          }
        }
        else {
          return;
        }
        paramAnonymousView.setBackgroundColor(-789000);
      }
    });
    if (s != null) {
      a(s.size());
    }
    b.setAdapter(a);
    return b;
  }
}
