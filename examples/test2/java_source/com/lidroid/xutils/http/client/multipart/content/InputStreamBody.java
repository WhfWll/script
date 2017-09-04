package com.lidroid.xutils.http.client.multipart.content;

import com.lidroid.xutils.http.client.multipart.MultipartEntity.CallBackInfo;
import com.lidroid.xutils.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;

public class InputStreamBody
  extends AbstractContentBody
{
  private final String filename;
  private final InputStream in;
  private long length;
  
  public InputStreamBody(InputStream paramInputStream, long paramLong)
  {
    this(paramInputStream, paramLong, "no_name", "application/octet-stream");
  }
  
  public InputStreamBody(InputStream paramInputStream, long paramLong, String paramString)
  {
    this(paramInputStream, paramLong, paramString, "application/octet-stream");
  }
  
  public InputStreamBody(InputStream paramInputStream, long paramLong, String paramString1, String paramString2)
  {
    super(paramString2);
    if (paramInputStream == null) {
      throw new IllegalArgumentException("Input stream may not be null");
    }
    in = paramInputStream;
    filename = paramString1;
    length = paramLong;
  }
  
  public String getCharset()
  {
    return null;
  }
  
  public long getContentLength()
  {
    return length;
  }
  
  public String getFilename()
  {
    return filename;
  }
  
  public InputStream getInputStream()
  {
    return in;
  }
  
  public String getTransferEncoding()
  {
    return "binary";
  }
  
  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("Output stream may not be null");
    }
    try
    {
      byte[] arrayOfByte = new byte['က'];
      do
      {
        int i = in.read(arrayOfByte);
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
    finally
    {
      IOUtils.closeQuietly(in);
    }
  }
}
