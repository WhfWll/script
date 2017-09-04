package cn.dbox.core.d;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import cn.dbox.core.bean.a;
import cn.dbox.core.h.d;
import cn.dbox.core.h.f;
import java.io.UnsupportedEncodingException;

public class e
{
  public static final int b = 1;
  private static final String n = "url";
  private static final String o = "auto_run";
  private static final String p = "name";
  private static final String q = "pkg";
  private static final String r = "vc";
  private static final String s = "vn";
  d a = new d(e.class.getSimpleName());
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
  private a m;
  
  public e(Context paramContext, Uri paramUri, a paramA, a paramA1)
  {
    c = paramContext;
    m = paramA;
    l = paramA1;
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
        Toast.makeText(e.c(e.this), "开始下载 。。。", 0).show();
        if (e.a(e.this) != null) {
          e.a(e.this).i(e.b(e.this));
        }
      }
      
      public void a(int paramAnonymousInt, String paramAnonymousString)
      {
        if (e.a(e.this) != null)
        {
          if (paramAnonymousInt == 512) {
            e.a(e.this).k(e.b(e.this));
          }
        }
        else {
          return;
        }
        if (paramAnonymousInt == 513)
        {
          e.a(e.this).l(e.b(e.this));
          return;
        }
        e.a(e.this).h(e.b(e.this));
      }
      
      public void a(String paramAnonymousString)
      {
        if (e.a(e.this) != null) {
          e.a(e.this).g(e.b(e.this));
        }
        if (e.a(e.this) != null) {
          e.a(e.this).m(e.b(e.this));
        }
      }
      
      public void b()
      {
        if (e.a(e.this) != null) {
          e.a(e.this).j(e.b(e.this));
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
            if (e.a(e.this) != null) {
              e.a(e.this).m(e.b(e.this));
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
    public abstract void g(a paramA);
    
    public abstract void h(a paramA);
    
    public abstract void i(a paramA);
    
    public abstract void j(a paramA);
    
    public abstract void k(a paramA);
    
    public abstract void l(a paramA);
    
    public abstract void m(a paramA);
  }
}
