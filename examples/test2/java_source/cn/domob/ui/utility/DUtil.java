package cn.domob.ui.utility;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import cn.dm.download.bean.DownloadAppInfo;
import cn.domob.wall.core.bean.AdInfo;

public class DUtil
{
  public DUtil() {}
  
  public static AdInfo buildAdInfo(DownloadAppInfo paramDownloadAppInfo)
  {
    return new AdInfo(String.valueOf(paramDownloadAppInfo.getAppId()), paramDownloadAppInfo.getPkgName(), paramDownloadAppInfo.getVersionCode(), paramDownloadAppInfo.getVersionName(), paramDownloadAppInfo.getTr(), paramDownloadAppInfo.getSid());
  }
  
  public static DownloadAppInfo buildDownLoadAppInfo(AdInfo paramAdInfo)
  {
    DownloadAppInfo localDownloadAppInfo = new DownloadAppInfo();
    localDownloadAppInfo.setSid(paramAdInfo.getSearchId());
    localDownloadAppInfo.setAppId(Long.parseLong(paramAdInfo.getAdId()));
    localDownloadAppInfo.setAppName(paramAdInfo.getAdName());
    localDownloadAppInfo.setAppSize(paramAdInfo.getAdSize());
    localDownloadAppInfo.setDownloadUrl(paramAdInfo.getAdDownloadURL());
    localDownloadAppInfo.setPkgName(paramAdInfo.getAdPackageName());
    localDownloadAppInfo.setLogoUrl(paramAdInfo.getAdLogoURL());
    localDownloadAppInfo.setVersionCode(paramAdInfo.getAdVersionCode());
    localDownloadAppInfo.setVersionName(paramAdInfo.getAdVersionName());
    localDownloadAppInfo.setTr(paramAdInfo.getAdTracker());
    return localDownloadAppInfo;
  }
  
  public static float getCurrentDensity(Context paramContext)
  {
    float f = 0.0F;
    if (0.0F == 0.0F) {}
    try
    {
      f = getResourcesgetDisplayMetricsdensity;
      return f;
    }
    catch (Exception paramContext) {}
    return 0.0F;
  }
  
  public static int getCurrentScreenHeight(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if (paramContext != null) {
      return paramContext.getHeight();
    }
    return 0;
  }
  
  public static int getCurrentScreenWidth(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if (paramContext != null) {
      return paramContext.getWidth();
    }
    return 0;
  }
  
  public static float getRealDensity(Context paramContext)
  {
    if (0.0F == 0.0F) {}
    for (;;)
    {
      try
      {
        paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        paramContext.getMetrics(localDisplayMetrics);
        f = density;
        return f;
      }
      catch (Exception paramContext)
      {
        return 0.0F;
      }
      float f = 0.0F;
    }
  }
  
  public static int getRealScreenHeight(Context paramContext)
  {
    return Math.round(getCurrentScreenHeight(paramContext) * (getRealDensity(paramContext) / getCurrentDensity(paramContext)));
  }
  
  public static int getRealScreenWidth(Context paramContext)
  {
    return Math.round(getCurrentScreenWidth(paramContext) * (getRealDensity(paramContext) / getCurrentDensity(paramContext)));
  }
  
  public static float getScreenDensity(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramContext.getMetrics(localDisplayMetrics);
    return density;
  }
  
  public static boolean isIntValid(int paramInt)
  {
    if (paramInt < 0) {}
    String str;
    do
    {
      return true;
      str = paramInt + "";
    } while ((str == null) || (str.equals("")) || (str.length() == 0));
    return false;
  }
  
  public static boolean isObjectValid(Object paramObject)
  {
    return (paramObject == null) || (paramObject.equals(""));
  }
  
  public static boolean isStringValid(String paramString)
  {
    return (paramString == null) || (paramString.equals("")) || (paramString.length() == 0);
  }
}
