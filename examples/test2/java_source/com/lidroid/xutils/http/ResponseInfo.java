package com.lidroid.xutils.http;

import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.StatusLine;

public final class ResponseInfo<T>
{
  public final Header contentEncoding;
  public final long contentLength;
  public final Header contentType;
  public final Locale locale;
  public final ProtocolVersion protocolVersion;
  public final String reasonPhrase;
  private final HttpResponse response;
  public T result;
  public final boolean resultFormCache;
  public final int statusCode;
  
  public ResponseInfo(HttpResponse paramHttpResponse, T paramT, boolean paramBoolean)
  {
    response = paramHttpResponse;
    result = paramT;
    resultFormCache = paramBoolean;
    if (paramHttpResponse != null)
    {
      locale = paramHttpResponse.getLocale();
      paramT = paramHttpResponse.getStatusLine();
      if (paramT != null)
      {
        statusCode = paramT.getStatusCode();
        protocolVersion = paramT.getProtocolVersion();
      }
      for (reasonPhrase = paramT.getReasonPhrase();; reasonPhrase = null)
      {
        paramHttpResponse = paramHttpResponse.getEntity();
        if (paramHttpResponse == null) {
          break;
        }
        contentLength = paramHttpResponse.getContentLength();
        contentType = paramHttpResponse.getContentType();
        contentEncoding = paramHttpResponse.getContentEncoding();
        return;
        statusCode = 0;
        protocolVersion = null;
      }
      contentLength = 0L;
      contentType = null;
      contentEncoding = null;
      return;
    }
    locale = null;
    statusCode = 0;
    protocolVersion = null;
    reasonPhrase = null;
    contentLength = 0L;
    contentType = null;
    contentEncoding = null;
  }
  
  public Header[] getAllHeaders()
  {
    if (response == null) {
      return null;
    }
    return response.getAllHeaders();
  }
  
  public Header getFirstHeader(String paramString)
  {
    if (response == null) {
      return null;
    }
    return response.getFirstHeader(paramString);
  }
  
  public Header[] getHeaders(String paramString)
  {
    if (response == null) {
      return null;
    }
    return response.getHeaders(paramString);
  }
  
  public Header getLastHeader(String paramString)
  {
    if (response == null) {
      return null;
    }
    return response.getLastHeader(paramString);
  }
}
