package cn.domob.android.ads;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import cn.domob.android.c.a;
import cn.domob.android.c.b;
import cn.domob.android.i.f;
import cn.domob.android.i.h;
import java.io.UnsupportedEncodingException;

public class q
{
  public static final String b = "url";
  public static final String c = "auto_run";
  public static final String d = "name";
  public static final String e = "pkg";
  public static final String f = "vc";
  public static final String g = "vn";
  public static final int h = 1;
  public static final String i = "alreadyDownload:";
  f a = new f(q.class.getSimpleName());
  private Context j;
  private Uri k;
  private j l;
  private String m;
  private boolean n = false;
  private String o;
  private String p;
  private int q;
  private String r;
  private String s;
  private a t;
  
  public q(Context paramContext, Uri paramUri, j paramJ, a paramA)
  {
    j = paramContext;
    k = paramUri;
    l = paramJ;
    t = paramA;
  }
  
  q(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt, String paramString4, C paramC)
  {
    this(paramContext, paramString1, paramString2, paramString3, paramInt, paramString4, null, paramC);
  }
  
  q(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt, String paramString4, String paramString5, C paramC)
  {
    j = paramContext;
    m = paramString1;
    o = paramString2;
    p = paramString3;
    q = paramInt;
    r = paramString4;
    s = paramString5;
    t = paramC;
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
  
  public static void a(String paramString1, String paramString2, int paramInt, Context paramContext)
  {
    a.a(paramString1, paramString2, paramContext, new b()
    {
      public void a() {}
      
      public void a(int paramAnonymousInt, String paramAnonymousString) {}
      
      public void a(String paramAnonymousString) {}
      
      public void a(String paramAnonymousString, long paramAnonymousLong) {}
      
      public void b() {}
      
      public void b(String paramAnonymousString, long paramAnonymousLong) {}
    }, paramString2, paramInt);
  }
  
  private void j()
  {
    try
    {
      m = a(k, "url");
      boolean bool;
      if (a(k, "auto_run") == null)
      {
        bool = false;
        n = bool;
        o = a(k, "name");
        p = a(k, "pkg");
        if (a(k, "vc") != null) {
          break label117;
        }
      }
      label117:
      for (int i1 = 1;; i1 = Integer.valueOf(a(k, "vc")).intValue())
      {
        q = i1;
        r = a(k, "vn");
        return;
        bool = Boolean.valueOf(a(k, "auto_run")).booleanValue();
        break;
      }
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      a.e("Error happened in getting download info");
    }
  }
  
  private void k()
  {
    a.b("Start Download url:" + m);
    a.a(m, o, p, j, new b()
    {
      public void a()
      {
        Toast.makeText(q.b(q.this), "开始下载 。。。", 0).show();
        if (q.a(q.this) != null) {
          q.a(q.this).e(q.this);
        }
      }
      
      public void a(int paramAnonymousInt, String paramAnonymousString)
      {
        if (q.a(q.this) != null)
        {
          if (paramAnonymousInt == 512) {
            q.a(q.this).g(q.this);
          }
        }
        else {
          return;
        }
        if (paramAnonymousInt == 513)
        {
          q.a(q.this).h(q.this);
          return;
        }
        q.a(q.this).d(q.this);
      }
      
      public void a(String paramAnonymousString)
      {
        if (q.a(q.this) != null) {
          q.a(q.this).i(q.this);
        }
      }
      
      public void a(String paramAnonymousString, long paramAnonymousLong)
      {
        if (q.a(q.this) != null) {
          q.a(q.this).c(q.this);
        }
        if (q.a(q.this) != null) {
          q.a(q.this).j(q.this);
        }
      }
      
      public void b()
      {
        if (q.a(q.this) != null) {
          q.a(q.this).f(q.this);
        }
      }
      
      public void b(String paramAnonymousString, long paramAnonymousLong) {}
    }, s, true);
  }
  
  public j a()
  {
    return l;
  }
  
  public String b()
  {
    return o;
  }
  
  public String c()
  {
    return p;
  }
  
  public int d()
  {
    return q;
  }
  
  public String e()
  {
    return r;
  }
  
  public boolean f()
  {
    return n;
  }
  
  public String g()
  {
    return m;
  }
  
  public Uri h()
  {
    return k;
  }
  
  public void i()
  {
    if (k != null) {
      j();
    }
    final Intent localIntent;
    if (m.startsWith("alreadyDownload:"))
    {
      localIntent = a.a(m.substring("alreadyDownload:".length()));
      if (localIntent != null)
      {
        localIntent.addFlags(268435456);
        if (t != null) {
          t.j(this);
        }
        j.startActivity(localIntent);
      }
    }
    do
    {
      return;
      if (h.e(o)) {
        o = "应用";
      }
      localIntent = a.a(j, m, o);
      if (localIntent == null) {
        break;
      }
    } while (j == null);
    new AlertDialog.Builder(j).setTitle("安装").setMessage(o + "已经下载是否现在安装?").setNegativeButton("否", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
    }).setPositiveButton("是", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (q.a(q.this) != null) {
          q.a(q.this).j(q.this);
        }
        q.b(q.this).startActivity(localIntent);
      }
    }).show();
    return;
    k();
  }
  
  public static abstract interface a
  {
    public abstract void c(q paramQ);
    
    public abstract void d(q paramQ);
    
    public abstract void e(q paramQ);
    
    public abstract void f(q paramQ);
    
    public abstract void g(q paramQ);
    
    public abstract void h(q paramQ);
    
    public abstract void i(q paramQ);
    
    public abstract void j(q paramQ);
  }
}
