package cn.dm.download.listener;

import cn.dm.download.bean.DownloadAppInfo;

public abstract interface a
{
  public abstract void a(DownloadAppInfo paramDownloadAppInfo);
  
  public abstract void b(String paramString);
  
  public abstract void c(String paramString);
  
  public abstract boolean i();
  
  public abstract boolean j();
  
  public abstract void onDownloadFailed(DownloadAppInfo paramDownloadAppInfo);
  
  public abstract void onProgressChange(DownloadAppInfo paramDownloadAppInfo);
}
