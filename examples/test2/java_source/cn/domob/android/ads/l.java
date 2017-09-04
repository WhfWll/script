package cn.domob.android.ads;

import android.app.Activity;
import android.content.Context;
import cn.domob.android.b.a;

public class l
  implements n.a
{
  private cn.domob.android.i.f a = new cn.domob.android.i.f(l.class.getSimpleName());
  private g b;
  private m c;
  private f d;
  
  public l(g paramG, m paramM)
  {
    b = paramG;
    c = paramM;
    d = new f();
  }
  
  public void a()
  {
    if (c != null) {
      c.onDomobAdClicked();
    }
  }
  
  protected void a(Context paramContext, final j paramJ)
  {
    j.c localC = paramJ.d();
    int i;
    if (localC.c() == 0)
    {
      i = a.u(paramContext);
      if (localC.d() != 0) {
        break label111;
      }
    }
    label111:
    for (int j = a.v(paramContext);; j = (int)(localC.d() * a.t(paramContext)))
    {
      if (c != null) {
        c.setCreativeRect(i, j);
      }
      paramJ = d.a(paramContext, b, paramJ, i, j);
      if (paramJ == null) {
        break label128;
      }
      paramJ.a(this);
      ((Activity)paramContext).runOnUiThread(new Runnable()
      {
        public void run()
        {
          paramJ.a();
        }
      });
      return;
      i = (int)(localC.c() * a.t(paramContext));
      break;
    }
    label128:
    a.b("bad ad received");
    b.a(DomobAdManager.ErrorCode.INTERNAL_ERROR);
  }
  
  public void a(DomobAdManager.ErrorCode paramErrorCode, String paramString)
  {
    a.e(String.format("FAILED to load ad content view and the errorMessage is: %s", new Object[] { paramString }));
    b.a(paramErrorCode);
  }
  
  public void a(n paramN)
  {
    if (c != null) {
      c.onDomobAdReturned(paramN);
    }
  }
  
  public void a(String paramString)
  {
    if (c != null) {
      c.onProcessActionType(paramString);
    }
  }
  
  public Context b()
  {
    if (c != null)
    {
      Context localContext = c.onDomobAdRequiresCurrentContext();
      if (localContext != null) {
        return localContext;
      }
    }
    return b.x();
  }
  
  public void c()
  {
    b.c();
    b.a(g.a.b);
    if (c != null) {
      c.onDomobAdOverlayPresented();
    }
  }
  
  public void d()
  {
    b.a(g.a.a);
    b.e();
    if (c != null) {
      c.onDomobAdOverlayDismissed();
    }
  }
  
  public void e()
  {
    if (c != null) {
      c.onDomobLeaveApplication();
    }
  }
  
  public void f()
  {
    a.b("ad call to close itself");
    if (c != null) {
      c.close();
    }
  }
}
