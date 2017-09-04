package com.lidroid.xutils.http.client.multipart;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.http.client.entity.UploadEntity;
import com.lidroid.xutils.http.client.multipart.content.ContentBody;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

public class MultipartEntity
  implements UploadEntity, HttpEntity
{
  private static final char[] MULTIPART_CHARS = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  private final String boundary;
  private CallBackInfo callBackInfo = new CallBackInfo();
  private final Charset charset;
  private Header contentType;
  private volatile boolean dirty;
  private long length;
  private final HttpMultipart multipart;
  private String multipartSubtype = "form-data";
  
  public MultipartEntity()
  {
    this(HttpMultipartMode.STRICT, null, null);
  }
  
  public MultipartEntity(HttpMultipartMode paramHttpMultipartMode)
  {
    this(paramHttpMultipartMode, null, null);
  }
  
  public MultipartEntity(HttpMultipartMode paramHttpMultipartMode, String paramString, Charset paramCharset)
  {
    String str = paramString;
    if (paramString == null) {
      str = generateBoundary();
    }
    boundary = str;
    paramString = paramHttpMultipartMode;
    if (paramHttpMultipartMode == null) {
      paramString = HttpMultipartMode.STRICT;
    }
    if (paramCharset != null) {}
    for (;;)
    {
      charset = paramCharset;
      multipart = new HttpMultipart(multipartSubtype, charset, boundary, paramString);
      contentType = new BasicHeader("Content-Type", generateContentType(boundary, charset));
      dirty = true;
      return;
      paramCharset = MIME.DEFAULT_CHARSET;
    }
  }
  
  public void addPart(FormBodyPart paramFormBodyPart)
  {
    multipart.addBodyPart(paramFormBodyPart);
    dirty = true;
  }
  
  public void addPart(String paramString, ContentBody paramContentBody)
  {
    addPart(new FormBodyPart(paramString, paramContentBody));
  }
  
  public void addPart(String paramString1, ContentBody paramContentBody, String paramString2)
  {
    addPart(new FormBodyPart(paramString1, paramContentBody, paramString2));
  }
  
  public void consumeContent()
    throws IOException, UnsupportedOperationException
  {
    if (isStreaming()) {
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
    }
  }
  
  protected String generateBoundary()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Random localRandom = new Random();
    int j = localRandom.nextInt(11);
    int i = 0;
    for (;;)
    {
      if (i >= j + 30) {
        return localStringBuilder.toString();
      }
      localStringBuilder.append(MULTIPART_CHARS[localRandom.nextInt(MULTIPART_CHARS.length)]);
      i += 1;
    }
  }
  
  protected String generateContentType(String paramString, Charset paramCharset)
  {
    paramCharset = new StringBuilder();
    paramCharset.append("multipart/" + multipartSubtype + "; boundary=");
    paramCharset.append(paramString);
    return paramCharset.toString();
  }
  
  public InputStream getContent()
    throws IOException, UnsupportedOperationException
  {
    throw new UnsupportedOperationException("Multipart form entity does not implement #getContent()");
  }
  
  public Header getContentEncoding()
  {
    return null;
  }
  
  public long getContentLength()
  {
    if (dirty)
    {
      length = multipart.getTotalLength();
      dirty = false;
    }
    return length;
  }
  
  public Header getContentType()
  {
    return contentType;
  }
  
  public boolean isChunked()
  {
    return !isRepeatable();
  }
  
  public boolean isRepeatable()
  {
    Iterator localIterator = multipart.getBodyParts().iterator();
    do
    {
      if (!localIterator.hasNext()) {
        return true;
      }
    } while (((FormBodyPart)localIterator.next()).getBody().getContentLength() >= 0L);
    return false;
  }
  
  public boolean isStreaming()
  {
    return !isRepeatable();
  }
  
  public void setCallBackHandler(RequestCallBackHandler paramRequestCallBackHandler)
  {
    callBackInfo.callBackHandler = paramRequestCallBackHandler;
  }
  
  public void setMultipartSubtype(String paramString)
  {
    multipartSubtype = paramString;
    multipart.setSubType(paramString);
    contentType = new BasicHeader("Content-Type", generateContentType(boundary, charset));
  }
  
  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    callBackInfo.totalLength = getContentLength();
    multipart.writeTo(paramOutputStream, callBackInfo);
  }
  
  public static class CallBackInfo
  {
    public static final CallBackInfo DEFAULT = new CallBackInfo();
    public RequestCallBackHandler callBackHandler = null;
    public long pos = 0L;
    public long totalLength = 0L;
    
    public CallBackInfo() {}
    
    public boolean doCallBack(boolean paramBoolean)
    {
      if (callBackHandler != null) {
        return callBackHandler.updateProgress(totalLength, pos, paramBoolean);
      }
      return true;
    }
  }
}
