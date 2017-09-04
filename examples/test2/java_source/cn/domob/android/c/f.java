package cn.domob.android.c;

import android.content.Context;
import java.io.File;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

class f
  extends Thread
{
  private static cn.domob.android.i.f d = new cn.domob.android.i.f(f.class.getSimpleName());
  String a;
  String b;
  String c;
  private int e = 0;
  private int f;
  private int g;
  private int h = 1;
  private int i = 0;
  private c j = null;
  private boolean k;
  private long l = 0L;
  private a m = new a();
  private Context n = null;
  
  public f(String paramString1, String paramString2, long paramLong, c paramC, Context paramContext)
  {
    a = paramString1;
    c = paramString2;
    l = paramLong;
    j = paramC;
    n = paramContext;
    d.b(f.class.getSimpleName(), "build DownloadTask url=" + paramString1 + ",fileName=" + paramString2);
  }
  
  protected boolean a()
  {
    return k;
  }
  
  protected void b()
  {
    m.a = true;
  }
  
  public void run()
  {
    g[] arrayOfG = new g[h];
    URL localURL;
    try
    {
      localURL = new URL(a);
      Object localObject = d.b(n);
      if (localObject != null) {
        d.a(this, "Use Proxy");
      }
      for (localObject = (HttpURLConnection)localURL.openConnection((Proxy)localObject);; localObject = (HttpURLConnection)localURL.openConnection())
      {
        ((HttpURLConnection)localObject).setRequestMethod("HEAD");
        i1 = ((HttpURLConnection)localObject).getResponseCode();
        if ((i1 < 200) || (i1 >= 300)) {
          break;
        }
        e = ((HttpURLConnection)localObject).getContentLength();
        d.a(this, "Total file size: " + e);
        if (e > 0) {
          break label186;
        }
        j.a("下载连接过程中出现错误");
        return;
        d.a(this, "Proxy is null");
      }
      j.a("下载连接过程中出现错误");
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
      j.a("下载过程中出现错误");
      return;
    }
    label186:
    d.b(f.class.getSimpleName(), "fileSize:" + e + " downloadSizeMore:" + g);
    f = (e / h);
    g = (e % h);
    File localFile = new File(c);
    int i1 = 0;
    while (i1 < h)
    {
      if (i1 != h - 1) {}
      for (g localG = new g(localURL, localFile, f * i1 + l, (i1 + 1) * f - 1, m, j, n); localG.a(); localG = new g(localURL, localFile, f * i1 + l, (i1 + 1) * f - 1 + g, m, j, n))
      {
        j.a(100);
        return;
      }
      localG.setName("Thread" + i1);
      localG.start();
      arrayOfG[i1] = localG;
      i1 += 1;
    }
    k = false;
    if ((!k) && (!m.a))
    {
      i = g;
      k = true;
      i1 = 0;
    }
    for (;;)
    {
      if (i1 < arrayOfG.length)
      {
        i = ((int)(i + arrayOfG[i1].b()));
        if (!arrayOfG[i1].a()) {
          k = false;
        }
      }
      else
      {
        if ((j != null) && (!m.a))
        {
          i1 = Double.valueOf(i * 1.0D / e * 100.0D).intValue();
          j.a(i1);
        }
        sleep(1000L);
        break;
        return;
      }
      i1 += 1;
    }
  }
  
  protected class a
  {
    protected boolean a = false;
    
    protected a() {}
  }
}
