package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.entity.AbstractHttpEntity;

public class InputStreamUploadEntity
  extends AbstractHttpEntity
  implements UploadEntity
{
  private static final int BUFFER_SIZE = 2048;
  private RequestCallBackHandler callBackHandler = null;
  private final InputStream content;
  private final long length;
  private long uploadedSize = 0L;
  
  public InputStreamUploadEntity(InputStream paramInputStream, long paramLong)
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException("Source input stream may not be null");
    }
    content = paramInputStream;
    length = paramLong;
  }
  
  public void consumeContent()
    throws IOException
  {
    content.close();
  }
  
  public InputStream getContent()
    throws IOException
  {
    return content;
  }
  
  public long getContentLength()
  {
    return length;
  }
  
  public boolean isRepeatable()
  {
    return false;
  }
  
  public boolean isStreaming()
  {
    return true;
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
    InputStream localInputStream = content;
    do
    {
      long l2;
      do
      {
        byte[] arrayOfByte;
        int i;
        do
        {
          do
          {
            try
            {
              arrayOfByte = new byte['ࠀ'];
              if (length < 0L)
              {
                do
                {
                  i = localInputStream.read(arrayOfByte);
                  if (i == -1)
                  {
                    paramOutputStream.flush();
                    if (callBackHandler != null) {
                      callBackHandler.updateProgress(length, uploadedSize, true);
                    }
                    return;
                  }
                  paramOutputStream.write(arrayOfByte, 0, i);
                  uploadedSize += i;
                } while ((callBackHandler == null) || (callBackHandler.updateProgress(uploadedSize + 1L, uploadedSize, false)));
                throw new InterruptedIOException("cancel");
              }
            }
            finally
            {
              IOUtils.closeQuietly(localInputStream);
            }
            l1 = length;
          } while (l1 <= 0L);
          i = localInputStream.read(arrayOfByte, 0, (int)Math.min(2048L, l1));
        } while (i == -1);
        paramOutputStream.write(arrayOfByte, 0, i);
        l2 = l1 - i;
        uploadedSize += i;
        l1 = l2;
      } while (callBackHandler == null);
      long l1 = l2;
    } while (callBackHandler.updateProgress(length, uploadedSize, false));
    throw new InterruptedIOException("cancel");
  }
}
