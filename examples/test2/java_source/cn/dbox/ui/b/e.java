package cn.dbox.ui.b;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.dbox.core.b.d;
import cn.dbox.core.bean.d;
import cn.dbox.ui.common.f.b;
import java.util.ArrayList;

public class e
  extends b
{
  private cn.dbox.ui.a.f a;
  
  public e(Context paramContext, d paramD, cn.dbox.core.b paramB, boolean paramBoolean)
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
  
  public cn.dbox.ui.common.f a(Context paramContext, final d paramD, cn.dbox.core.b paramB)
  {
    b = new cn.dbox.ui.common.f(paramContext);
    b.setFadingEdgeLength(0);
    b.setCacheColorHint(0);
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
            a(e.a(e.this));
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
    a = new cn.dbox.ui.a.f(paramContext, s, paramB);
    b.setAdapter(a);
    return b;
  }
}
