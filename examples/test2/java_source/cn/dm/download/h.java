package cn.dm.download;

import android.content.Context;
import cn.dm.download.bean.DownloadAppInfo;
import cn.dm.download.listener.DownloadHelperListener;
import java.util.HashMap;

public final class h
{
  private static h N;
  private HashMap M = new HashMap();
  private g b = null;
  
  private h() {}
  
  public static h a(Context paramContext)
  {
    if (N == null) {
      N = new h();
    }
    return N;
  }
  
  private static String d(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramDownloadAppInfo != null)
    {
      localObject1 = localObject2;
      if (!f(paramDownloadAppInfo.getPkgName())) {
        localObject1 = paramDownloadAppInfo.getPkgName();
      }
    }
    return localObject1;
  }
  
  private static boolean f(String paramString)
  {
    return (paramString == null) || (paramString.trim().length() == 0);
  }
  
  public final void a(DownloadAppInfo paramDownloadAppInfo, String paramString)
  {
    paramDownloadAppInfo = c(paramDownloadAppInfo);
    if (paramDownloadAppInfo != null) {
      paramDownloadAppInfo.d(paramString);
    }
  }
  
  public final void addTask(DownloadAppInfo paramDownloadAppInfo, String paramString, DownloadHelperListener paramDownloadHelperListener)
  {
    if (M == null) {
      M = new HashMap();
    }
    paramDownloadAppInfo = d(paramDownloadAppInfo);
    if (paramDownloadAppInfo == null) {
      return;
    }
    b = ((g)M.get(paramDownloadAppInfo));
    if (b == null)
    {
      b = new g(paramString, paramDownloadHelperListener);
      M.put(paramDownloadAppInfo, b);
      return;
    }
    b.a(paramString, paramDownloadHelperListener);
  }
  
  public final g c(DownloadAppInfo paramDownloadAppInfo)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (M != null)
    {
      localObject1 = localObject2;
      if (d(paramDownloadAppInfo) != null) {
        localObject1 = (g)M.get(d(paramDownloadAppInfo));
      }
    }
    return localObject1;
  }
  
  public final void clearTask()
  {
    if (M != null)
    {
      M.clear();
      M = null;
    }
  }
  
  public final void removeTask(DownloadAppInfo paramDownloadAppInfo)
  {
    g localG = c(paramDownloadAppInfo);
    if (localG != null)
    {
      localG.o();
      if ((!f(d(paramDownloadAppInfo))) && (M != null)) {
        M.remove(d(paramDownloadAppInfo));
      }
    }
  }
}
