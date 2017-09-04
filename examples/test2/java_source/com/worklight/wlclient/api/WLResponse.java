package com.worklight.wlclient.api;

import com.bangcle.andjni.JniLib;
import com.worklight.common.WLUtils;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.json.JSONObject;

public class WLResponse
{
  private Header[] headers;
  private HttpResponse httpResponseCache;
  private WLRequestOptions requestOptions;
  private JSONObject responseJSON;
  protected String responseText;
  private int status;
  
  static
  {
    JniLib.a(WLResponse.class, 1232);
  }
  
  WLResponse(int paramInt, String paramString, WLRequestOptions paramWLRequestOptions)
  {
    status = paramInt;
    requestOptions = paramWLRequestOptions;
    responseText = paramString;
    responseTextToJSON(paramString);
  }
  
  WLResponse(WLResponse paramWLResponse)
  {
    status = status;
    requestOptions = requestOptions;
    responseText = responseText;
    responseJSON = responseJSON;
    httpResponseCache = httpResponseCache;
  }
  
  public WLResponse(HttpResponse paramHttpResponse)
  {
    status = paramHttpResponse.getStatusLine().getStatusCode();
    headers = paramHttpResponse.getAllHeaders();
    httpResponseCache = paramHttpResponse;
    try
    {
      if (paramHttpResponse.getHeaders("Content-Encoding").length > 0)
      {
        WLUtils.error("Content encoding is " + paramHttpResponse.getHeaders("Content-Encoding")[0].getValue());
        if (paramHttpResponse.getHeaders("Content-Encoding")[0].getValue().equalsIgnoreCase("gzip"))
        {
          responseText = WLUtils.convertGZIPStreamToString(paramHttpResponse.getEntity().getContent());
          WLUtils.log("Content encoding is gzip", 0);
        }
        for (;;)
        {
          responseTextToJSON(responseText);
          return;
          responseText = WLUtils.convertStreamToString(paramHttpResponse.getEntity().getContent());
        }
      }
    }
    catch (Exception paramHttpResponse)
    {
      for (;;)
      {
        WLUtils.error("Response from Worklight server failed because could not read text from response " + paramHttpResponse.getMessage(), paramHttpResponse);
        continue;
        WLUtils.error("No Content-Encoding header");
        responseText = WLUtils.convertStreamToString(paramHttpResponse.getEntity().getContent());
      }
    }
  }
  
  private native void responseTextToJSON(String paramString);
  
  public native Header getHeader(String paramString);
  
  public native Header[] getHeaders();
  
  public native Object getInvocationContext();
  
  native WLRequestOptions getOptions();
  
  public native JSONObject getResponseJSON();
  
  public native String getResponseText();
  
  public native int getStatus();
  
  native void setInvocationContext(Object paramObject);
  
  public native void setOptions(WLRequestOptions paramWLRequestOptions);
  
  native void setResponseHeader(String paramString1, String paramString2);
  
  public native String toString();
}
