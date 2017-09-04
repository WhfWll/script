package com.lidroid.xutils.http.callback;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpRequestBase;

public abstract interface HttpRedirectHandler
{
  public abstract HttpRequestBase getDirectRequest(HttpResponse paramHttpResponse);
}
