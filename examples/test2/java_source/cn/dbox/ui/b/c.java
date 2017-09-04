package cn.dbox.ui.b;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.dbox.core.b.d;
import cn.dbox.core.bean.d;
import cn.dbox.ui.a.e;
import cn.dbox.ui.common.f;
import cn.dbox.ui.common.f.b;
import java.util.ArrayList;

public class c
  extends b
{
  private e a;
  
  public c(Context paramContext, d paramD, cn.dbox.core.b paramB, boolean paramBoolean)
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
    b.setFadingEdgeLength(0);
    b.setCacheColorHint(0);
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
            a(c.a(c.this));
          }
        }
      }
    });
    s = paramD.l();
    a = new e(paramContext, s, paramB);
    if (o != null)
    {
      b.addFooterView(o);
      o.setVisibility(8);
    }
    b.setAdapter(a);
    b.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if ((e != null) && (paramAnonymousInt < s.size()))
        {
          paramAnonymousAdapterView = (cn.dbox.core.bean.a)paramD.l().get(paramAnonymousInt);
          paramAnonymousAdapterView.a(paramAnonymousInt);
          e.a(paramAnonymousAdapterView, b.d.c, paramD.a(), paramD.c());
        }
      }
    });
    return b;
  }
}
