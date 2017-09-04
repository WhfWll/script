import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

public class km
  implements kl
{
  private int jdField_a_of_type_Int;
  private long jdField_a_of_type_Long = 0L;
  private ByteArrayOutputStream jdField_a_of_type_JavaIoByteArrayOutputStream;
  private DataOutputStream jdField_a_of_type_JavaIoDataOutputStream;
  private File jdField_a_of_type_JavaIoFile;
  private FileOutputStream jdField_a_of_type_JavaIoFileOutputStream;
  private Properties jdField_a_of_type_JavaUtilProperties = new Properties();
  private boolean jdField_a_of_type_Boolean = false;
  private int jdField_b_of_type_Int;
  private File jdField_b_of_type_JavaIoFile;
  private int c = 0;
  private int d = 0;
  
  public km()
  {
    String str = System.getProperty("org.eclipse.paho.client.mqttv3.trace");
    if (str == null) {}
    for (jdField_a_of_type_JavaIoFile = new File(System.getProperty("user.dir"), "mqtt-trace.properties");; jdField_a_of_type_JavaIoFile = new File(str))
    {
      a();
      return;
    }
  }
  
  private void a()
  {
    if (jdField_a_of_type_JavaIoFileOutputStream != null) {}
    try
    {
      jdField_a_of_type_JavaIoFileOutputStream.close();
      jdField_a_of_type_JavaIoFileOutputStream = null;
      d = 0;
      File localFile = new File(jdField_b_of_type_JavaIoFile, "mqtt-" + c + ".trc");
      if (localFile.exists()) {
        localFile.delete();
      }
      try
      {
        jdField_a_of_type_JavaIoFileOutputStream = new FileOutputStream(localFile);
        return;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        jdField_a_of_type_Boolean = false;
        jdField_a_of_type_JavaIoFileOutputStream = null;
        return;
      }
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  private boolean a()
  {
    if (jdField_a_of_type_JavaIoFile.exists())
    {
      if (jdField_a_of_type_JavaIoFile.lastModified() != jdField_a_of_type_Long)
      {
        try
        {
          jdField_a_of_type_JavaUtilProperties.load(new FileInputStream(jdField_a_of_type_JavaIoFile));
          jdField_a_of_type_Long = jdField_a_of_type_JavaIoFile.lastModified();
          jdField_b_of_type_JavaIoFile = new File(jdField_a_of_type_JavaUtilProperties.getProperty("org.eclipse.paho.client.mqttv3.trace.outputName", System.getProperty("user.dir")));
          if (!jdField_b_of_type_JavaIoFile.exists())
          {
            jdField_a_of_type_JavaUtilProperties.clear();
            jdField_a_of_type_Long = 0L;
            jdField_a_of_type_Boolean = false;
            return false;
          }
        }
        catch (Exception localException)
        {
          jdField_a_of_type_JavaUtilProperties.clear();
          jdField_a_of_type_Long = 0L;
          jdField_a_of_type_Boolean = false;
          return false;
        }
        jdField_a_of_type_Int = Integer.parseInt(jdField_a_of_type_JavaUtilProperties.getProperty("org.eclipse.paho.client.mqttv3.trace.count", "1"));
        jdField_b_of_type_Int = Integer.parseInt(jdField_a_of_type_JavaUtilProperties.getProperty("org.eclipse.paho.client.mqttv3.trace.limit", "5000000"));
        a();
        if (jdField_a_of_type_JavaIoFileOutputStream == null)
        {
          jdField_a_of_type_JavaUtilProperties.clear();
          jdField_a_of_type_Long = 0L;
          jdField_a_of_type_Boolean = false;
          return false;
        }
        jdField_a_of_type_JavaIoByteArrayOutputStream = new ByteArrayOutputStream();
        jdField_a_of_type_JavaIoDataOutputStream = new DataOutputStream(jdField_a_of_type_JavaIoByteArrayOutputStream);
        jdField_a_of_type_Boolean = true;
        return true;
      }
      return jdField_a_of_type_Boolean;
    }
    jdField_a_of_type_JavaUtilProperties.clear();
    jdField_a_of_type_Long = 0L;
    jdField_a_of_type_Boolean = false;
    return false;
  }
  
  public final void a(kn paramKn)
  {
    int k = 0;
    for (;;)
    {
      int i;
      try
      {
        jdField_a_of_type_JavaIoDataOutputStream.writeShort(jdField_a_of_type_Short);
        jdField_a_of_type_JavaIoDataOutputStream.writeLong(jdField_a_of_type_Long);
        int j = jdField_a_of_type_Byte;
        i = j;
        if (jdField_a_of_type_ArrayOfJavaLangObject != null)
        {
          i = j;
          if (jdField_a_of_type_ArrayOfJavaLangObject.length > 0) {
            i = (byte)(j | 0x20);
          }
        }
        j = i;
        if (jdField_a_of_type_JavaLangThrowable != null) {
          j = (byte)(i | 0x40);
        }
        jdField_a_of_type_JavaIoDataOutputStream.writeByte(j);
        jdField_a_of_type_JavaIoDataOutputStream.writeShort(b);
        jdField_a_of_type_JavaIoDataOutputStream.writeUTF(jdField_a_of_type_JavaLangString);
        if ((jdField_a_of_type_ArrayOfJavaLangObject != null) && (jdField_a_of_type_ArrayOfJavaLangObject.length > 0))
        {
          jdField_a_of_type_JavaIoDataOutputStream.writeShort(jdField_a_of_type_ArrayOfJavaLangObject.length);
          i = 0;
          if (i < jdField_a_of_type_ArrayOfJavaLangObject.length) {
            if (jdField_a_of_type_ArrayOfJavaLangObject[i] != null) {
              jdField_a_of_type_JavaIoDataOutputStream.writeUTF(jdField_a_of_type_ArrayOfJavaLangObject[i].toString());
            } else {
              jdField_a_of_type_JavaIoDataOutputStream.writeUTF("null");
            }
          }
        }
      }
      catch (Exception paramKn)
      {
        jdField_a_of_type_Boolean = false;
        return;
        if (jdField_a_of_type_JavaLangThrowable != null)
        {
          StackTraceElement[] arrayOfStackTraceElement = jdField_a_of_type_JavaLangThrowable.getStackTrace();
          jdField_a_of_type_JavaIoDataOutputStream.writeShort(arrayOfStackTraceElement.length + 1);
          jdField_a_of_type_JavaIoDataOutputStream.writeUTF(jdField_a_of_type_JavaLangThrowable.toString());
          i = k;
          if (i < arrayOfStackTraceElement.length)
          {
            jdField_a_of_type_JavaIoDataOutputStream.writeUTF(arrayOfStackTraceElement[i].toString());
            i += 1;
            continue;
          }
        }
        if ((jdField_a_of_type_Int > 1) && (d + jdField_a_of_type_JavaIoByteArrayOutputStream.size() > jdField_b_of_type_Int))
        {
          c += 1;
          if (c == jdField_a_of_type_Int) {
            c = 0;
          }
          a();
        }
        if (jdField_a_of_type_JavaIoFileOutputStream != null)
        {
          d += jdField_a_of_type_JavaIoByteArrayOutputStream.size();
          jdField_a_of_type_JavaIoByteArrayOutputStream.writeTo(jdField_a_of_type_JavaIoFileOutputStream);
          jdField_a_of_type_JavaIoFileOutputStream.flush();
        }
        jdField_a_of_type_JavaIoByteArrayOutputStream.reset();
        continue;
      }
      finally {}
      i += 1;
    }
  }
  
  public final boolean a(String paramString)
  {
    return (jdField_a_of_type_Boolean) && (("on".equalsIgnoreCase(jdField_a_of_type_JavaUtilProperties.getProperty("org.eclipse.paho.client.mqttv3.trace.client.*.status"))) || ("on".equalsIgnoreCase(jdField_a_of_type_JavaUtilProperties.getProperty("org.eclipse.paho.client.mqttv3.trace.client." + paramString + ".status"))));
  }
}
