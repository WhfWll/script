package com.lidroid.xutils.http;

import android.text.TextUtils;
import com.lidroid.xutils.http.client.entity.BodyParamsEntity;
import com.lidroid.xutils.http.client.multipart.HttpMultipartMode;
import com.lidroid.xutils.http.client.multipart.MultipartEntity;
import com.lidroid.xutils.http.client.multipart.content.ContentBody;
import com.lidroid.xutils.http.client.multipart.content.FileBody;
import com.lidroid.xutils.http.client.multipart.content.InputStreamBody;
import com.lidroid.xutils.http.client.multipart.content.StringBody;
import com.lidroid.xutils.task.Priority;
import com.lidroid.xutils.util.LogUtils;
import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;

public class RequestParams
{
  private HttpEntity bodyEntity;
  private List<NameValuePair> bodyParams;
  private String charset = "UTF-8";
  private HashMap<String, ContentBody> fileParams;
  private List<HeaderItem> headers;
  private Priority priority;
  private List<NameValuePair> queryStringParams;
  
  public RequestParams() {}
  
  public RequestParams(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      charset = paramString;
    }
  }
  
  public void addBodyParameter(String paramString, File paramFile)
  {
    if (fileParams == null) {
      fileParams = new HashMap();
    }
    fileParams.put(paramString, new FileBody(paramFile));
  }
  
  public void addBodyParameter(String paramString1, File paramFile, String paramString2)
  {
    if (fileParams == null) {
      fileParams = new HashMap();
    }
    fileParams.put(paramString1, new FileBody(paramFile, paramString2));
  }
  
  public void addBodyParameter(String paramString1, File paramFile, String paramString2, String paramString3)
  {
    if (fileParams == null) {
      fileParams = new HashMap();
    }
    fileParams.put(paramString1, new FileBody(paramFile, paramString2, paramString3));
  }
  
  public void addBodyParameter(String paramString1, File paramFile, String paramString2, String paramString3, String paramString4)
  {
    if (fileParams == null) {
      fileParams = new HashMap();
    }
    fileParams.put(paramString1, new FileBody(paramFile, paramString2, paramString3, paramString4));
  }
  
  public void addBodyParameter(String paramString, InputStream paramInputStream, long paramLong)
  {
    if (fileParams == null) {
      fileParams = new HashMap();
    }
    fileParams.put(paramString, new InputStreamBody(paramInputStream, paramLong));
  }
  
  public void addBodyParameter(String paramString1, InputStream paramInputStream, long paramLong, String paramString2)
  {
    if (fileParams == null) {
      fileParams = new HashMap();
    }
    fileParams.put(paramString1, new InputStreamBody(paramInputStream, paramLong, paramString2));
  }
  
  public void addBodyParameter(String paramString1, InputStream paramInputStream, long paramLong, String paramString2, String paramString3)
  {
    if (fileParams == null) {
      fileParams = new HashMap();
    }
    fileParams.put(paramString1, new InputStreamBody(paramInputStream, paramLong, paramString2, paramString3));
  }
  
  public void addBodyParameter(String paramString1, String paramString2)
  {
    if (bodyParams == null) {
      bodyParams = new ArrayList();
    }
    bodyParams.add(new BasicNameValuePair(paramString1, paramString2));
  }
  
  public void addBodyParameter(List<NameValuePair> paramList)
  {
    if (bodyParams == null) {
      bodyParams = new ArrayList();
    }
    if ((paramList != null) && (paramList.size() > 0)) {
      paramList = paramList.iterator();
    }
    for (;;)
    {
      if (!paramList.hasNext()) {
        return;
      }
      NameValuePair localNameValuePair = (NameValuePair)paramList.next();
      bodyParams.add(localNameValuePair);
    }
  }
  
  public void addBodyParameter(NameValuePair paramNameValuePair)
  {
    if (bodyParams == null) {
      bodyParams = new ArrayList();
    }
    bodyParams.add(paramNameValuePair);
  }
  
  public void addHeader(String paramString1, String paramString2)
  {
    if (headers == null) {
      headers = new ArrayList();
    }
    headers.add(new HeaderItem(paramString1, paramString2));
  }
  
  public void addHeader(Header paramHeader)
  {
    if (headers == null) {
      headers = new ArrayList();
    }
    headers.add(new HeaderItem(paramHeader));
  }
  
  public void addHeaders(List<Header> paramList)
  {
    if (headers == null) {
      headers = new ArrayList();
    }
    paramList = paramList.iterator();
    for (;;)
    {
      if (!paramList.hasNext()) {
        return;
      }
      Header localHeader = (Header)paramList.next();
      headers.add(new HeaderItem(localHeader));
    }
  }
  
  public void addQueryStringParameter(String paramString1, String paramString2)
  {
    if (queryStringParams == null) {
      queryStringParams = new ArrayList();
    }
    queryStringParams.add(new BasicNameValuePair(paramString1, paramString2));
  }
  
  public void addQueryStringParameter(List<NameValuePair> paramList)
  {
    if (queryStringParams == null) {
      queryStringParams = new ArrayList();
    }
    if ((paramList != null) && (paramList.size() > 0)) {
      paramList = paramList.iterator();
    }
    for (;;)
    {
      if (!paramList.hasNext()) {
        return;
      }
      NameValuePair localNameValuePair = (NameValuePair)paramList.next();
      queryStringParams.add(localNameValuePair);
    }
  }
  
  public void addQueryStringParameter(NameValuePair paramNameValuePair)
  {
    if (queryStringParams == null) {
      queryStringParams = new ArrayList();
    }
    queryStringParams.add(paramNameValuePair);
  }
  
  public String getCharset()
  {
    return charset;
  }
  
  public HttpEntity getEntity()
  {
    Object localObject;
    if (bodyEntity != null) {
      localObject = bodyEntity;
    }
    do
    {
      Iterator localIterator;
      do
      {
        return localObject;
        localIterator = null;
        if ((fileParams != null) && (!fileParams.isEmpty()))
        {
          localObject = new MultipartEntity(HttpMultipartMode.STRICT, null, Charset.forName(charset));
          if ((bodyParams != null) && (!bodyParams.isEmpty()))
          {
            localIterator = bodyParams.iterator();
            if (localIterator.hasNext()) {}
          }
          else
          {
            localIterator = fileParams.entrySet().iterator();
          }
          for (;;)
          {
            if (!localIterator.hasNext())
            {
              return localObject;
              NameValuePair localNameValuePair = (NameValuePair)localIterator.next();
              try
              {
                ((MultipartEntity)localObject).addPart(localNameValuePair.getName(), new StringBody(localNameValuePair.getValue()));
              }
              catch (UnsupportedEncodingException localUnsupportedEncodingException)
              {
                LogUtils.e(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
              }
              break;
            }
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            ((MultipartEntity)localObject).addPart((String)localEntry.getKey(), (ContentBody)localEntry.getValue());
          }
        }
        localObject = localIterator;
      } while (bodyParams == null);
      localObject = localIterator;
    } while (bodyParams.isEmpty());
    return new BodyParamsEntity(bodyParams, charset);
  }
  
  public List<HeaderItem> getHeaders()
  {
    return headers;
  }
  
  public Priority getPriority()
  {
    return priority;
  }
  
  public List<NameValuePair> getQueryStringParams()
  {
    return queryStringParams;
  }
  
  public void setBodyEntity(HttpEntity paramHttpEntity)
  {
    bodyEntity = paramHttpEntity;
    if (bodyParams != null)
    {
      bodyParams.clear();
      bodyParams = null;
    }
    if (fileParams != null)
    {
      fileParams.clear();
      fileParams = null;
    }
  }
  
  public void setContentType(String paramString)
  {
    setHeader("Content-Type", paramString);
  }
  
  public void setHeader(String paramString1, String paramString2)
  {
    if (headers == null) {
      headers = new ArrayList();
    }
    headers.add(new HeaderItem(paramString1, paramString2, true));
  }
  
  public void setHeader(Header paramHeader)
  {
    if (headers == null) {
      headers = new ArrayList();
    }
    headers.add(new HeaderItem(paramHeader, true));
  }
  
  public void setHeaders(List<Header> paramList)
  {
    if (headers == null) {
      headers = new ArrayList();
    }
    paramList = paramList.iterator();
    for (;;)
    {
      if (!paramList.hasNext()) {
        return;
      }
      Header localHeader = (Header)paramList.next();
      headers.add(new HeaderItem(localHeader, true));
    }
  }
  
  public void setPriority(Priority paramPriority)
  {
    priority = paramPriority;
  }
  
  public class HeaderItem
  {
    public final Header header;
    public final boolean overwrite;
    
    public HeaderItem(String paramString1, String paramString2)
    {
      overwrite = false;
      header = new BasicHeader(paramString1, paramString2);
    }
    
    public HeaderItem(String paramString1, String paramString2, boolean paramBoolean)
    {
      overwrite = paramBoolean;
      header = new BasicHeader(paramString1, paramString2);
    }
    
    public HeaderItem(Header paramHeader)
    {
      overwrite = false;
      header = paramHeader;
    }
    
    public HeaderItem(Header paramHeader, boolean paramBoolean)
    {
      overwrite = paramBoolean;
      header = paramHeader;
    }
  }
}
