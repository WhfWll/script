package com.MobileTicket;

import android.os.AsyncTask;
import android.text.format.DateFormat;
import com.bangcle.andjni.JniLib;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.ResponseInfo;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;
import java.util.Date;

public class TrackRestart
  extends AsyncTask<Object, Integer, Boolean>
{
  public TrackRestart() {}
  
  protected Boolean doInBackground(Object... paramVarArgs)
  {
    try
    {
      HttpUtils localHttpUtils = new HttpUtils();
      RequestParams localRequestParams = new RequestParams();
      paramVarArgs = DateFormat.format("yyyyMMddHHmmss", new Date()).toString() + paramVarArgs[0];
      localRequestParams.addBodyParameter("para", CheckCodeUtil.checkcode("", "[{" + paramVarArgs + "}]"));
      localHttpUtils.send(HttpRequest.HttpMethod.POST, "https://mobile.12306.cn/otsmobile/track/arestart", localRequestParams, new RequestCallBack()
      {
        static
        {
          JniLib.a(1.class, 21);
        }
        
        public native void onFailure(HttpException paramAnonymousHttpException, String paramAnonymousString);
        
        public native void onLoading(long paramAnonymousLong1, long paramAnonymousLong2, boolean paramAnonymousBoolean);
        
        public native void onStart();
        
        public native void onSuccess(ResponseInfo<String> paramAnonymousResponseInfo);
      });
      return null;
    }
    catch (Exception paramVarArgs) {}
    return null;
  }
}
