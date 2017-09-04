package cn.dbox.ui.common;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.RelativeLayout;
import cn.dbox.core.b.d;
import cn.dbox.core.bean.d.a;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

public class b
  extends RelativeLayout
{
  private static cn.dbox.core.h.d c = new cn.dbox.core.h.d(b.class.getSimpleName());
  ArrayList<cn.dbox.core.bean.a> a = new ArrayList();
  public cn.dbox.ui.d.a b;
  private Context d;
  private cn.dbox.core.b e;
  private int f;
  private int g;
  private View h;
  private DBoxGallery i;
  private cn.dbox.ui.a.c j;
  private String k;
  private String l;
  private int m = 0;
  private int n = 0;
  private int o = 0;
  private Timer p;
  private a q;
  
  public b(Context paramContext, d.a paramA, cn.dbox.core.b paramB, String paramString1, String paramString2)
  {
    super(paramContext);
    d = paramContext;
    e = paramB;
    k = paramString1;
    l = paramString2;
    a = paramA.c();
    g = paramA.a();
    f = a.size();
    a(paramContext);
    if (f > 1)
    {
      if (g < 5) {
        g = 5;
      }
      a(g);
    }
  }
  
  private void a(int paramInt)
  {
    c.b("autoscroll:" + paramInt);
    o = paramInt;
    if ((o <= 5) && (o > 0)) {
      o = 5;
    }
    if (o > 0)
    {
      if (p != null) {
        p.cancel();
      }
      p = new Timer();
      q = new a(null);
      p.scheduleAtFixedRate(q, 0L, o * 1000);
    }
  }
  
  public int a()
  {
    return n;
  }
  
  public void a(Context paramContext)
  {
    setLayoutParams(new AbsListView.LayoutParams(-1, -1));
    setBackgroundColor(-1);
    h = ((RelativeLayout)LayoutInflater.from(paramContext).inflate(cn.dbox.ui.e.d.a(paramContext, "dbox_banner"), null));
    i = ((DBoxGallery)h.findViewById(cn.dbox.ui.e.c.a(paramContext, "gallery")));
    j = new cn.dbox.ui.a.c(paramContext, a, e);
    i.setAdapter(j);
    i.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (b != null) {
          b.a((cn.dbox.core.bean.a)a.get(paramAnonymousInt % a.size()), b.d.c, b.a(b.this), b.b(b.this));
        }
      }
    });
    i.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
    {
      public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        b.b().b("onItemSelected:" + paramAnonymousInt);
        paramAnonymousAdapterView = b.this;
        if (b.c(b.this) > paramAnonymousInt % b.d(b.this) + 1) {}
        for (paramAnonymousInt = b.c(b.this);; paramAnonymousInt = paramAnonymousInt % b.d(b.this) + 1)
        {
          b.a(paramAnonymousAdapterView, paramAnonymousInt);
          return;
        }
      }
      
      public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView)
      {
        b.b().b("onNothingSelected");
      }
    });
    addView(h);
  }
  
  public void a(cn.dbox.ui.d.a paramA)
  {
    b = paramA;
  }
  
  private class a
    extends TimerTask
  {
    private a() {}
    
    public void run()
    {
      if ((b.e(b.this) != null) && (b.e(b.this).hasWindowFocus()) && (!b.e(b.this).isOnGalleryTouch()))
      {
        b.b().b("start auto scroll: " + toString());
        ((Activity)b.f(b.this)).runOnUiThread(new Runnable()
        {
          public void run()
          {
            b.e(b.this).onKeyDown(22, null);
          }
        });
      }
    }
  }
}
