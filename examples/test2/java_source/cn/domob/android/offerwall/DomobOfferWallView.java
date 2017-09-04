package cn.domob.android.offerwall;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.net.URI;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;

public class DomobOfferWallView
  extends RelativeLayout
{
  private static m a = new m(DomobOfferWallView.class.getSimpleName());
  private String b;
  private a c;
  private h d;
  private DomobOfferWallListener e;
  private boolean f = false;
  private boolean g = false;
  
  public DomobOfferWallView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DomobOfferWallView(Context paramContext, String paramString)
  {
    super(paramContext);
    a.b("New instance of DomobOfferWallView.");
    setBackgroundColor(0);
    b = paramString;
    c = new a(paramContext, 0);
    c();
    c.loadUrl("file:///android_asset/index.html");
    addView(c, new RelativeLayout.LayoutParams(-1, -1));
    d = new h(this);
    Log.i("DomobSDK", "Current SDK version is " + l.a());
    Log.i("DomobSDK", "Publisher ID is set as " + b);
    Log.i("DomobSDK", "Application Package Name is " + f.a(paramContext));
    DomobOfferWallSetting.a(b);
  }
  
  private void b(final String paramString)
  {
    ((Activity)getContext()).runOnUiThread(new Runnable()
    {
      public void run()
      {
        DomobOfferWallView.b(DomobOfferWallView.this).a(String.format("domob.failed(%s)", new Object[] { paramString }));
        DomobOfferWallView.b(DomobOfferWallView.this).invalidate();
        if ("404".equals(paramString)) {
          if (DomobOfferWallView.c(DomobOfferWallView.this) != null) {
            DomobOfferWallView.c(DomobOfferWallView.this).onOfferWallLoadFinished(DomobOfferWallView.this);
          }
        }
        while (DomobOfferWallView.c(DomobOfferWallView.this) == null) {
          return;
        }
        DomobOfferWallView.c(DomobOfferWallView.this).onOfferWallLoadFailed(DomobOfferWallView.this);
      }
    });
  }
  
  private void c()
  {
    c.a(new a.a()
    {
      public void a(a paramAnonymousA, String paramAnonymousString)
      {
        DomobOfferWallView.b().b("Intercepted URL: " + paramAnonymousString);
        if (!l.e(paramAnonymousString))
        {
          paramAnonymousA = URI.create(paramAnonymousString);
          if ("domob".equals(paramAnonymousA.getScheme()))
          {
            if (!"click".equals(paramAnonymousA.getHost())) {
              break label173;
            }
            paramAnonymousA = URLEncodedUtils.parse(paramAnonymousA, "UTF-8");
            if ((paramAnonymousA == null) || (paramAnonymousA.get(0) == null) || (!"id".equals(((NameValuePair)paramAnonymousA.get(0)).getName()))) {}
          }
        }
        label173:
        do
        {
          int i;
          try
          {
            i = Integer.valueOf(((NameValuePair)paramAnonymousA.get(0)).getValue()).intValue();
            DomobOfferWallView.b().b("Item was clicked with app id: " + i);
            DomobOfferWallView.a(DomobOfferWallView.this).b(i);
            return;
          }
          catch (Exception paramAnonymousA)
          {
            DomobOfferWallView.b().a(paramAnonymousA);
            return;
          }
          if ("download".equals(paramAnonymousA.getHost()))
          {
            paramAnonymousA = URLEncodedUtils.parse(paramAnonymousA, "UTF-8");
            if ((paramAnonymousA != null) && (paramAnonymousA.get(0) != null) && ("id".equals(((NameValuePair)paramAnonymousA.get(0)).getName()))) {
              try
              {
                i = Integer.valueOf(((NameValuePair)paramAnonymousA.get(0)).getValue()).intValue();
                DomobOfferWallView.b().b(String.format("Item with ID = %d is about to be downloaded.", new Object[] { Integer.valueOf(i) }));
                DomobOfferWallView.a(DomobOfferWallView.this).a(i);
                return;
              }
              catch (Exception paramAnonymousA)
              {
                DomobOfferWallView.b().a(paramAnonymousA);
                return;
              }
            }
            DomobOfferWallView.b().e("Cannot search download info without id.");
            return;
          }
        } while (!"refresh".equals(paramAnonymousA.getHost()));
        DomobOfferWallView.b().b("Called refresh from web page. Load offer wall again.");
        loadOfferWall();
      }
    });
  }
  
  private void d()
  {
    boolean bool1 = true;
    m localM = a;
    boolean bool2 = g;
    boolean bool3 = f;
    if (getVisibility() == 0) {}
    for (;;)
    {
      localM.b(String.format("In tryReportShowList: mIsViewOnWindow=%s, mViewHasData=%s, is visible=%s", new Object[] { String.valueOf(bool2), String.valueOf(bool3), String.valueOf(bool1) }));
      if ((g) && (f) && (getVisibility() == 0)) {
        d.b();
      }
      return;
      bool1 = false;
    }
  }
  
  private void e()
  {
    if ((!g) && (f)) {
      d.c();
    }
  }
  
  protected void a()
  {
    b("");
  }
  
  protected void a(final String paramString)
  {
    ((Activity)getContext()).runOnUiThread(new Runnable()
    {
      public void run()
      {
        DomobOfferWallView.b(DomobOfferWallView.this).a(String.format("domob.setData(%s)", new Object[] { paramString }));
        DomobOfferWallView.b(DomobOfferWallView.this).invalidate();
        if (DomobOfferWallView.c(DomobOfferWallView.this) != null) {
          DomobOfferWallView.c(DomobOfferWallView.this).onOfferWallLoadFinished(DomobOfferWallView.this);
        }
      }
    });
    f = true;
    d();
  }
  
  public void loadOfferWall()
  {
    a.b("Start to load Domob offer wall.");
    f = false;
    if (f.a(4, false)) {
      d.a();
    }
    for (;;)
    {
      if (e != null) {
        e.onOfferWallLoadStart(this);
      }
      return;
      new Handler().postDelayed(new Runnable()
      {
        public void run()
        {
          DomobOfferWallView.a(DomobOfferWallView.this, "404");
        }
      }, 1000L);
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    a.b("Offer Wall View is attached to window.");
    invalidate();
    g = true;
    d();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    a.b("Offer Wall View is detached from window.");
    g = false;
    e();
  }
  
  public void setOfferWallListener(DomobOfferWallListener paramDomobOfferWallListener)
  {
    e = paramDomobOfferWallListener;
  }
}
