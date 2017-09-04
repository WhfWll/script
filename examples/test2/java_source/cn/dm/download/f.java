package cn.dm.download;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import cn.dm.download.bean.DownloadAppInfo;
import cn.dm.download.listener.DownloadHelperListener;
import cn.dm.download.util.Constants;
import cn.dm.download.util.b;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class f
{
  private static b j = new b(f.class.getSimpleName());
  private ArrayList I;
  private ArrayList J;
  private DownloadBroadcastReceiver K;
  private Context context;
  private cn.dm.download.db.c g;
  private DownloadHelperListener i;
  
  public f(Context paramContext, DownloadHelperListener paramDownloadHelperListener)
  {
    context = paramContext;
    g = new cn.dm.download.db.c(paramContext);
    i = paramDownloadHelperListener;
    K = new DownloadBroadcastReceiver(paramContext.getApplicationContext(), this, paramDownloadHelperListener, g);
    K.a();
  }
  
  private void b(DownloadAppInfo paramDownloadAppInfo)
  {
    b localB = j;
    new StringBuilder("downloadAppInfo id:").append(paramDownloadAppInfo.getAppId());
    if (c.b(Long.valueOf(paramDownloadAppInfo.getAppId())) == null)
    {
      if (paramDownloadAppInfo.getDownloadStatus() == 6)
      {
        localB = j;
        paramDownloadAppInfo.setIsUpdate(1);
      }
      paramDownloadAppInfo.setDownloadStatus(1);
      i.onDownloadWaiting(paramDownloadAppInfo);
      new a(paramDownloadAppInfo, context, i).b();
      return;
    }
    paramDownloadAppInfo = j;
  }
  
  public static void excuteOpen(Context paramContext, DownloadAppInfo paramDownloadAppInfo)
  {
    new Intent();
    paramDownloadAppInfo = paramContext.getPackageManager().getLaunchIntentForPackage(paramDownloadAppInfo.getPkgName());
    if (paramDownloadAppInfo != null)
    {
      paramDownloadAppInfo.addCategory("android.intent.category.LAUNCHER");
      paramContext.startActivity(paramDownloadAppInfo);
    }
  }
  
  public static void excutePause(DownloadAppInfo paramDownloadAppInfo)
  {
    paramDownloadAppInfo = c.b(Long.valueOf(paramDownloadAppInfo.getAppId()));
    if (paramDownloadAppInfo != null)
    {
      paramDownloadAppInfo.c();
      return;
    }
    paramDownloadAppInfo = j;
  }
  
  public static void excuteUninstall(Context paramContext, DownloadAppInfo paramDownloadAppInfo)
  {
    paramContext.startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + paramDownloadAppInfo.getPkgName())));
  }
  
  private static void l() {}
  
  private void m()
  {
    context.unregisterReceiver(K);
  }
  
  public static void pauseAllDownloadThread()
  {
    Object localObject = c.v.values().iterator();
    for (;;)
    {
      if (!((Iterator)localObject).hasNext())
      {
        localObject = j;
        return;
      }
      ((a)((Iterator)localObject).next()).c();
    }
  }
  
  public static void setMaxDownloadThreadNum(int paramInt)
  {
    Constants.MaxDownloadThread = paramInt;
  }
  
  public static void setStorageFileName(String paramString)
  {
    Constants.DefaultStorageFile = paramString;
  }
  
  public final DownloadAppInfo checkAndGetDownloadAppInfo(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject2;
    label63:
    int k;
    label117:
    int m;
    label155:
    boolean bool1;
    try
    {
      localObject1 = cn.dm.download.util.c.a(context, paramDownloadAppInfo);
      if (I == null) {
        break label503;
      }
      localObject2 = I.iterator();
      DownloadAppInfo localDownloadAppInfo;
      do
      {
        if (!((Iterator)localObject2).hasNext())
        {
          if (J == null) {
            J = cn.dm.download.util.c.h(context);
          }
          localObject1 = J.iterator();
          if (((Iterator)localObject1).hasNext()) {
            break;
          }
          return paramDownloadAppInfo;
        }
        localDownloadAppInfo = (DownloadAppInfo)((Iterator)localObject2).next();
      } while (paramDownloadAppInfo.getAppId() != localDownloadAppInfo.getAppId());
      k = localDownloadAppInfo.getDownloadStatus();
      if (k != 0) {
        break label556;
      }
      localObject1 = j;
      return paramDownloadAppInfo;
    }
    catch (Exception localException2)
    {
      Object localObject1;
      boolean bool2;
      localObject2 = j;
      new StringBuilder("checkAndGetDownloadAppInfo::").append(localException2.getMessage());
      return paramDownloadAppInfo;
    }
    if ((k == 2) && (c.b(Long.valueOf(paramDownloadAppInfo.getAppId())) == null))
    {
      localObject2 = j;
      paramDownloadAppInfo.setDownloadStatus(3);
      g.f(paramDownloadAppInfo);
      m = 3;
      bool2 = cn.dm.download.util.c.r(localObject1 + Constants.Unfinished_Sign);
      localObject2 = j;
      new StringBuilder("数据库有记录，应用为下载开始或暂停或等待中：").append(m).append("  ，本地有存文件?").append(bool2);
      k = m;
      bool1 = bool2;
      if (bool2)
      {
        localObject2 = j;
        new StringBuilder("数据库有记录，应用为下载开始或暂停或等待中，本地有存文件大小为").append(cn.dm.download.util.c.q(localObject1 + Constants.Unfinished_Sign));
        paramDownloadAppInfo.setCurrentDownloadSize(cn.dm.download.util.c.q(localObject1 + Constants.Unfinished_Sign));
        bool1 = bool2;
        k = m;
      }
    }
    for (;;)
    {
      label298:
      if ((!bool1) && (cn.dm.download.util.c.s()))
      {
        g.a(paramDownloadAppInfo.getAppId());
        paramDownloadAppInfo.setDownloadStatus(0);
        localObject1 = j;
        return paramDownloadAppInfo;
      }
      label503:
      label556:
      do
      {
        if (k == 4)
        {
          bool1 = cn.dm.download.util.c.r((String)localObject1);
          localObject1 = j;
          new StringBuilder("数据库有记录，下载状态为下载完成，本地有存文件？").append(bool1);
          break label298;
        }
        if (k != 5) {
          break label580;
        }
        localObject1 = context.getPackageManager();
        try
        {
          localObject1 = ((PackageManager)localObject1).getPackageInfo(paramDownloadAppInfo.getPkgName(), 0);
          localObject2 = j;
          new StringBuilder("数据库有记录，应用已经安装，获取本地安装包名为：").append(paramDownloadAppInfo.getPkgName()).append("  ,根据包名获取到的包信息为：").append(localObject1);
          if (localObject1 == null) {
            break label580;
          }
          bool1 = true;
        }
        catch (Exception localException1)
        {
          localObject2 = j;
          new StringBuilder("已安装检查异常::").append(localException1.getMessage());
          break label580;
        }
        paramDownloadAppInfo.setDownloadStatus(k);
        return paramDownloadAppInfo;
        b localB = j;
        break;
        localObject2 = (DownloadAppInfo)localB.next();
        if (!paramDownloadAppInfo.getPkgName().equals(((DownloadAppInfo)localObject2).getPkgName())) {
          break label63;
        }
        paramDownloadAppInfo.setIsThirdInstalled(1);
        paramDownloadAppInfo.setDownloadStatus(5);
        break label63;
        m = k;
        break label155;
        if ((k == 2) || (k == 3) || (k == 1)) {
          break label117;
        }
      } while (k != 8);
      break label117;
      label580:
      bool1 = false;
    }
  }
  
  public final void excuteDelete(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject = c.b(Long.valueOf(paramDownloadAppInfo.getAppId()));
    if ((localObject != null) && (t != 1))
    {
      paramDownloadAppInfo = j;
      ((a)localObject).e();
      return;
    }
    if ((localObject != null) && (t == 1)) {
      c.a(Long.valueOf(paramDownloadAppInfo.getAppId()));
    }
    localObject = j;
    localObject = cn.dm.download.util.c.a(context, paramDownloadAppInfo) + Constants.Unfinished_Sign;
    if (paramDownloadAppInfo.getDownloadStatus() == 4) {
      localObject = cn.dm.download.util.c.a(context, paramDownloadAppInfo);
    }
    cn.dm.download.util.c.s((String)localObject);
    b localB = j;
    new StringBuilder("被删除文件名：").append((String)localObject);
    paramDownloadAppInfo.setDownloadStatus(0);
    paramDownloadAppInfo.setCurrentDownloadSize(0L);
    g.a(paramDownloadAppInfo.getAppId());
    i.onDownloadCancel(paramDownloadAppInfo);
  }
  
  public final void excuteDownload(DownloadAppInfo paramDownloadAppInfo)
  {
    b(paramDownloadAppInfo);
  }
  
  public final void excuteInstall(Context paramContext, DownloadAppInfo paramDownloadAppInfo)
  {
    try
    {
      if (cn.dm.download.util.c.a(paramContext, paramDownloadAppInfo.getPkgName()) > 0)
      {
        localObject = j;
        paramDownloadAppInfo.setIsUpdate(1);
        g.f(paramDownloadAppInfo);
      }
      paramDownloadAppInfo = cn.dm.download.util.c.a(paramContext, paramDownloadAppInfo);
      Object localObject = new Intent("android.intent.action.VIEW");
      ((Intent)localObject).setDataAndType(Uri.fromFile(new File(paramDownloadAppInfo)), "application/vnd.android.package-archive");
      ((Intent)localObject).addFlags(268435456);
      paramContext.startActivity((Intent)localObject);
      return;
    }
    catch (Exception paramContext)
    {
      paramDownloadAppInfo = j;
      new StringBuilder("安装时有异常：").append(paramContext.getMessage());
    }
  }
  
  public final void excuteResume(DownloadAppInfo paramDownloadAppInfo)
  {
    b(paramDownloadAppInfo);
  }
  
  public final void excuteUpdate(DownloadAppInfo paramDownloadAppInfo)
  {
    paramDownloadAppInfo.setDownloadStatus(6);
    b(paramDownloadAppInfo);
  }
  
  public final void finishDownloadTool()
  {
    try
    {
      pauseAllDownloadThread();
      context.unregisterReceiver(K);
      return;
    }
    catch (Exception localException)
    {
      b localB = j;
      localException.getMessage();
    }
  }
  
  public final ArrayList initAllDownloadAppInfoList()
  {
    I = g.q();
    b localB = j;
    new StringBuilder("initAllDownloadAppInfoList，数据库中存的应用数量：").append(I.size());
    return I;
  }
}
