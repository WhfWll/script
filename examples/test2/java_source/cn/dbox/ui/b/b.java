package cn.dbox.ui.b;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.dbox.core.b.h;
import cn.dbox.core.b.m;
import cn.dbox.core.bean.d.a;
import cn.dbox.core.bean.g;
import cn.dbox.ui.common.f;
import java.util.ArrayList;
import java.util.Iterator;

public class b
  extends LinearLayout
{
  public static final int m = -789000;
  private final int a = 0;
  public f b;
  public cn.dbox.ui.card.c c;
  public cn.dbox.ui.common.c d;
  public cn.dbox.ui.d.a e;
  public Context f;
  public cn.dbox.core.bean.d g;
  public cn.dbox.ui.common.b h;
  public cn.dbox.ui.common.d i;
  public cn.dbox.core.b j;
  public LinearLayout.LayoutParams k;
  public boolean l = false;
  int n = 0;
  public View o;
  public TextView p;
  public final String q = "点击返回顶部";
  public final String r = "正在加载更多";
  public ArrayList<cn.dbox.core.bean.a> s;
  public boolean t = false;
  public int u = 0;
  public BaseAdapter v;
  Handler w = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      v.notifyDataSetChanged();
    }
  };
  
  public b(Context paramContext, cn.dbox.core.bean.d paramD, cn.dbox.core.b paramB, boolean paramBoolean)
  {
    super(paramContext);
    j = paramB;
    f = paramContext;
    g = paramD;
    k = new LinearLayout.LayoutParams(-1, -1);
    setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    setOrientation(1);
    setBackgroundColor(-789000);
    if (paramBoolean) {
      d = new cn.dbox.ui.common.c(paramContext, paramD.d());
    }
    i = new cn.dbox.ui.common.d(paramContext);
    d.a localA = paramD.k();
    if ((localA != null) && (localA.c().size() > 0))
    {
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
      h = new cn.dbox.ui.common.b(paramContext, localA, paramB, paramD.a(), paramD.c());
      h.setLayoutParams(localLayoutParams);
    }
    c();
  }
  
  public int a()
  {
    if (b != null)
    {
      if (n != 0) {
        return n;
      }
      return b.b();
    }
    if (c != null) {
      return c.getGridViewLastVisiblePosition();
    }
    return 0;
  }
  
  public void a(int paramInt)
  {
    n = paramInt;
  }
  
  public void a(BaseAdapter paramBaseAdapter)
  {
    v = paramBaseAdapter;
    j.a(new b.m()
    {
      public void a(b.h paramAnonymousH, String paramAnonymousString1, String paramAnonymousString2, int paramAnonymousInt)
      {
        l = true;
        if (b != null)
        {
          if (b.getFirstVisiblePosition() <= 1) {
            break label60;
          }
          d();
        }
        for (;;)
        {
          w.sendEmptyMessage(0);
          t = false;
          return;
          label60:
          e();
        }
      }
      
      public void a(g paramAnonymousG, ArrayList<cn.dbox.core.bean.c> paramAnonymousArrayList, ArrayList<cn.dbox.core.bean.a> paramAnonymousArrayList1, String paramAnonymousString, int paramAnonymousInt)
      {
        paramAnonymousG = paramAnonymousArrayList1.iterator();
        while (paramAnonymousG.hasNext())
        {
          paramAnonymousArrayList = (cn.dbox.core.bean.a)paramAnonymousG.next();
          s.add(paramAnonymousArrayList);
        }
        w.sendEmptyMessage(0);
        t = false;
      }
    });
    paramBaseAdapter = j;
    String str = g.c();
    int i1 = u + 1;
    u = i1;
    paramBaseAdapter.a(str, i1);
  }
  
  public void a(cn.dbox.ui.d.a paramA)
  {
    e = paramA;
    if (h != null) {
      h.a(e);
    }
  }
  
  public void a(cn.dbox.ui.d.c paramC)
  {
    if (d != null) {
      d.a(paramC);
    }
  }
  
  public int b()
  {
    if (h != null) {
      return h.a();
    }
    return 0;
  }
  
  public void c()
  {
    o = LayoutInflater.from(f).inflate(cn.dbox.ui.e.d.a(f, "dbox_list_footer"), null);
    p = ((TextView)o.findViewById(cn.dbox.ui.e.c.a(f, "more_textview")));
    p.setText("正在加载更多");
  }
  
  public void d()
  {
    ((Activity)f).runOnUiThread(new Runnable()
    {
      public void run()
      {
        p.setText("点击返回顶部");
        o.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            b.setSelection(0);
          }
        });
      }
    });
  }
  
  public void e()
  {
    ((Activity)f).runOnUiThread(new Runnable()
    {
      public void run()
      {
        o.setVisibility(8);
      }
    });
  }
}
