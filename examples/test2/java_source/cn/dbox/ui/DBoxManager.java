package cn.dbox.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnShowListener;
import android.view.ViewGroup;
import cn.dbox.core.b;
import cn.dbox.core.b.b;
import cn.dbox.core.b.h;
import cn.dbox.core.b.j;
import cn.dbox.core.b.l;
import cn.dbox.core.bean.Entrance.EntryReportType;
import cn.dbox.core.bean.c;
import cn.dbox.core.bean.g;
import cn.dbox.core.bean.g.a;
import cn.dbox.ui.b.d.a;
import cn.dbox.ui.d.f;
import java.util.ArrayList;
import java.util.Iterator;

public class DBoxManager
{
  private static cn.dbox.core.h.d b = new cn.dbox.core.h.d(DBoxManager.class.getSimpleName());
  String a = "16:5";
  private b c;
  private Context d;
  private ArrayList<c> e;
  private ArrayList<cn.dbox.core.bean.a> f;
  private a g;
  private Dialog h;
  private String i;
  private String j;
  private String k;
  private DialogInterface.OnDismissListener l = new DialogInterface.OnDismissListener()
  {
    public void onDismiss(DialogInterface paramAnonymousDialogInterface)
    {
      if ((DBoxManager.h(DBoxManager.this) != null) && (DBoxManager.h(DBoxManager.this).equals("flat")) && (DBoxManager.c(DBoxManager.this) != null)) {
        DBoxManager.c(DBoxManager.this).c();
      }
      if (DBoxManager.a(DBoxManager.this) != null) {
        DBoxManager.a(DBoxManager.this).onDBoxViewClosed();
      }
    }
  };
  private cn.dbox.ui.d.e m = new cn.dbox.ui.d.e()
  {
    public void a() {}
    
    public void b()
    {
      if (DBoxManager.c(DBoxManager.this) != null) {
        DBoxManager.c(DBoxManager.this).b();
      }
    }
    
    public void c()
    {
      if (DBoxManager.l(DBoxManager.this) != null) {
        DBoxManager.l(DBoxManager.this).dismiss();
      }
    }
  };
  private DBoxViewListener n;
  private Dialog o;
  
  public DBoxManager(Context paramContext, String paramString1, String paramString2)
  {
    c = new b(paramContext, paramString1, paramString2);
    c.a(new b.j()
    {
      public void a()
      {
        if (DBoxManager.a(DBoxManager.this) != null) {
          DBoxManager.a(DBoxManager.this).onLeaveApplication();
        }
      }
    });
    d = paramContext;
    h = new Dialog(d, 16973840);
    h.setOnDismissListener(l);
    h.setOnShowListener(new DialogInterface.OnShowListener()
    {
      public void onShow(DialogInterface paramAnonymousDialogInterface)
      {
        if (DBoxManager.a(DBoxManager.this) != null) {
          DBoxManager.a(DBoxManager.this).onDBoxViewPresent();
        }
      }
    });
  }
  
  private void b()
  {
    c.a(new b.l()
    {
      public void a(b.h paramAnonymousH, String paramAnonymousString1, String paramAnonymousString2, int paramAnonymousInt)
      {
        if (DBoxManager.c(DBoxManager.this) != null) {
          DBoxManager.f(DBoxManager.this);
        }
        if (DBoxManager.a(DBoxManager.this) != null) {
          DBoxManager.a(DBoxManager.this).onFailReceiveData("errorCode:" + paramAnonymousH + ",errorContent" + paramAnonymousString1);
        }
      }
      
      public void a(g paramAnonymousG, ArrayList<c> paramAnonymousArrayList, ArrayList<cn.dbox.core.bean.a> paramAnonymousArrayList1, String paramAnonymousString, int paramAnonymousInt)
      {
        DBoxManager.a(DBoxManager.this, paramAnonymousArrayList);
        DBoxManager.b(DBoxManager.this, paramAnonymousArrayList1);
        if (paramAnonymousG != null)
        {
          DBoxManager.a(DBoxManager.this, paramAnonymousG.a());
          paramAnonymousG = paramAnonymousG.b();
          if (paramAnonymousG != null) {
            DBoxManager.b(DBoxManager.this, paramAnonymousG.a());
          }
        }
        paramAnonymousG = paramAnonymousArrayList.iterator();
        if (paramAnonymousG.hasNext())
        {
          paramAnonymousArrayList = (c)paramAnonymousG.next();
          DBoxManager.a().b("Channel:id:" + paramAnonymousArrayList.a() + "name:" + paramAnonymousArrayList.b());
          paramAnonymousArrayList = paramAnonymousArrayList.d().iterator();
          while (paramAnonymousArrayList.hasNext())
          {
            paramAnonymousArrayList1 = (cn.dbox.core.bean.d)paramAnonymousArrayList.next();
            DBoxManager.a().b("ContainerInfo:" + paramAnonymousArrayList1.toString());
            paramAnonymousArrayList1 = paramAnonymousArrayList1.l().iterator();
            while (paramAnonymousArrayList1.hasNext())
            {
              paramAnonymousString = (cn.dbox.core.bean.a)paramAnonymousArrayList1.next();
              DBoxManager.a().b("AdInfo:" + paramAnonymousString.toString());
            }
          }
        }
        if (DBoxManager.c(DBoxManager.this) != null) {
          DBoxManager.d(DBoxManager.this);
        }
        if (DBoxManager.a(DBoxManager.this) != null) {
          DBoxManager.a(DBoxManager.this).onSuccessReceiveData(DBoxManager.e(DBoxManager.this));
        }
      }
    });
    c.a();
  }
  
