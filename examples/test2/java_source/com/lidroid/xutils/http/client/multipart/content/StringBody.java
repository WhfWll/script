package com.lidroid.xutils.http.client.multipart.content;

import com.lidroid.xutils.http.client.multipart.MultipartEntity.CallBackInfo;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

public class StringBody
  extends AbstractContentBody
{
  private final Charset charset;
  private final byte[] content;
  
  public StringBody(String paramString)
    throws UnsupportedEncodingException
  {
    this(paramString, "text/plain", null);
  }
  
  public StringBody(String paramString1, String paramString2, Charset paramCharset)
    throws UnsupportedEncodingException
  {
    super(paramString2);
    if (paramString1 == null) {
      throw new IllegalArgumentException("Text may not be null");
    }
    paramString2 = paramCharset;
    if (paramCharset == null) {
      paramString2 = Charset.forName("UTF-8");
    }
    content = paramString1.getBytes(paramString2.name());
    charset = paramString2;
  }
  
  public StringBody(String paramString, Charset paramCharset)
    throws UnsupportedEncodingException
  {
    this(paramString, "text/plain", paramCharset);
  }
  
  public static StringBody create(String paramString)
    throws IllegalArgumentException
  {
    return create(paramString, null, null);
  }
  
  public static StringBody create(String paramString1, String paramString2, Charset paramCharset)
    throws IllegalArgumentException
  {
    try
    {
      paramString1 = new StringBody(paramString1, paramString2, paramCharset);
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new IllegalArgumentException("Charset " + paramCharset + " is not supported", paramString1);
    }
  }
  
  public static StringBody create(String paramString, Charset paramCharset)
    throws IllegalArgumentException
  {
    return create(paramString, null, paramCharset);
  }
  
  public String getCharset()
  {
    return charset.name();
  }
  
  public long getContentLength()
  {
    return content.length;
  }
  
  public String getFilename()
  {
    return null;
  }
  
  public Reader getReader()
  {
    return new InputStreamReader(new ByteArrayInputStream(content), charset);
  }
  
  public String getTransferEncoding()
  {
    return "8bit";
  }
  
  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("Output stream may not be null");
    }
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(content);
    byte[] arrayOfByte = new byte['က'];
    do
    {
      int i = localByteArrayInputStream.read(arrayOfByte);
      if (i == -1)
      {
        paramOutputStream.flush();
        return;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
      MultipartEntity.CallBackInfo localCallBackInfo = callBackInfo;
      pos += i;
    } while (callBackInfo.doCallBack(false));
    throw new InterruptedIOException("cancel");
  }
}
