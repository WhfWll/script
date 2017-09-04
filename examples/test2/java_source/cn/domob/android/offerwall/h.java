package cn.domob.android.offerwall;

import android.widget.Toast;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

class h
  implements d.a, g.a
{
  private static m a = new m(h.class.getSimpleName());
  private DomobOfferWallView b;
  private k c;
  
  h(DomobOfferWallView paramDomobOfferWallView)
  {
    b = paramDomobOfferWallView;
    d.a(b.getContext(), this);
  }
  
  protected void a()
  {
    new j(b.getContext()).a(new j.a()
    {
      public void a(k paramAnonymousK)
      {
        h.d().b("Offer Info Request Finished.");
        if (paramAnonymousK != null)
        {
          h.d().b("DomobOfferResponse to String: " + paramAnonymousK.toString());
          h.a(h.this, paramAnonymousK);
          h.a(h.this).a(paramAnonymousK.d());
          return;
        }
        h.d().e("Response is null.");
        h.a(h.this).a();
      }
    });
  }
  
  protected void a(int paramInt)
  {
    if ((c != null) && (c.e() != null) && (c.e().get(Integer.valueOf(paramInt)) != null))
    {
      Object localObject = ((k.a)c.e().get(Integer.valueOf(paramInt))).e();
      localObject = new g(b.getContext(), (String)localObject, this);
      if (paramInt != -1)
      {
        k.a localA = (k.a)c.e().get(Integer.valueOf(paramInt));
        ((g)localObject).a(paramInt);
        ((g)localObject).a(localA.c());
        ((g)localObject).b(localA.d());
      }
      ((g)localObject).e();
    }
  }
  
  public void a(g paramG)
  {
    i.a localA = new i.a();
    a = "installed";
    b.add(paramG.c());
    c = "http://duomeng.cn/api/12306/rp";
    i.a(b.getContext(), localA);
  }
  
  protected void b()
  {
    i.a localA = new i.a();
    a = "show_list";
    Iterator localIterator = c.e().keySet().iterator();
    while (localIterator.hasNext())
    {
      int i = ((Integer)localIterator.next()).intValue();
      b.add(String.valueOf(i));
    }
    c = "http://duomeng.cn/api/12306/rp";
    i.a(b.getContext(), localA);
  }
  
  protected void b(int paramInt)
  {
    i.a localA = new i.a();
    a = "show_detail";
    b.add(String.valueOf(paramInt));
    c = "http://duomeng.cn/api/12306/rp";
    i.a(b.getContext(), localA);
  }
  
  public void b(g paramG) {}
  
  protected void c()
  {
    i.a localA = new i.a();
    a = "close_list";
    c = "http://duomeng.cn/api/12306/rp";
    i.a(b.getContext(), localA);
  }
  
  public void c(g paramG)
  {
    i.a localA = new i.a();
    a = "download_finish";
    b.add(String.valueOf(paramG.a()));
    c = "http://duomeng.cn/api/12306/rp";
    i.a(b.getContext(), localA);
  }
  
  public void d(g paramG) {}
  
  public void e(g paramG)
  {
    int i = paramG.a();
    paramG = (k.a)c.e().get(Integer.valueOf(i));
    i.a localA = new i.a();
    a = "download";
    b = new ArrayList();
    b.add(String.valueOf(i));
    if (paramG.b() == null) {}
    for (paramG = "http://duomeng.cn/api/12306/rp";; paramG = paramG.b())
    {
      c = paramG;
      i.a(b.getContext(), localA);
      return;
    }
  }
  
  public void f(g paramG) {}
  
  public void g(g paramG)
  {
    try
    {
      Toast.makeText(b.getContext(), "App下载中", 0).show();
      return;
    }
    catch (Exception paramG)
    {
      a.a(paramG);
    }
  }
  
  public void h(g paramG) {}
  
  public void i(g paramG)
  {
    d.a().a(paramG);
  }
}
