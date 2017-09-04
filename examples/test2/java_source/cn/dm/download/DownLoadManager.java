package cn.dm.download;

import android.content.Context;
import cn.dm.download.bean.DownloadAppInfo;
import cn.dm.download.listener.DownloadHelperListener;
import cn.dm.download.listener.DownloadReportListener;
import java.util.ArrayList;
import java.util.Iterator;

public class DownLoadManager
  implements DownloadHelperListener
{
  private static DownLoadManager c;
  private h a;
  private g b;
  private f d;
  private DownloadReportListener e;
  private Context mContext;
  
  private DownLoadManager(Context paramContext)
  {
    mContext = paramContext;
    a = h.a(mContext);
    d = new f(paramContext, this);
  }
  
  public static DownLoadManager getInstance(Context paramContext)
  {
    try
    {
      if (c == null) {
        c = new DownLoadManager(paramContext);
      }
      paramContext = c;
      return paramContext;
    }
    finally {}
  }
  
  public void addTask(DownloadAppInfo paramDownloadAppInfo, String paramString, DownloadHelperListener paramDownloadHelperListener)
  {
    a.addTask(paramDownloadAppInfo, paramString, paramDownloadHelperListener);
  }
  
  public DownloadAppInfo checkAndGetDownloadAppInfo(DownloadAppInfo paramDownloadAppInfo)
  {
    return d.checkAndGetDownloadAppInfo(paramDownloadAppInfo);
  }
  
  public void clearTask()
  {
    a.clearTask();
  }
  
  public void excuteCancel(DownloadAppInfo paramDownloadAppInfo)
  {
    excuteDelete(paramDownloadAppInfo);
  }
  
  public void excuteDelete(DownloadAppInfo paramDownloadAppInfo)
  {
    d.excuteDelete(paramDownloadAppInfo);
  }
  
  public void excuteDownload(DownloadAppInfo paramDownloadAppInfo)
  {
    e.onDownloadWaitingReport(paramDownloadAppInfo);
    d.excuteDownload(paramDownloadAppInfo);
  }
  
  public void excuteInstall(Context paramContext, DownloadAppInfo paramDownloadAppInfo)
  {
    d.excuteInstall(paramContext, paramDownloadAppInfo);
  }
  
  public void excuteOpen(Context paramContext, DownloadAppInfo paramDownloadAppInfo)
  {
    f localF = d;
    f.excuteOpen(paramContext, paramDownloadAppInfo);
  }
  
  public void excutePause(DownloadAppInfo paramDownloadAppInfo)
  {
    f localF = d;
    f.excutePause(paramDownloadAppInfo);
  }
  
  public void excuteResume(DownloadAppInfo paramDownloadAppInfo)
  {
    d.excuteResume(paramDownloadAppInfo);
  }
  
  public void excuteUninstall(Context paramContext, DownloadAppInfo paramDownloadAppInfo)
  {
    f localF = d;
    f.excuteUninstall(paramContext, paramDownloadAppInfo);
  }
  
  public void excuteUpdate(DownloadAppInfo paramDownloadAppInfo)
  {
    d.excuteUpdate(paramDownloadAppInfo);
  }
  
  public boolean existTask(DownloadAppInfo paramDownloadAppInfo, String paramString)
  {
    paramDownloadAppInfo = a.c(paramDownloadAppInfo);
    if (paramDownloadAppInfo == null) {}
    while (paramDownloadAppInfo.e(paramString) == null) {
      return false;
    }
    return true;
  }
  
  public void finishDownloadTool()
  {
    d.finishDownloadTool();
  }
  
  public int getDownloadStatus(DownloadAppInfo paramDownloadAppInfo)
  {
    return 0;
  }
  
  public int getDownloadingCount()
  {
    int j = 0;
    Object localObject = initAllDownloadAppInfoList();
    int i = j;
    if (localObject != null)
    {
      i = j;
      if (((ArrayList)localObject).size() > 0)
      {
        localObject = ((ArrayList)localObject).iterator();
        i = 0;
      }
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return i;
      }
      switch (((DownloadAppInfo)((Iterator)localObject).next()).getDownloadStatus())
      {
      }
      i += 1;
    }
  }
  
  public f getInnerDownloadManager()
  {
    return d;
  }
  
  public ArrayList initAllDownloadAppInfoList()
  {
    return d.initAllDownloadAppInfoList();
  }
  
  public void onDownloadCancel(DownloadAppInfo paramDownloadAppInfo)
  {
    b = a.c(paramDownloadAppInfo);
    if (b != null) {
      b.onDownloadCancel(paramDownloadAppInfo);
    }
  }
  
  public void onDownloadFailed(DownloadAppInfo paramDownloadAppInfo)
  {
    e.onDownloadFailedReport(paramDownloadAppInfo);
    b = a.c(paramDownloadAppInfo);
    if (b != null) {
      b.onDownloadFailed(paramDownloadAppInfo);
    }
  }
  
  public void onDownloadPause(DownloadAppInfo paramDownloadAppInfo)
  {
    b = a.c(paramDownloadAppInfo);
    if (b != null) {
      b.onDownloadPause(paramDownloadAppInfo);
    }
  }
  
  public void onDownloadResume(DownloadAppInfo paramDownloadAppInfo)
  {
    b = a.c(paramDownloadAppInfo);
    if (b != null) {
      b.onDownloadResume(paramDownloadAppInfo);
    }
  }
  
  public void onDownloadStart(DownloadAppInfo paramDownloadAppInfo)
  {
    e.onDownloadStartReport(paramDownloadAppInfo);
    b = a.c(paramDownloadAppInfo);
    if (b != null) {
      b.onDownloadStart(paramDownloadAppInfo);
    }
  }
  
  public void onDownloadSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    e.onDownloadSuccessReport(paramDownloadAppInfo);
    b = a.c(paramDownloadAppInfo);
    if (b != null) {
      b.onDownloadSuccess(paramDownloadAppInfo);
    }
    excuteInstall(mContext, paramDownloadAppInfo);
  }
  
  public void onDownloadWaiting(DownloadAppInfo paramDownloadAppInfo)
  {
    b = a.c(paramDownloadAppInfo);
    if (b != null) {
      b.onDownloadWaiting(paramDownloadAppInfo);
    }
  }
  
  public void onInstallSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    e.onInstallSuccessReport(paramDownloadAppInfo);
    b = a.c(paramDownloadAppInfo);
    if (b != null) {
      b.onInstallSuccess(paramDownloadAppInfo);
    }
    e.onAutoRunReport(paramDownloadAppInfo);
    excuteOpen(mContext, paramDownloadAppInfo);
  }
  
  public void onProgressChange(DownloadAppInfo paramDownloadAppInfo)
  {
    b = a.c(paramDownloadAppInfo);
    if (b != null) {
      b.onProgressChange(paramDownloadAppInfo);
    }
  }
  
  public void onUninstallSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    b = a.c(paramDownloadAppInfo);
    if (b != null) {
      b.onUninstallSuccess(paramDownloadAppInfo);
    }
  }
  
  public void pauseAllDownloadThread()
  {
    f localF = d;
    f.pauseAllDownloadThread();
  }
  
  public void removeListener(DownloadAppInfo paramDownloadAppInfo, String paramString)
  {
    paramDownloadAppInfo = a.c(paramDownloadAppInfo);
    if (paramDownloadAppInfo != null) {
      paramDownloadAppInfo.d(paramString);
    }
  }
  
  public void removeTask(DownloadAppInfo paramDownloadAppInfo)
  {
    a.removeTask(paramDownloadAppInfo);
  }
  
  public void setDownloadReportListener(DownloadReportListener paramDownloadReportListener)
  {
    e = paramDownloadReportListener;
  }
  
  public void setMaxDownloadThreadNum(int paramInt)
  {
    f localF = d;
    f.setMaxDownloadThreadNum(paramInt);
  }
  
  public void setStorageFileName(String paramString)
  {
    f localF = d;
    f.setStorageFileName(paramString);
  }
}
