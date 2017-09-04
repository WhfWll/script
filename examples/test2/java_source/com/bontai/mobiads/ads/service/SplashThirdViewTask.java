package com.bontai.mobiads.ads.service;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.bangcle.andjni.JniLib;
import com.bontai.mobiads.ads.DeviceUtils;
import com.bontai.mobiads.ads.entity.AdDomain;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;

public class SplashThirdViewTask
  extends AsyncTask<Object, Integer, Boolean>
{
  public SplashThirdViewTask() {}
  
  protected Boolean doInBackground(Object... paramVarArgs)
  {
    for (;;)
    {
      int j;
      int i;
      try
      {
        Log.i("----------------", "------SplashThirdViewTask--------");
        localContext = (Context)paramVarArgs[0];
        paramVarArgs = (AdDomain)paramVarArgs[1];
        if ((paramVarArgs != null) && (paramVarArgs.getThirdViewUrls() != null) && (!paramVarArgs.getThirdViewUrls().equals("")))
        {
          arrayOfString = paramVarArgs.getThirdViewUrls().split(",");
          j = arrayOfString.length;
          i = 0;
          break label191;
        }
        return Boolean.valueOf(true);
      }
      catch (Exception paramVarArgs)
      {
        Context localContext;
        String[] arrayOfString;
        HttpUtils localHttpUtils;
        return Boolean.valueOf(false);
      }
      paramVarArgs = arrayOfString[i];
      if (paramVarArgs.contains("?"))
      {
        paramVarArgs = paramVarArgs + "&clientType=1&ip=" + DeviceUtils.getDeviceId(localContext);
        localHttpUtils = new HttpUtils();
        localHttpUtils.configDefaultHttpCacheExpiry(0L);
        localHttpUtils.send(HttpRequest.HttpMethod.GET, paramVarArgs, new RequestCallBack()
        {
          static
          {
            JniLib.a(1.class, 255);
          }
          
          public native void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString);
          
          public native void onLoading(long paramAnonymousLong1, long paramAnonymousLong2, boolean paramAnonymousBoolean);
          
          public native void onStart();
          
          public native void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo);
        });
        i += 1;
      }
      else
      {
        paramVarArgs = paramVarArgs + "?clientType=1&ip=" + DeviceUtils.getDeviceId(localContext);
        continue;
      }
      label191:
      if (i < j) {}
    }
  }
}
