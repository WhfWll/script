package cn.domob.wall.core.download;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.h.f;
import java.io.UnsupportedEncodingException;

public class d
{
  public static final int b = 1;
  private static final String n = "url";
  private static final String o = "auto_run";
  private static final String p = "name";
  private static final String q = "pkg";
  private static final String r = "vc";
  private static final String s = "vn";
  cn.domob.wall.core.h.d a = new cn.domob.wall.core.h.d(d.class.getSimpleName());
  private Context c;
  private Uri d;
  private String e;
  private boolean f = false;
  private String g;
  private String h;
  private int i;
  private String j;
  private String k;
  private a l;
  private AdInfo m;
  
  public d(Context paramContext, Uri paramUri, AdInfo paramAdInfo, a paramA)
  {
    c = paramContext;
    m = paramAdInfo;
    l = paramA;
    d = paramUri;
  }
  
  private String a(Uri paramUri, String paramString)
    throws UnsupportedEncodingException
  {
    paramUri = paramUri.getQueryParameter(paramString);
    if (paramUri != null) {
      return paramUri;
    }
    return null;
  }
  
  private void h()
  {
    try
    {
      e = a(d, "url");
      boolean bool;
      if (a(d, "auto_run") == null)
      {
        bool = false;
        f = bool;
        g = a(d, "name");
        h = a(d, "pkg");
        if (a(d, "vc") != null) {
          break label117;
        }
      }
      label117:
      for (int i1 = 1;; i1 = Integer.valueOf(a(d, "vc")).intValue())
      {
        i = i1;
        j = a(d, "vn");
        return;
        bool = Boolean.valueOf(a(d, "auto_run")).booleanValue();
        break;
      }
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      a.e("Error happened in getting download info");
    }
  }
  
  private void i()
  {
    a.b("Start Download url:" + e);
    b.a(e, g, h, c, new c()
    {
      public void a()
      {
        Toast.makeText(d.c(d.this), "开始下载 。。。", 0).show();
        if (d.a(d.this) != null) {
          d.a(d.this).o(d.b(d.this));
        }
      }
      
      public void a(int paramAnonymousInt, String paramAnonymousString)
      {
        if (d.a(d.this) != null)
        {
          if (paramAnonymousInt == 512) {
            d.a(d.this).q(d.b(d.this));
          }
        }
        else {
          return;
        }
        if (paramAnonymousInt == 513)
        {
          d.a(d.this).r(d.b(d.this));
          return;
        }
        d.a(d.this).n(d.b(d.this));
      }
      
      public void a(String paramAnonymousString)
      {
        if (d.a(d.this) != null) {
          d.a(d.this).m(d.b(d.this));
        }
        if (d.a(d.this) != null) {
          d.a(d.this).s(d.b(d.this));
        }
      }
      
      public void b()
      {
        if (d.a(d.this) != null) {
          d.a(d.this).p(d.b(d.this));
        }
      }
    }, k, true);
  }
  
  public String a()
  {
    return g;
  }
  
  public void a(final Context paramContext)
  {
    if (d != null) {
      h();
    }
    if (f.g(g)) {
      g = "应用";
    }
    final Intent localIntent = b.a(paramContext, e, g);
    if (localIntent != null)
    {
      if (paramContext != null) {
        new AlertDialog.Builder(paramContext).setTitle("安装").setMessage(g + "已经下载是否现在安装?").setNegativeButton("否", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
        }).setPositiveButton("是", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            if (d.a(d.this) != null) {
              d.a(d.this).s(d.b(d.this));
            }
            paramContext.startActivity(localIntent);
          }
        }).show();
      }
      return;
    }
    i();
  }
  
  public String b()
  {
    return h;
  }
  
  public int c()
  {
    return i;
  }
  
  public String d()
  {
    return j;
  }
  
  public boolean e()
  {
    return f;
  }
  
  public String f()
  {
    return e;
  }
  
  public Uri g()
  {
    return d;
  }
  
  public static abstract interface a
  {
    public abstract void m(AdInfo paramAdInfo);
    
    public abstract void n(AdInfo paramAdInfo);
    
    public abstract void o(AdInfo paramAdInfo);
    
    public abstract void p(AdInfo paramAdInfo);
    
    public abstract void q(AdInfo paramAdInfo);
    
    public abstract void r(AdInfo paramAdInfo);
    
    public abstract void s(AdInfo paramAdInfo);
  }
}
