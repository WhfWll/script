package com.bontai.mobiads.ads.service;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.bangcle.andjni.JniLib;
import com.bontai.mobiads.ads.AppHelp;
import com.bontai.mobiads.ads.DeviceScreen;
import com.bontai.mobiads.ads.DeviceUtils;
import com.bontai.mobiads.ads.entity.AdDomain;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;
import java.io.File;

public class GetSplashInfoTask
  extends AsyncTask<Object, Integer, Boolean>
{
  static
  {
    JniLib.a(GetSplashInfoTask.class, 252);
  }
  
  public GetSplashInfoTask() {}
  
  private native void downloadPic(AdDomain paramAdDomain, Context paramContext);
  
  protected Boolean doInBackground(final Object... paramVarArgs)
  {
    try
    {
      final Context localContext = (Context)paramVarArgs[0];
      String str = (String)paramVarArgs[2];
      Object localObject2 = AppHelp.getBontaiMobiAdsUrl(localContext) + AppHelp.GT_CDN_AD_URL + "/" + str + ".html";
      Object localObject1;
      if (paramVarArgs[1] != null)
      {
        AdDomain localAdDomain = (AdDomain)paramVarArgs[1];
        paramVarArgs = localAdDomain;
        localObject1 = localObject2;
        if (localAdDomain.getServiceType() != null)
        {
          paramVarArgs = localAdDomain;
          localObject1 = localObject2;
          if (localAdDomain.getServiceType().equals("0"))
          {
            paramVarArgs = localAdDomain;
            localObject1 = localObject2;
            if (localAdDomain.getServiceUrl() != null)
            {
              paramVarArgs = localAdDomain;
              localObject1 = localObject2;
              if (!localAdDomain.getServiceUrl().equals(""))
              {
                paramVarArgs = DeviceScreen.getAdSize(localContext);
                localObject1 = localAdDomain.getServiceUrl() + "?placementNo=" + str + "&placementType=1&screenSize=" + paramVarArgs + "&appKey=" + AppHelp.getAppKey(localContext) + "&clientType=1&ip=" + DeviceUtils.getDeviceId(localContext);
                paramVarArgs = localAdDomain;
              }
            }
          }
        }
      }
      for (;;)
      {
        Log.i("---------", (String)localObject1);
        Log.i("ad12306", "url:" + (String)localObject1);
        localObject2 = new HttpUtils();
        ((HttpUtils)localObject2).configDefaultHttpCacheExpiry(0L);
        ((HttpUtils)localObject2).send(HttpRequest.HttpMethod.GET, (String)localObject1, new RequestCallBack()
        {
          static
          {
            JniLib.a(1.class, 250);
          }
          
          public native void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString);
          
          public native void onLoading(long paramAnonymousLong1, long paramAnonymousLong2, boolean paramAnonymousBoolean);
          
          public native void onStart();
          
          public native void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo);
        });
        return Boolean.valueOf(true);
        paramVarArgs = null;
        localObject1 = localObject2;
      }
      return Boolean.valueOf(false);
    }
    catch (Exception paramVarArgs) {}
  }
}
