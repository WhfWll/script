package com.lidroid.xutils.http;

import com.lidroid.xutils.util.IOUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

public class ResponseStream
  extends InputStream
{
  private String _directResult;
  private HttpResponse baseResponse;
  private InputStream baseStream;
  private String charset;
  private long expiry;
  private String requestMethod;
  private String requestUrl;
  
  public ResponseStream(String paramString)
    throws IOException
  {
    if (paramString == null) {
      throw new IllegalArgumentException("result may not be null");
    }
    _directResult = paramString;
  }
  
  public ResponseStream(HttpResponse paramHttpResponse, String paramString, long paramLong)
    throws IOException
  {
    this(paramHttpResponse, "UTF-8", paramString, paramLong);
  }
  
  public ResponseStream(HttpResponse paramHttpResponse, String paramString1, String paramString2, long paramLong)
    throws IOException
  {
    if (paramHttpResponse == null) {
      throw new IllegalArgumentException("baseResponse may not be null");
    }
    baseResponse = paramHttpResponse;
    baseStream = paramHttpResponse.getEntity().getContent();
    charset = paramString1;
    requestUrl = paramString2;
    expiry = paramLong;
  }
  
  public int available()
    throws IOException
  {
    if (baseStream == null) {
      return 0;
    }
    return baseStream.available();
  }
  
  public void close()
    throws IOException
  {
    if (baseStream == null) {
      return;
    }
    baseStream.close();
  }
  
  public HttpResponse getBaseResponse()
  {
    return baseResponse;
  }
  
  public InputStream getBaseStream()
  {
    return baseStream;
  }
  
  public long getContentLength()
  {
    if (baseStream == null) {
      return 0L;
    }
    return baseResponse.getEntity().getContentLength();
  }
  
  public Locale getLocale()
  {
    if (_directResult != null) {
      return Locale.getDefault();
    }
    return baseResponse.getLocale();
  }
  
  public String getReasonPhrase()
  {
    if (_directResult != null) {
      return "";
    }
    return baseResponse.getStatusLine().getReasonPhrase();
  }
  
  public String getRequestMethod()
  {
    return requestMethod;
  }
  
  public String getRequestUrl()
  {
    return requestUrl;
  }
  
  public int getStatusCode()
  {
    if (_directResult != null) {
      return 200;
    }
    return baseResponse.getStatusLine().getStatusCode();
  }
  
  public void mark(int paramInt)
  {
    if (baseStream == null) {
      return;
    }
    baseStream.mark(paramInt);
  }
  
  public boolean markSupported()
  {
    if (baseStream == null) {
      return false;
    }
    return baseStream.markSupported();
  }
  
  public int read()
    throws IOException
  {
    if (baseStream == null) {
      return -1;
    }
    return baseStream.read();
  }
  
  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    if (baseStream == null) {
      return -1;
    }
    return baseStream.read(paramArrayOfByte);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (baseStream == null) {
      return -1;
    }
    return baseStream.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void readFile(String paramString)
    throws IOException
  {
    if (_directResult != null) {}
    while (baseStream == null) {
      return;
    }
    BufferedInputStream localBufferedInputStream = null;
    try
    {
      paramString = new BufferedOutputStream(new FileOutputStream(paramString));
      try
      {
        localBufferedInputStream = new BufferedInputStream(baseStream);
        byte[] arrayOfByte = new byte['က'];
        for (;;)
        {
          int i = localBufferedInputStream.read(arrayOfByte);
          if (i == -1)
          {
            paramString.flush();
            IOUtils.closeQuietly(paramString);
            IOUtils.closeQuietly(baseStream);
            return;
          }
          paramString.write(arrayOfByte, 0, i);
        }
        IOUtils.closeQuietly(paramString);
      }
      finally {}
    }
    finally
    {
      paramString = localObject1;
      Object localObject2 = localObject3;
    }
    IOUtils.closeQuietly(baseStream);
    throw localObject1;
  }
  
  /* Error */
  public String readString()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 30	com/lidroid/xutils/http/ResponseStream:_directResult	Ljava/lang/String;
    //   4: ifnull +8 -> 12
    //   7: aload_0
    //   8: getfield 30	com/lidroid/xutils/http/ResponseStream:_directResult	Ljava/lang/String;
    //   11: areturn
    //   12: aload_0
    //   13: getfield 56	com/lidroid/xutils/http/ResponseStream:baseStream	Ljava/io/InputStream;
    //   16: ifnonnull +5 -> 21
    //   19: aconst_null
    //   20: areturn
    //   21: new 152	java/io/BufferedReader
    //   24: dup
    //   25: new 154	java/io/InputStreamReader
    //   28: dup
    //   29: aload_0
    //   30: getfield 56	com/lidroid/xutils/http/ResponseStream:baseStream	Ljava/io/InputStream;
    //   33: aload_0
    //   34: getfield 58	com/lidroid/xutils/http/ResponseStream:charset	Ljava/lang/String;
    //   37: invokespecial 157	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   40: invokespecial 160	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   43: astore_1
    //   44: new 162	java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   51: astore_2
    //   52: aload_1
    //   53: invokevirtual 166	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   56: astore_3
    //   57: aload_3
    //   58: ifnonnull +63 -> 121
    //   61: aload_0
    //   62: aload_2
    //   63: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: putfield 30	com/lidroid/xutils/http/ResponseStream:_directResult	Ljava/lang/String;
    //   69: aload_0
    //   70: getfield 60	com/lidroid/xutils/http/ResponseStream:requestUrl	Ljava/lang/String;
    //   73: ifnull +34 -> 107
    //   76: getstatic 175	com/lidroid/xutils/HttpUtils:sHttpCache	Lcom/lidroid/xutils/http/HttpCache;
    //   79: aload_0
    //   80: getfield 100	com/lidroid/xutils/http/ResponseStream:requestMethod	Ljava/lang/String;
    //   83: invokevirtual 181	com/lidroid/xutils/http/HttpCache:isEnabled	(Ljava/lang/String;)Z
    //   86: ifeq +21 -> 107
    //   89: getstatic 175	com/lidroid/xutils/HttpUtils:sHttpCache	Lcom/lidroid/xutils/http/HttpCache;
    //   92: aload_0
    //   93: getfield 60	com/lidroid/xutils/http/ResponseStream:requestUrl	Ljava/lang/String;
    //   96: aload_0
    //   97: getfield 30	com/lidroid/xutils/http/ResponseStream:_directResult	Ljava/lang/String;
    //   100: aload_0
    //   101: getfield 62	com/lidroid/xutils/http/ResponseStream:expiry	J
    //   104: invokevirtual 185	com/lidroid/xutils/http/HttpCache:put	(Ljava/lang/String;Ljava/lang/String;J)V
    //   107: aload_0
    //   108: getfield 30	com/lidroid/xutils/http/ResponseStream:_directResult	Ljava/lang/String;
    //   111: astore_1
    //   112: aload_0
    //   113: getfield 56	com/lidroid/xutils/http/ResponseStream:baseStream	Ljava/io/InputStream;
    //   116: invokestatic 145	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   119: aload_1
    //   120: areturn
    //   121: aload_2
    //   122: aload_3
    //   123: invokevirtual 189	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: pop
    //   127: goto -75 -> 52
    //   130: astore_1
    //   131: aload_0
    //   132: getfield 56	com/lidroid/xutils/http/ResponseStream:baseStream	Ljava/io/InputStream;
    //   135: invokestatic 145	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   138: aload_1
    //   139: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	this	ResponseStream
    //   43	77	1	localObject1	Object
    //   130	9	1	localObject2	Object
    //   51	71	2	localStringBuilder	StringBuilder
    //   56	67	3	str	String
    // Exception table:
    //   from	to	target	type
    //   21	52	130	finally
    //   52	57	130	finally
    //   61	107	130	finally
    //   107	112	130	finally
    //   121	127	130	finally
  }
  
  /* Error */
  public void reset()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 56	com/lidroid/xutils/http/ResponseStream:baseStream	Ljava/io/InputStream;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnonnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 56	com/lidroid/xutils/http/ResponseStream:baseStream	Ljava/io/InputStream;
    //   18: invokevirtual 192	java/io/InputStream:reset	()V
    //   21: goto -10 -> 11
    //   24: astore_1
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_1
    //   28: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	29	0	this	ResponseStream
    //   6	2	1	localInputStream	InputStream
    //   24	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	24	finally
    //   14	21	24	finally
  }
  
  void setRequestMethod(String paramString)
  {
    requestMethod = paramString;
  }
  
  public long skip(long paramLong)
    throws IOException
  {
    if (baseStream == null) {
      return 0L;
    }
    return baseStream.skip(paramLong);
  }
}
