package cn.dm.download;

import cn.dm.download.bean.DownloadAppInfo;
import cn.dm.download.listener.DownloadHelperListener;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class g
{
  private HashMap L = new HashMap();
  
  public g(String paramString, DownloadHelperListener paramDownloadHelperListener)
  {
    L.put(paramString, paramDownloadHelperListener);
  }
  
  private List n()
  {
    if (L != null)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = L.values().iterator();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          return localArrayList;
        }
        localArrayList.add((DownloadHelperListener)localIterator.next());
      }
    }
    return null;
  }
  
  public final void a(String paramString, DownloadHelperListener paramDownloadHelperListener)
  {
    if (L != null) {
      L.put(paramString, paramDownloadHelperListener);
    }
  }
  
  public final void d(String paramString)
  {
    if (L != null) {
      L.remove(paramString);
    }
  }
  
  public final DownloadHelperListener e(String paramString)
  {
    if (L != null) {
      return (DownloadHelperListener)L.get(paramString);
    }
    return null;
  }
  
  public final void o()
  {
    if (L != null)
    {
      L.clear();
      L = null;
    }
  }
  
  public final void onDownloadCancel(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject = n();
    if (localObject != null) {
      localObject = ((List)localObject).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return;
      }
      ((DownloadHelperListener)((Iterator)localObject).next()).onDownloadCancel(paramDownloadAppInfo);
    }
  }
  
  public final void onDownloadFailed(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject = n();
    if (localObject != null) {
      localObject = ((List)localObject).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return;
      }
      ((DownloadHelperListener)((Iterator)localObject).next()).onDownloadFailed(paramDownloadAppInfo);
    }
  }
  
  public final void onDownloadPause(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject = n();
    if (localObject != null) {
      localObject = ((List)localObject).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return;
      }
      ((DownloadHelperListener)((Iterator)localObject).next()).onDownloadPause(paramDownloadAppInfo);
    }
  }
  
  public final void onDownloadResume(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject = n();
    if (localObject != null) {
      localObject = ((List)localObject).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return;
      }
      ((DownloadHelperListener)((Iterator)localObject).next()).onDownloadResume(paramDownloadAppInfo);
    }
  }
  
  public final void onDownloadStart(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject = n();
    if (localObject != null) {
      localObject = ((List)localObject).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return;
      }
      ((DownloadHelperListener)((Iterator)localObject).next()).onDownloadStart(paramDownloadAppInfo);
    }
  }
  
  public final void onDownloadSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject = n();
    if (localObject != null) {
      localObject = ((List)localObject).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return;
      }
      ((DownloadHelperListener)((Iterator)localObject).next()).onDownloadSuccess(paramDownloadAppInfo);
    }
  }
  
  public final void onDownloadWaiting(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject = n();
    if (localObject != null) {
      localObject = ((List)localObject).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return;
      }
      ((DownloadHelperListener)((Iterator)localObject).next()).onDownloadWaiting(paramDownloadAppInfo);
    }
  }
  
  public final void onInstallSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject = n();
    if (localObject != null) {
      localObject = ((List)localObject).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return;
      }
      ((DownloadHelperListener)((Iterator)localObject).next()).onInstallSuccess(paramDownloadAppInfo);
    }
  }
  
  public final void onProgressChange(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject = n();
    if (localObject != null) {
      localObject = ((List)localObject).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return;
      }
      ((DownloadHelperListener)((Iterator)localObject).next()).onProgressChange(paramDownloadAppInfo);
    }
  }
  
  public final void onUninstallSuccess(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject = n();
    if (localObject != null) {
      localObject = ((List)localObject).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return;
      }
      ((DownloadHelperListener)((Iterator)localObject).next()).onUninstallSuccess(paramDownloadAppInfo);
    }
  }
}
