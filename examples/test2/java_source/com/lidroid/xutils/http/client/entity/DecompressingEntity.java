package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

abstract class DecompressingEntity
  extends HttpEntityWrapper
  implements UploadEntity
{
  private RequestCallBackHandler callBackHandler = null;
  private InputStream content;
  private long uncompressedLength;
  private long uploadedSize = 0L;
  
  public DecompressingEntity(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity);
    uncompressedLength = paramHttpEntity.getContentLength();
  }
  
  private InputStream getDecompressingStream()
    throws IOException
  {
    Object localObject = null;
    try
    {
      InputStream localInputStream = wrappedEntity.getContent();
      localObject = localInputStream;
      localInputStream = decorate(localInputStream);
      return localInputStream;
    }
    catch (IOException localIOException)
    {
      IOUtils.closeQuietly(localObject);
      throw localIOException;
    }
  }
  
  abstract InputStream decorate(InputStream paramInputStream)
    throws IOException;
  
  public InputStream getContent()
    throws IOException
  {
    if (wrappedEntity.isStreaming())
    {
      if (content == null) {
        content = getDecompressingStream();
      }
      return content;
    }
    return getDecompressingStream();
  }
  
  public long getContentLength()
  {
    return -1L;
  }
  
  public void setCallBackHandler(RequestCallBackHandler paramRequestCallBackHandler)
  {
    callBackHandler = paramRequestCallBackHandler;
  }
  
  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("Output stream may not be null");
    }
    Object localObject = null;
    try
    {
      InputStream localInputStream = getContent();
      localObject = localInputStream;
      byte[] arrayOfByte = new byte['က'];
      do
      {
        do
        {
          localObject = localInputStream;
          int i = localInputStream.read(arrayOfByte);
          if (i == -1)
          {
            localObject = localInputStream;
            paramOutputStream.flush();
            localObject = localInputStream;
            if (callBackHandler != null)
            {
              localObject = localInputStream;
              callBackHandler.updateProgress(uncompressedLength, uploadedSize, true);
            }
            return;
          }
          localObject = localInputStream;
          paramOutputStream.write(arrayOfByte, 0, i);
          localObject = localInputStream;
          uploadedSize += i;
          localObject = localInputStream;
        } while (callBackHandler == null);
        localObject = localInputStream;
      } while (callBackHandler.updateProgress(uncompressedLength, uploadedSize, false));
      localObject = localInputStream;
      throw new InterruptedIOException("cancel");
    }
    finally
    {
      IOUtils.closeQuietly(localObject);
    }
  }
}
