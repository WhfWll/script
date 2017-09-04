package com.lidroid.xutils.http.callback;

import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.ResponseInfo;

public abstract class RequestCallBack<T>
{
  private static final int DEFAULT_RATE = 1000;
  private static final int MIN_RATE = 200;
  private int rate;
  private String requestUrl;
  protected Object userTag;
  
  public RequestCallBack()
  {
    rate = 1000;
  }
  
  public RequestCallBack(int paramInt)
  {
    rate = paramInt;
  }
  
  public RequestCallBack(int paramInt, Object paramObject)
  {
    rate = paramInt;
    userTag = paramObject;
  }
  
  public RequestCallBack(Object paramObject)
  {
    rate = 1000;
    userTag = paramObject;
  }
  
  public final int getRate()
  {
    if (rate < 200) {
      return 200;
    }
    return rate;
  }
  
  public final String getRequestUrl()
  {
    return requestUrl;
  }
  
  public Object getUserTag()
  {
    return userTag;
  }
  
  public void onCancelled() {}
  
  public abstract void onFailure(HttpException paramHttpException, String paramString);
  
  public void onLoading(long paramLong1, long paramLong2, boolean paramBoolean) {}
  
  public void onStart() {}
  
  public abstract void onSuccess(ResponseInfo<T> paramResponseInfo);
  
  public final void setRate(int paramInt)
  {
    rate = paramInt;
  }
  
  public final void setRequestUrl(String paramString)
  {
    requestUrl = paramString;
  }
  
  public void setUserTag(Object paramObject)
  {
    userTag = paramObject;
  }
}
