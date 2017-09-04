import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

final class fc
  implements HttpEntity
{
  private static final char[] jdField_a_of_type_ArrayOfChar = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  private ByteArrayOutputStream jdField_a_of_type_JavaIoByteArrayOutputStream = new ByteArrayOutputStream();
  private String jdField_a_of_type_JavaLangString = null;
  private boolean jdField_a_of_type_Boolean = false;
  private boolean b = false;
  
  public fc()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Random localRandom = new Random();
    while (i < 30)
    {
      localStringBuffer.append(jdField_a_of_type_ArrayOfChar[localRandom.nextInt(jdField_a_of_type_ArrayOfChar.length)]);
      i += 1;
    }
    jdField_a_of_type_JavaLangString = localStringBuffer.toString();
  }
  
  private void a()
  {
    if (!b) {}
    try
    {
      jdField_a_of_type_JavaIoByteArrayOutputStream.write(("--" + jdField_a_of_type_JavaLangString + "\r\n").getBytes());
      b = true;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  public final void a(String paramString1, String paramString2)
  {
    a();
    try
    {
      jdField_a_of_type_JavaIoByteArrayOutputStream.write(("Content-Disposition: form-data; name=\"" + paramString1 + "\"\r\n\r\n").getBytes());
      jdField_a_of_type_JavaIoByteArrayOutputStream.write(paramString2.getBytes());
      jdField_a_of_type_JavaIoByteArrayOutputStream.write(("\r\n--" + jdField_a_of_type_JavaLangString + "\r\n").getBytes());
      return;
    }
    catch (IOException paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  public final void a(String paramString1, String paramString2, InputStream paramInputStream, boolean paramBoolean)
  {
    a();
    try
    {
      String str = "Content-Type: " + "application/octet-stream" + "\r\n";
      jdField_a_of_type_JavaIoByteArrayOutputStream.write(("Content-Disposition: form-data; name=\"" + paramString1 + "\"; filename=\"" + paramString2 + "\"\r\n").getBytes());
      jdField_a_of_type_JavaIoByteArrayOutputStream.write(str.getBytes());
      jdField_a_of_type_JavaIoByteArrayOutputStream.write("Content-Transfer-Encoding: binary\r\n\r\n".getBytes());
      paramString1 = new byte['က'];
      for (;;)
      {
        int i = paramInputStream.read(paramString1);
        if (i == -1) {
          break;
        }
        jdField_a_of_type_JavaIoByteArrayOutputStream.write(paramString1, 0, i);
      }
      try
      {
        paramInputStream.close();
        throw paramString1;
      }
      catch (IOException paramString2)
      {
        for (;;)
        {
          paramString2.printStackTrace();
        }
      }
    }
    catch (IOException paramString1)
    {
      paramString1 = paramString1;
      paramString1.printStackTrace();
      try
      {
        paramInputStream.close();
        return;
      }
      catch (IOException paramString1)
      {
        paramString1.printStackTrace();
        return;
      }
      if (!paramBoolean) {
        jdField_a_of_type_JavaIoByteArrayOutputStream.write(("\r\n--" + jdField_a_of_type_JavaLangString + "\r\n").getBytes());
      }
      jdField_a_of_type_JavaIoByteArrayOutputStream.flush();
      try
      {
        paramInputStream.close();
        return;
      }
      catch (IOException paramString1)
      {
        paramString1.printStackTrace();
        return;
      }
    }
    finally {}
  }
  
  public final void consumeContent()
    throws IOException, UnsupportedOperationException
  {
    if (isStreaming()) {
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
    }
  }
  
  public final InputStream getContent()
    throws IOException, UnsupportedOperationException
  {
    return new ByteArrayInputStream(jdField_a_of_type_JavaIoByteArrayOutputStream.toByteArray());
  }
  
  public final Header getContentEncoding()
  {
    return null;
  }
  
  public final long getContentLength()
  {
    if (!jdField_a_of_type_Boolean) {}
    try
    {
      jdField_a_of_type_JavaIoByteArrayOutputStream.write(("\r\n--" + jdField_a_of_type_JavaLangString + "--\r\n").getBytes());
      jdField_a_of_type_Boolean = true;
      return jdField_a_of_type_JavaIoByteArrayOutputStream.toByteArray().length;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  public final Header getContentType()
  {
    return new BasicHeader("Content-Type", "multipart/form-data; boundary=" + jdField_a_of_type_JavaLangString);
  }
  
  public final boolean isChunked()
  {
    return false;
  }
  
  public final boolean isRepeatable()
  {
    return false;
  }
  
  public final boolean isStreaming()
  {
    return false;
  }
  
  public final void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    paramOutputStream.write(jdField_a_of_type_JavaIoByteArrayOutputStream.toByteArray());
  }
}
