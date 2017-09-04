package cn.dbox.ui.c;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout.LayoutParams;
import cn.dbox.core.b.e;
import cn.dbox.ui.b.e;
import cn.dbox.ui.common.h;
import cn.dbox.ui.common.k;
import cn.dbox.ui.d.d.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class b
  extends h
{
  public int n = 0;
  boolean o = false;
  public HashMap<String, cn.dbox.core.bean.d> p = new HashMap();
  public cn.dbox.ui.d.a q;
  private a r;
  private cn.dbox.ui.common.g s;
  private ArrayList<cn.dbox.core.bean.d> t;
  private ArrayList<cn.dbox.ui.b.b> u = new ArrayList();
  private HashMap<String, Integer> v = new HashMap();
  private HashMap<String, Integer> w = new HashMap();
  
  public b(Context paramContext, ArrayList<cn.dbox.core.bean.c> paramArrayList, ArrayList<cn.dbox.core.bean.a> paramArrayList1, cn.dbox.core.b paramB)
  {
    super(paramContext, paramArrayList, paramArrayList1, paramB);
    setLayoutParams(m);
    setBackgroundColor(-789000);
    t = k.a(paramArrayList);
    a(paramContext, t, paramArrayList1);
  }
  
  public ArrayList<cn.dbox.core.bean.d> a()
  {
    return t;
  }
  
  public ArrayList<cn.dbox.ui.b.b> a(Context paramContext, ArrayList<cn.dbox.core.bean.d> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = null;
    int i = 0;
    if (i < paramArrayList.size()) {
      if (((cn.dbox.core.bean.d)paramArrayList.get(i)).j().equals("web")) {
        localObject = new cn.dbox.ui.b.g(paramContext, (cn.dbox.core.bean.d)paramArrayList.get(i), d, false);
      }
    }
    for (;;)
    {
      localArrayList.add(localObject);
      i += 1;
      break;
      if (((cn.dbox.core.bean.d)paramArrayList.get(i)).j().equals("list"))
      {
        localObject = new e(paramContext, (cn.dbox.core.bean.d)paramArrayList.get(i), d, false);
      }
      else if (((cn.dbox.core.bean.d)paramArrayList.get(i)).j().equals("feeds"))
      {
        localObject = new cn.dbox.ui.b.c(paramContext, (cn.dbox.core.bean.d)paramArrayList.get(i), d, false);
      }
      else if (((cn.dbox.core.bean.d)paramArrayList.get(i)).j().equals("card"))
      {
        localObject = new cn.dbox.ui.b.a(paramContext, (cn.dbox.core.bean.d)paramArrayList.get(i), d, false);
        continue;
        return localArrayList;
      }
    }
  }
  
  public void a(Context paramContext, final ArrayList<cn.dbox.core.bean.d> paramArrayList, ArrayList<cn.dbox.core.bean.a> paramArrayList1)
  {
    if ((paramArrayList != null) && (paramArrayList.size() > 1))
    {
      r = new a(paramContext, paramArrayList);
      r.a(new a.a()
      {
        public void a(int paramAnonymousInt, View paramAnonymousView, Object paramAnonymousObject)
        {
          if (b.a(b.this) != null)
          {
            o = true;
            if ((o) && (g != null)) {
              g.a((cn.dbox.core.bean.d)paramArrayList.get(paramAnonymousInt), b.e.c);
            }
            b.a(b.this).setCurrentItem(paramAnonymousInt, false);
          }
        }
      });
      addView(r);
    }
    s = b(paramContext, paramArrayList, paramArrayList1);
    addView(s);
  }
  
  public void a(cn.dbox.ui.d.a paramA)
  {
    q = paramA;
    if (u != null)
    {
      Iterator localIterator = u.iterator();
      while (localIterator.hasNext()) {
        ((cn.dbox.ui.b.b)localIterator.next()).a(paramA);
      }
    }
  }
  
  public void a(String paramString, int paramInt)
  {
    if (v.containsKey(paramString))
    {
      int j = ((Integer)v.get(paramString)).intValue();
      int i = paramInt;
      if (j > paramInt) {
        i = j;
      }
      v.put(paramString, Integer.valueOf(i));
      return;
    }
    v.put(paramString, Integer.valueOf(paramInt));
  }
  
  public cn.dbox.ui.common.g b(Context paramContext, final ArrayList<cn.dbox.core.bean.d> paramArrayList, ArrayList<cn.dbox.core.bean.a> paramArrayList1)
  {
    paramArrayList1 = new cn.dbox.ui.common.g(paramContext);
    paramArrayList1.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    u = a(paramContext, paramArrayList);
    paramArrayList1.setAdapter(new cn.dbox.ui.a.d(u));
    paramArrayList1.setOnPageChangeListener(new cn.dbox.ui.d.d(new d.a()
    {
      public void a(int paramAnonymousInt)
      {
        if (b.b(b.this) != null)
        {
          int j = b.b(b.this).a();
          String str = ((cn.dbox.core.bean.d)b.c(b.this).get(j)).d();
          int i = ((cn.dbox.ui.b.b)b.d(b.this).get(j)).a();
          j = ((cn.dbox.ui.b.b)b.d(b.this).get(j)).b();
          a(str, i);
          b(str, j);
          n = paramAnonymousInt;
          b.b(b.this).b(paramAnonymousInt);
          if (paramAnonymousInt % 2 == 0) {
            b.b(b.this).scrollTo((paramAnonymousInt - 2) * k.a(k, 90), 0);
          }
          if ((!o) && (g != null)) {
            g.a((cn.dbox.core.bean.d)paramArrayList.get(paramAnonymousInt), b.e.b);
          }
          o = false;
        }
      }
    }));
    return paramArrayList1;
  }
  
  public HashMap<String, cn.dbox.core.bean.d> b()
  {
    Iterator localIterator = t.iterator();
    while (localIterator.hasNext())
    {
      cn.dbox.core.bean.d localD = (cn.dbox.core.bean.d)localIterator.next();
      p.put(localD.d(), localD);
    }
    return p;
  }
  
  public void b(String paramString, int paramInt)
  {
    if (w.containsKey(paramString))
    {
      int j = ((Integer)w.get(paramString)).intValue();
      int i = paramInt;
      if (j > paramInt) {
        i = j;
      }
      w.put(paramString, Integer.valueOf(i));
      return;
    }
    w.put(paramString, Integer.valueOf(paramInt));
  }
  
  public HashMap<String, Integer> c()
  {
    if (v != null) {
      a(((cn.dbox.core.bean.d)t.get(n)).d(), ((cn.dbox.ui.b.b)u.get(n)).a());
    }
    return v;
  }
  
  public HashMap<String, Integer> d()
  {
    if (w != null) {
      b(((cn.dbox.core.bean.d)t.get(n)).d(), ((cn.dbox.ui.b.b)u.get(n)).b());
    }
    return w;
  }
  
  public int e()
  {
    return n;
  }
  
  public static enum a
  {
    private a() {}
  }
}
