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

public class SplashClickTask
  extends AsyncTask<Object, Integer, Boolean>
{
  public SplashClickTask() {}
  
  protected Boolean doInBackground(Object... paramVarArgs)
  {
    try
    {
      Log.i("----------------", "------SplashClickTask--------");
      Object localObject = (Context)paramVarArgs[0];
      paramVarArgs = (AdDomain)paramVarArgs[1];
      if ((paramVarArgs != null) && (paramVarArgs.getClickUrl() != null) && (!paramVarArgs.getClickUrl().equals("")))
      {
        paramVarArgs = paramVarArgs.getClickUrl();
        if (!paramVarArgs.contains("?")) {
          break label122;
        }
      }
      label122:
      for (paramVarArgs = paramVarArgs + "&clientType=1&ip=" + DeviceUtils.getDeviceId((Context)localObject);; paramVarArgs = paramVarArgs + "?clientType=1&ip=" + DeviceUtils.getDeviceId((Context)localObject))
      {
        localObject = new HttpUtils();
        ((HttpUtils)localObject).configDefaultHttpCacheExpiry(0L);
        ((HttpUtils)localObject).send(HttpRequest.HttpMethod.GET, paramVarArgs, new RequestCallBack()
        {
          static
          {
            JniLib.a(1.class, 253);
          }
          
          public native void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString);
          
          public native void onLoading(long paramAnonymousLong1, long paramAnonymousLong2, boolean paramAnonymousBoolean);
          
          public native void onStart();
          
          public native void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo);
        });
        return Boolean.valueOf(true);
      }
      return Boolean.valueOf(false);
    }
    catch (Exception paramVarArgs) {}
  }
}
