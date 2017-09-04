package cn.dbox.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Toast;
import cn.dbox.core.b.a;
import cn.dbox.core.b.b;
import cn.dbox.core.b.d;
import cn.dbox.core.b.e;
import cn.dbox.core.b.f;
import cn.dbox.core.b.o;
import cn.dbox.core.bean.d.a;
import cn.dbox.ui.b.e;
import cn.dbox.ui.b.g.a;
import cn.dbox.ui.common.h;
import cn.dbox.ui.common.i;
import cn.dbox.ui.common.j;
import cn.dbox.ui.d.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class a
  extends h
{
  private static cn.dbox.core.h.d n = new cn.dbox.core.h.d(a.class.getSimpleName());
  private LinearLayout.LayoutParams o = new LinearLayout.LayoutParams(-1, -1);
  private cn.dbox.ui.card.b p;
  private cn.dbox.ui.c.b q;
  private j r;
  private cn.dbox.ui.b.b s = null;
  private Dialog t;
  private Dialog u;
  private cn.dbox.ui.d.c v = new cn.dbox.ui.d.c()
  {
    public void a()
    {
      a.this.b();
    }
    
    public void b()
    {
      if (a.c(a.this) != null) {
        a.c(a.this).dismiss();
      }
    }
  };
  private cn.dbox.ui.d.a w = new cn.dbox.ui.d.a()
  {
    public void a(cn.dbox.core.bean.a paramAnonymousA, b.d paramAnonymousD, String paramAnonymousString1, String paramAnonymousString2)
    {
      d.a(paramAnonymousA);
      paramAnonymousA.b(paramAnonymousString1);
      paramAnonymousA.c(paramAnonymousString2);
      a.a(a.this, paramAnonymousA, b.a.c, paramAnonymousD);
    }
  };
  private cn.dbox.ui.d.g x = new cn.dbox.ui.d.g()
  {
    public void a()
    {
      a.e().b("onClickBack");
      if (a.g(a.this) != null) {
        a.g(a.this).dismiss();
      }
    }
    
    public void a(String paramAnonymousString1, String paramAnonymousString2)
    {
      a.e().b("onClickSendMessage:message:" + paramAnonymousString1 + "tel:" + paramAnonymousString2);
      if ((paramAnonymousString1 == null) || (paramAnonymousString1.equals("")) || (paramAnonymousString1.length() > 500) || (paramAnonymousString2.length() > 100))
      {
        Toast.makeText(k, "留言为空或留言太多或联系方式太多", 1).show();
        return;
      }
      Toast.makeText(k, "发送成功", 1).show();
      a.a(a.this, b.o.d, paramAnonymousString1, paramAnonymousString2);
    }
    
    public void b()
    {
      a.a(a.this, b.o.c, null, null);
    }
    
    public void c()
    {
      Intent localIntent = new Intent("android.intent.action.SENDTO");
      localIntent.setData(Uri.parse("mailto:duobaowu@163.com"));
      k.startActivity(localIntent);
      a.a(a.this, b.o.e, null, null);
    }
  };
  private f y;
  
  public a(Context paramContext)
  {
    super(paramContext);
    addView(e);
    addView(i, o);
    t = new Dialog(k, 16973840);
  }
  
  private void a(b.f paramF, cn.dbox.core.bean.d paramD, b.e paramE)
  {
    d.a(paramF, paramD, paramE);
  }
  
  private void a(b.o paramO, String paramString1, String paramString2)
  {
    if (d != null) {
      d.a(paramO, paramString1, paramString2);
    }
  }
  
  private void a(cn.dbox.core.bean.a paramA, b.a paramA1, b.d paramD)
  {
    d.a(paramA, paramA1, paramD);
  }
  
  private void a(final cn.dbox.core.bean.d paramD)
  {
    u = new Dialog(k, 16973840);
    ((Activity)k).runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (paramD.j().equals("card")) {
          a.a(a.this, new cn.dbox.ui.b.a(k, paramD, d, true));
        }
        for (;;)
        {
          a.d(a.this).a(a.e(a.this));
          a.d(a.this).a(a.f(a.this));
          a.c(a.this).setContentView(a.d(a.this));
          a.c(a.this).setOnDismissListener(new DialogInterface.OnDismissListener()
          {
            public void onDismiss(DialogInterface paramAnonymous2DialogInterface)
            {
              int j = a.d(a.this).a();
              paramAnonymous2DialogInterface = new ArrayList();
              int i = 0;
              while ((i < j) && (i < a.l().size()))
              {
                ((cn.dbox.core.bean.a)a.l().get(i)).a(i);
                paramAnonymous2DialogInterface.add(a.l().get(i));
                i += 1;
              }
              j = a.d(a.this).b();
              i = 0;
              while ((i < j) && (i < a.k().c().size()))
              {
                ((cn.dbox.core.bean.a)a.k().c().get(i)).a(0);
                paramAnonymous2DialogInterface.add(a.k().c().get(i));
                i += 1;
              }
              a(paramAnonymous2DialogInterface, a.c());
              if (a.j().equals("web")) {
                d.a(a, b.b.e);
              }
            }
          });
          a.c(a.this).show();
          return;
          if (paramD.j().equals("feeds"))
          {
            a.a(a.this, new cn.dbox.ui.b.c(k, paramD, d, true));
          }
          else if (paramD.j().equals("list"))
          {
            a.a(a.this, new e(k, paramD, d, true));
          }
          else if (paramD.j().equals("web"))
          {
            a.a(a.this, new cn.dbox.ui.b.g(k, paramD, d, true));
            ((cn.dbox.ui.b.g)a.d(a.this)).a(new g.a()
            {
              public void a()
              {
                if ((a.c(a.this) != null) && (a.c(a.this).isShowing())) {
                  a.c(a.this).dismiss();
                }
              }
            });
          }
        }
      }
    });
  }
  
  public void a()
  {
    if (i != null) {
      removeView(i);
    }
    j.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        a.e().b("refresh view");
        if (j != null) {
          removeView(j);
        }
        addView(i, a.a(a.this));
        if (a.b(a.this) != null) {
          a.b(a.this).a();
        }
      }
    });
    addView(j, o);
  }
  
  public void a(Context paramContext, String paramString, ArrayList<cn.dbox.core.bean.c> paramArrayList, ArrayList<cn.dbox.core.bean.a> paramArrayList1, cn.dbox.core.b paramB)
  {
    a(paramContext, paramArrayList, paramArrayList1, paramB);
    if (i != null) {
      removeView(i);
    }
    if (b.size() == 0) {
      if (l != null) {
        addView(l);
      }
    }
    do
    {
      return;
      if (paramString.equals("card"))
      {
        p = new cn.dbox.ui.card.b(k, b, c, d);
        addView(p, o);
        p.a(new cn.dbox.ui.d.b()
        {
          public void a(cn.dbox.core.bean.d paramAnonymousD, b.e paramAnonymousE)
          {
            a.a(a.this, paramAnonymousD);
            a.a(a.this, b.f.b, paramAnonymousD, b.e.c);
          }
        });
        return;
      }
    } while (!paramString.equals("flat"));
    q = new cn.dbox.ui.c.b(k, b, c, d);
    addView(q, o);
    q.a(new cn.dbox.ui.d.b()
    {
      public void a(cn.dbox.core.bean.d paramAnonymousD, b.e paramAnonymousE)
      {
        a.a(a.this, b.f.b, paramAnonymousD, paramAnonymousE);
      }
    });
    q.a(w);
  }
  
  public void a(f paramF)
  {
    y = paramF;
  }
  
  public void a(ArrayList<cn.dbox.core.bean.a> paramArrayList, String paramString)
  {
    d.a(paramArrayList, paramString);
  }
  
  public void a(HashMap<String, Integer> paramHashMap)
  {
    HashMap localHashMap = q.b();
    paramHashMap = paramHashMap.entrySet().iterator();
    while (paramHashMap.hasNext())
    {
      ArrayList localArrayList = new ArrayList();
      Object localObject1 = (Map.Entry)paramHashMap.next();
      Object localObject2 = ((Map.Entry)localObject1).getKey();
      int j = ((Integer)((Map.Entry)localObject1).getValue()).intValue();
      n.b(localObject2 + ":container:show:" + j + "ad");
      if (j != 0)
      {
        localObject1 = (cn.dbox.core.bean.d)localHashMap.get(localObject2);
        localObject2 = ((cn.dbox.core.bean.d)localObject1).l();
        int i = 0;
        while ((i <= j) && (i < ((ArrayList)localObject2).size()))
        {
          ((cn.dbox.core.bean.a)((ArrayList)localObject2).get(i)).a(i);
          localArrayList.add(((ArrayList)localObject2).get(i));
          i += 1;
        }
        d.a(localArrayList, ((cn.dbox.core.bean.d)localObject1).c());
      }
    }
  }
  
  public void b()
  {
    a(b.o.b, null, null);
    r = new j(k);
    r.a(x);
    t.setContentView(r);
    t.show();
  }
  
  public void b(HashMap<String, Integer> paramHashMap)
  {
    HashMap localHashMap = q.b();
    paramHashMap = paramHashMap.entrySet().iterator();
    while (paramHashMap.hasNext())
    {
      ArrayList localArrayList = new ArrayList();
      Object localObject1 = (Map.Entry)paramHashMap.next();
      Object localObject2 = ((Map.Entry)localObject1).getKey();
      int j = ((Integer)((Map.Entry)localObject1).getValue()).intValue();
      n.b(localObject2 + ":container:show:" + j + "ad");
      if (j != 0)
      {
        localObject1 = (cn.dbox.core.bean.d)localHashMap.get(localObject2);
        localObject2 = ((cn.dbox.core.bean.d)localObject1).k().c();
        int i = 0;
        while ((i < j) && (i < ((ArrayList)localObject2).size()))
        {
          localArrayList.add(((ArrayList)localObject2).get(i));
          i += 1;
        }
        d.a(localArrayList, ((cn.dbox.core.bean.d)localObject1).c());
      }
    }
  }
  
  public void c()
  {
    if (q != null)
    {
      HashMap localHashMap1 = q.c();
      HashMap localHashMap2 = q.d();
      a(localHashMap1);
      b(localHashMap2);
    }
  }
  
  public void d()
  {
    if (e != null) {
      e.setVisibility(8);
    }
  }
}
