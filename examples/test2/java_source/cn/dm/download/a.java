package cn.dm.download;

import android.content.Context;
import cn.dm.download.bean.DownloadAppInfo;
import cn.dm.download.listener.DownloadHelperListener;
import cn.dm.download.util.Constants;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class a
  implements cn.dm.download.listener.a
{
  private static cn.dm.download.util.b j = new cn.dm.download.util.b(a.class.getSimpleName());
  private cn.dm.download.db.c g;
  private DownloadHelperListener i;
  private d k;
  private String l;
  private String m;
  private Context mContext;
  private cn.dm.download.listener.a n;
  private DownloadAppInfo o;
  private long p = 0L;
  private String q;
  private e r;
  private long s = 0L;
  public int t;
  
  public a(DownloadAppInfo paramDownloadAppInfo, Context paramContext, DownloadHelperListener paramDownloadHelperListener)
  {
    mContext = paramContext;
    k = new d(paramDownloadAppInfo, this);
    n = this;
    i = paramDownloadHelperListener;
    o = paramDownloadAppInfo;
    g = new cn.dm.download.db.c(mContext);
    q = paramDownloadAppInfo.getDownloadUrl();
  }
  
  private void a(String paramString)
  {
    try
    {
      paramString = new File(paramString);
      localB = j;
      new StringBuilder("准备启动文件下载，初始大小和文件大小为：").append(s).append("  ,").append(p - 1L);
      r = new e(mContext, paramString, s, p - 1L, n, o);
      r.start();
      return;
    }
    catch (Exception paramString)
    {
      cn.dm.download.util.b localB = j;
      new StringBuilder("下载过程中出现错误:").append(paramString.getMessage());
    }
  }
  
  private boolean a(boolean paramBoolean)
  {
    boolean bool = true;
    if (c.k() >= Constants.MaxDownloadThread)
    {
      cn.dm.download.util.b localB = j;
      new StringBuilder("线程池中同时下载线程为：").append(c.k()).append(",超出最大下载线程，终止下载");
      o.setDownloadStatus(1);
      t = 1;
    }
    for (;;)
    {
      c.a(Long.valueOf(o.getAppId()), this);
      if (!paramBoolean) {
        break;
      }
      g.f(o);
      return bool;
      o.setDownloadStatus(2);
      t = 2;
      bool = false;
    }
    g.g(o);
    return bool;
  }
  
  private void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      g.f(o);
      return;
    }
    g.g(o);
  }
  
  private void d()
  {
    g();
  }
  
  private void f()
  {
    Object localObject2 = new File(m);
    Object localObject1 = new File(m + Constants.Unfinished_Sign);
    if (((File)localObject2).exists())
    {
      localObject1 = j;
      ((File)localObject2).delete();
      g.a(o.getAppId());
      s = 0L;
    }
    while (!((File)localObject1).exists()) {
      return;
    }
    if (Long.valueOf(o.getCurrentDownloadSize()).longValue() <= 0L)
    {
      localObject2 = j;
      ((File)localObject1).delete();
      s = 0L;
      return;
    }
    localObject2 = j;
    s = ((File)localObject1).length();
  }
  
  private void g()
  {
    if (r != null)
    {
      r.G = false;
      r.H = false;
    }
  }
  
  private static void h()
  {
    Object localObject = c.v.values().iterator();
    a localA;
    do
    {
      if (!((Iterator)localObject).hasNext()) {
        return;
      }
      localA = (a)((Iterator)localObject).next();
    } while (t != 1);
    localObject = j;
    localA.b();
  }
  
  private void init()
  {
    p = cn.dm.download.util.c.a(q, mContext);
    o.setAppSize(p);
    l = cn.dm.download.util.c.g(mContext);
    m = cn.dm.download.util.c.a(mContext, o);
  }
  
  public final void a(DownloadAppInfo paramDownloadAppInfo)
  {
    cn.dm.download.util.b localB1 = j;
    try
    {
      c.a(Long.valueOf(paramDownloadAppInfo.getAppId()));
      paramDownloadAppInfo.setDownloadStatus(3);
      g.f(paramDownloadAppInfo);
      return;
    }
    catch (Exception localException)
    {
      cn.dm.download.util.b localB2 = j;
      localException.getMessage();
      return;
    }
    finally
    {
      i.onDownloadPause(paramDownloadAppInfo);
      h();
    }
  }
  
  public final void b()
  {
    new Thread(new b(this)).start();
  }
  
  public final void b(String paramString)
  {
    cn.dm.download.util.b localB = j;
    new StringBuilder("onDownloadSuccess:").append(paramString);
    try
    {
      c.a(Long.valueOf(o.getAppId()));
      o.setDownloadStatus(4);
      g.f(o);
      return;
    }
    catch (Exception paramString)
    {
      localB = j;
      paramString.getMessage();
      return;
    }
    finally
    {
      i.onDownloadSuccess(o);
      h();
    }
  }
  
  public final void c()
  {
    g();
    if (r != null) {
      r.G = true;
    }
  }
  
  public final void c(String paramString)
  {
    cn.dm.download.util.b localB = j;
    new StringBuilder("onDownloadCanceled:").append(paramString);
    try
    {
      c.a(Long.valueOf(o.getAppId()));
      cn.dm.download.util.c.s(paramString);
      localB = j;
      new StringBuilder("被删除文件名：").append(paramString);
      o.setDownloadStatus(0);
      o.setCurrentDownloadSize(0L);
      g.a(o.getAppId());
      return;
    }
    catch (Exception paramString)
    {
      localB = j;
      paramString.getMessage();
      return;
    }
    finally
    {
      i.onDownloadCancel(o);
      h();
    }
  }
  
  public final void e()
  {
    g();
    if (r != null) {
      r.H = true;
    }
  }
  
  public final boolean i()
  {
    cn.dm.download.util.b localB1 = j;
    try
    {
      if (a(false)) {
        return false;
      }
      i.onDownloadStart(o);
      return true;
    }
    catch (Exception localException)
    {
      cn.dm.download.util.b localB2 = j;
      localException.getMessage();
    }
    return false;
  }
  
  public final boolean j()
  {
    cn.dm.download.util.b localB1 = j;
    try
    {
      if (a(true)) {
        return false;
      }
      i.onDownloadResume(o);
      return true;
    }
    catch (Exception localException)
    {
      cn.dm.download.util.b localB2 = j;
      localException.getMessage();
    }
    return false;
  }
  
  public final void onDownloadFailed(DownloadAppInfo paramDownloadAppInfo)
  {
    try
    {
      c.a(Long.valueOf(paramDownloadAppInfo.getAppId()));
      paramDownloadAppInfo.setDownloadStatus(8);
      g.f(paramDownloadAppInfo);
      return;
    }
    catch (Exception localException)
    {
      cn.dm.download.util.b localB = j;
      new StringBuilder("下载失败：").append(localException.getMessage());
      return;
    }
    finally
    {
      i.onDownloadFailed(paramDownloadAppInfo);
      h();
    }
  }
  
  public final void onProgressChange(DownloadAppInfo paramDownloadAppInfo)
  {
    i.onProgressChange(paramDownloadAppInfo);
  }
}
