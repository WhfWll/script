package cn.domob.android.ads.b;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.webkit.WebSettings;
import cn.domob.android.ads.a;
import cn.domob.android.ads.a.d.b;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;

public class m
  extends a
{
  public static final int e = 100;
  public static final int f = 101;
  public static final int g = 102;
  private static cn.domob.android.i.f h = new cn.domob.android.i.f(m.class.getSimpleName());
  a d;
  private h i;
  private final k j;
  private c k;
  private d.b l;
  
  public m(Context paramContext)
  {
    this(paramContext, b.a, d.c, k.a);
  }
  
  m(Context paramContext, b paramB, d paramD, k paramK)
  {
    super(paramContext, 0);
    j = paramK;
    a(paramB, paramD);
  }
  
  private void a(b paramB, d paramD)
  {
    setScrollContainer(false);
    setBackgroundColor(0);
    setVerticalScrollBarEnabled(false);
    setHorizontalScrollBarEnabled(false);
    setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        switch (paramAnonymousMotionEvent.getAction())
        {
        }
        for (;;)
        {
          return false;
          if (!paramAnonymousView.hasFocus()) {
            paramAnonymousView.requestFocus();
          }
        }
      }
    });
    getSettings().setJavaScriptEnabled(true);
    i = new h(this, paramB, paramD);
    k = new c();
  }
  
  public String a(String paramString, String[] paramArrayOfString)
  {
    return super.a(paramString, new String[] { "domob.js", "mraid.js" });
  }
  
  public void a(d.b paramB)
  {
    l = paramB;
  }
  
  protected void a(j paramJ)
  {
    paramJ = "{" + paramJ.toString() + "}";
    a("window.mraidbridge.fireChangeEvent(" + paramJ + ");");
    h.b("Fire change: " + paramJ);
  }
  
  public void a(a paramA)
  {
    d = paramA;
  }
  
  protected void a(e paramE)
  {
    c.a(k, paramE);
  }
  
  protected void a(f paramF)
  {
    c.a(k, paramF);
  }
  
  protected void a(g paramG)
  {
    c.a(k, paramG);
  }
  
  protected void a(h paramH)
  {
    c.a(k, paramH);
  }
  
  protected void a(i paramI)
  {
    c.a(k, paramI);
  }
  
  protected void a(j paramJ)
  {
    c.a(k, paramJ);
  }
  
  protected void a(ArrayList<j> paramArrayList)
  {
    paramArrayList = paramArrayList.toString();
    if (paramArrayList.length() < 2) {
      return;
    }
    paramArrayList = "{" + paramArrayList.substring(1, paramArrayList.length() - 1) + "}";
    a("window.mraidbridge.fireChangeEvent(" + paramArrayList + ");");
    h.b("Fire changes: " + paramArrayList);
  }
  
  public boolean a(URI paramURI)
  {
    String str = paramURI.getHost();
    h.a("Command type is:" + str);
    Object localObject = URLEncodedUtils.parse(paramURI, "UTF-8");
    paramURI = new HashMap();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      NameValuePair localNameValuePair = (NameValuePair)((Iterator)localObject).next();
      paramURI.put(localNameValuePair.getName(), localNameValuePair.getValue());
    }
    paramURI = f.a(str, paramURI, this);
    if (paramURI == null)
    {
      b(str);
      return false;
    }
    paramURI.a();
    b(str);
    return true;
  }
  
  protected void b(String paramString)
  {
    a("window.mraidbridge.nativeCallComplete('" + paramString + "');");
  }
  
  protected void b(String paramString1, String paramString2)
  {
    a("window.mraidbridge.fireErrorEvent('" + paramString1 + "', '" + paramString2 + "');");
  }
  
  protected h c()
  {
    return i;
  }
  
  protected g d()
  {
    return c.a(k);
  }
  
  public void destroy()
  {
    i.a();
    super.destroy();
  }
  
  protected f e()
  {
    return c.b(k);
  }
  
  protected j f()
  {
    return c.c(k);
  }
  
  protected h g()
  {
    return c.d(k);
  }
  
  protected e h()
  {
    return c.e(k);
  }
  
  protected i i()
  {
    return c.f(k);
  }
  
  protected a j()
  {
    return d;
  }
  
  protected d.b k()
  {
    return l;
  }
  
  protected void l()
  {
    i.b();
    a(i.a(j));
    m();
    if (f() != null) {
      f().a(this);
    }
  }
  
  protected void m()
  {
    a("window.mraidbridge.fireReadyEvent();");
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
  
  static enum b
  {
    private b() {}
  }
  
  static class c
  {
    private m.g a;
    private m.f b;
    private m.j c;
    private m.h d;
    private m.e e;
    private m.i f;
    
    c() {}
  }
  
  static enum d
  {
    private d() {}
  }
  
  public static abstract interface e
  {
    public abstract void a(m paramM, boolean paramBoolean);
  }
  
  public static abstract interface f
  {
    public abstract void a(m paramM, m.l paramL);
  }
  
  public static abstract interface g
  {
    public abstract void a(m paramM);
  }
  
  public static abstract interface h
  {
    public abstract void a(m paramM);
  }
  
  public static abstract interface i
  {
    public abstract void a(m paramM);
  }
  
  public static abstract interface j
  {
    public abstract void a(m paramM);
  }
  
  static enum k
  {
    private k() {}
  }
  
  public static enum l
  {
    private l() {}
  }
}
