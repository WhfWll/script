package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.entity.FileEntity;

public class FileUploadEntity
  extends FileEntity
  implements UploadEntity
{
  private RequestCallBackHandler callBackHandler = null;
  private long fileSize;
  private long uploadedSize = 0L;
  
  public FileUploadEntity(File paramFile, String paramString)
  {
    super(paramFile, paramString);
    fileSize = paramFile.length();
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
    byte[] arrayOfByte = null;
    try
    {
      localObject1 = new BufferedInputStream(new FileInputStream(file));
      try
      {
        arrayOfByte = new byte['က'];
        do
        {
          int i = ((BufferedInputStream)localObject1).read(arrayOfByte);
          if (i == -1)
          {
            paramOutputStream.flush();
            if (callBackHandler != null) {
              callBackHandler.updateProgress(fileSize, uploadedSize, true);
            }
            IOUtils.closeQuietly((Closeable)localObject1);
            return;
          }
          paramOutputStream.write(arrayOfByte, 0, i);
          uploadedSize += i;
        } while ((callBackHandler == null) || (callBackHandler.updateProgress(fileSize, uploadedSize, false)));
        throw new InterruptedIOException("cancel");
      }
      finally
      {
        paramOutputStream = (OutputStream)localObject1;
        localObject1 = localObject3;
      }
    }
    finally
    {
      Object localObject1;
      paramOutputStream = localObject3;
    }
    IOUtils.closeQuietly(paramOutputStream);
    throw ((Throwable)localObject1);
  }
}
