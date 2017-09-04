package cn.dm.download;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import cn.dm.download.bean.DownloadAppInfo;
import cn.dm.download.listener.DownloadHelperListener;
import cn.dm.download.util.b;
import java.util.ArrayList;
import java.util.Iterator;

public class DownloadBroadcastReceiver
  extends BroadcastReceiver
{
  private static b f = new b(DownloadBroadcastReceiver.class.getSimpleName());
  private Context context;
  private f d;
  private cn.dm.download.db.c g;
  private ArrayList h;
  private DownloadHelperListener i;
  
  public DownloadBroadcastReceiver() {}
  
  public DownloadBroadcastReceiver(Context paramContext, f paramF, DownloadHelperListener paramDownloadHelperListener, cn.dm.download.db.c paramC)
  {
    context = paramContext;
    i = paramDownloadHelperListener;
    d = paramF;
    g = paramC;
    i = paramDownloadHelperListener;
  }
  
  public final void a()
  {
    try
    {
      Object localObject = new IntentFilter();
      ((IntentFilter)localObject).addAction("android.intent.action.PACKAGE_ADDED");
      ((IntentFilter)localObject).addAction("android.intent.action.PACKAGE_REMOVED");
      ((IntentFilter)localObject).addAction("android.intent.action.PACKAGE_REPLACED");
      ((IntentFilter)localObject).addDataScheme("package");
      context.registerReceiver(this, (IntentFilter)localObject);
      localObject = f;
      return;
    }
    catch (Exception localException)
    {
      b localB = f;
      localException.getMessage();
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Object localObject1 = DownLoadManager.getInstance(paramContext);
    i = ((DownloadHelperListener)localObject1);
    d = ((DownLoadManager)localObject1).getInnerDownloadManager();
    g = new cn.dm.download.db.c(paramContext);
    localObject1 = paramIntent.getAction();
    Object localObject2 = f;
    try
    {
      h = d.initAllDownloadAppInfoList();
      paramIntent = paramIntent.getDataString();
      if ("android.intent.action.PACKAGE_ADDED".equals(localObject1))
      {
        paramContext = f;
        new StringBuilder("检测到安装完成，安装包名：").append(paramIntent);
        localObject1 = h.iterator();
        do
        {
          if (!((Iterator)localObject1).hasNext()) {
            return;
          }
          paramContext = (DownloadAppInfo)((Iterator)localObject1).next();
          localObject2 = f;
          new StringBuilder("数据库包名：").append(paramContext.getPkgName());
        } while (!("package:" + paramContext.getPkgName()).equals(paramIntent));
        paramIntent = f;
        paramContext.setDownloadStatus(5);
        g.f(paramContext);
        i.onInstallSuccess(paramContext);
        return;
      }
    }
    catch (Exception paramContext)
    {
      paramIntent = f;
      paramContext.getMessage();
      return;
    }
    if ("android.intent.action.PACKAGE_REMOVED".equals(localObject1))
    {
      localObject1 = f;
      new StringBuilder("检测到包被卸载，包名：").append(paramIntent);
      localObject2 = h.iterator();
      do
      {
        if (!((Iterator)localObject2).hasNext())
        {
          paramContext = new DownloadAppInfo();
          paramContext.setPkgName(paramIntent.substring(8));
          paramContext.setDownloadStatus(0);
          i.onUninstallSuccess(paramContext);
          paramContext = f;
          return;
        }
        localObject1 = (DownloadAppInfo)((Iterator)localObject2).next();
      } while (!("package:" + ((DownloadAppInfo)localObject1).getPkgName()).equals(paramIntent));
      paramIntent = f;
      new StringBuilder("已卸载包名在数据库中存在，更新数据库！包名：").append(((DownloadAppInfo)localObject1).getPkgName());
      if (((DownloadAppInfo)localObject1).getIsUpdate() == 1)
      {
        paramContext = f;
        return;
      }
      ((DownloadAppInfo)localObject1).setDownloadStatus(0);
      g.a(((DownloadAppInfo)localObject1).getAppId());
      cn.dm.download.util.c.s(cn.dm.download.util.c.a(paramContext, (DownloadAppInfo)localObject1));
      i.onUninstallSuccess((DownloadAppInfo)localObject1);
      paramContext = f;
      return;
    }
    if ("android.intent.action.PACKAGE_REPLACED".equals(localObject1))
    {
      paramContext = f;
      new StringBuilder("检测到包被更新，包名：").append(paramIntent);
      localObject1 = h.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        paramContext = (DownloadAppInfo)((Iterator)localObject1).next();
        if (("package:" + paramContext.getPkgName()).equals(paramIntent))
        {
          paramIntent = f;
          new StringBuilder("已更新包名在数据库中存在，包名：").append(paramContext.getPkgName());
        }
      }
    }
  }
}