  private void c()
  {
    if (k != null) {
      j = k;
    }
    ((Activity)d).runOnUiThread(new Runnable()
    {
      public void run()
      {
        doEntryReports(Entrance.EntryReportType.PRESENTED);
        DBoxManager.c(DBoxManager.this).a(DBoxManager.g(DBoxManager.this), DBoxManager.h(DBoxManager.this), DBoxManager.i(DBoxManager.this), DBoxManager.j(DBoxManager.this), DBoxManager.k(DBoxManager.this));
      }
    });
  }
  
  private void d()
  {
    ((Activity)d).runOnUiThread(new Runnable()
    {
      public void run()
      {
        DBoxManager.c(DBoxManager.this).a();
      }
    });
  }
  
  public static String getImei(Context paramContext)
  {
    return cn.dbox.core.h.e.h(paramContext);
  }
  
  public void doEntryReports(Entrance.EntryReportType paramEntryReportType)
  {
    c.a(paramEntryReportType);
  }
  
  public void doTicketStartReports()
  {
    c.b(null);
  }
  
  public void hideHeadView()
  {
    if (g != null) {
      g.d();
    }
  }
  
  public void preLoadData()
  {
    b();
  }
  
  public void preloadAdWall()
  {
    c.g();
  }
  
  public void presentWall()
  {
    k = null;
    presentWall(null, null);
  }
  
  public void presentWall(ViewGroup paramViewGroup)
  {
    k = null;
    presentWall(paramViewGroup, null);
  }
  
  public void presentWall(ViewGroup paramViewGroup, String paramString)
  {
    g = new a(d);
    g.a(m);
    g.a(new f()
    {
      public void a()
      {
        DBoxManager.b(DBoxManager.this);
      }
    });
    if (paramViewGroup == null)
    {
      h.setContentView(g);
      h.show();
    }
    for (;;)
    {
      if (paramString != null) {
        k = paramString;
      }
      if (e != null) {
        break;
      }
      b();
      return;
      hideHeadView();
      paramViewGroup.addView(g);
    }
    c();
  }
  
  public void presentWall(String paramString)
  {
    presentWall(null, paramString);
  }
  
  public void sendLandingReport(String paramString1, b.b paramB, String paramString2)
  {
    c.a(paramString1, paramB, paramString2);
  }
  
  public void sendTicketInfo(String paramString)
  {
    c.b(paramString);
  }
  
  public void setAdWallId(String paramString1, String paramString2)
  {
    if (c != null) {
      c.a(paramString1, paramString2);
    }
  }
  
  public void setBannerRatio(BannerRatio paramBannerRatio)
  {
    if (paramBannerRatio != null)
    {
      if (BannerRatio.SIXTEENFIVE.ordinal() != paramBannerRatio.ordinal()) {
        break label35;
      }
      a = "16:5";
    }
    for (;;)
    {
      c.e(a);
      return;
      label35:
      if (BannerRatio.THIRTYTWOFIVE.ordinal() == paramBannerRatio.ordinal()) {
        a = "32:5";
      }
    }
  }
  
  public void setDBoxViewListener(DBoxViewListener paramDBoxViewListener)
  {
    n = paramDBoxViewListener;
  }
  
  public void setEndpoint(String paramString)
  {
    b.c(paramString);
  }
  
  public void showLandingPageAd(final String paramString)
  {
    ((Activity)d).runOnUiThread(new Runnable()
    {
      public void run()
      {
        DBoxManager.a(DBoxManager.this, new Dialog(DBoxManager.g(DBoxManager.this), 16973840));
        cn.dbox.ui.b.d localD = new cn.dbox.ui.b.d(DBoxManager.g(DBoxManager.this), paramString, DBoxManager.k(DBoxManager.this));
        localD.a(new d.a()
        {
          public void a()
          {
            if ((DBoxManager.m(DBoxManager.this) != null) && (DBoxManager.m(DBoxManager.this).isShowing())) {
              DBoxManager.m(DBoxManager.this).dismiss();
            }
          }
        });
        DBoxManager.m(DBoxManager.this).setCancelable(false);
        DBoxManager.m(DBoxManager.this).setContentView(localD);
        DBoxManager.m(DBoxManager.this).show();
      }
    });
  }
  
  public static enum BannerRatio
  {
    private BannerRatio() {}
  }
  
  public static abstract interface DBoxViewListener
  {
    public abstract void onDBoxViewClosed();
    
    public abstract void onDBoxViewPresent();
    
    public abstract void onFailReceiveData(String paramString);
    
    public abstract void onLeaveApplication();
    
    public abstract void onSuccessReceiveData(String paramString);
  }
}
