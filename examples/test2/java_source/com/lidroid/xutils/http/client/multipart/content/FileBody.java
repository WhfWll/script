package com.lidroid.xutils.http.client.multipart.content;

import com.lidroid.xutils.http.client.multipart.MultipartEntity.CallBackInfo;
import com.lidroid.xutils.util.IOUtils;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;

public class FileBody
  extends AbstractContentBody
{
  private final String charset;
  private final File file;
  private final String filename;
  
  public FileBody(File paramFile)
  {
    this(paramFile, null, "application/octet-stream", null);
  }
  
  public FileBody(File paramFile, String paramString)
  {
    this(paramFile, null, paramString, null);
  }
  
  public FileBody(File paramFile, String paramString1, String paramString2)
  {
    this(paramFile, null, paramString1, paramString2);
  }
  
  public FileBody(File paramFile, String paramString1, String paramString2, String paramString3)
  {
    super(paramString2);
    if (paramFile == null) {
      throw new IllegalArgumentException("File may not be null");
    }
    file = paramFile;
    if (paramString1 != null) {}
    for (filename = paramString1;; filename = paramFile.getName())
    {
      charset = paramString3;
      return;
    }
  }
  
  public String getCharset()
  {
    return charset;
  }
  
  public long getContentLength()
  {
    return file.length();
  }
  
  public File getFile()
  {
    return file;
  }
  
  public String getFilename()
  {
    return filename;
  }
  
  public InputStream getInputStream()
    throws IOException
  {
    return new FileInputStream(file);
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
            IOUtils.closeQuietly((Closeable)localObject1);
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
