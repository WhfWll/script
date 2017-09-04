import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;

public final class jz
  implements kc
{
  private Class jdField_a_of_type_JavaLangClass;
  private Object jdField_a_of_type_JavaLangObject;
  private String jdField_a_of_type_JavaLangString;
  
  public jz(String paramString)
  {
    jdField_a_of_type_JavaLangString = paramString;
  }
  
  public final InputStream a()
    throws IOException
  {
    try
    {
      InputStream localInputStream = (InputStream)jdField_a_of_type_JavaLangClass.getMethod("getClientInputStream", new Class[0]).invoke(jdField_a_of_type_JavaLangObject, new Object[0]);
      return localInputStream;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public final OutputStream a()
    throws IOException
  {
    try
    {
      OutputStream localOutputStream = (OutputStream)jdField_a_of_type_JavaLangClass.getMethod("getClientOutputStream", new Class[0]).invoke(jdField_a_of_type_JavaLangObject, new Object[0]);
      return localOutputStream;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public final void a()
    throws IOException, jm
  {
    if (!at.b("com.ibm.mqttdirect.modules.local.bindings.LocalListener")) {
      throw at.a(32103);
    }
    try
    {
      jdField_a_of_type_JavaLangClass = Class.forName("com.ibm.mqttdirect.modules.local.bindings.LocalListener");
      jdField_a_of_type_JavaLangObject = jdField_a_of_type_JavaLangClass.getMethod("connect", new Class[] { String.class }).invoke(null, new Object[] { jdField_a_of_type_JavaLangString });
      if (jdField_a_of_type_JavaLangObject == null) {
        throw at.a(32103);
      }
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public final void b()
    throws IOException
  {
    if (jdField_a_of_type_JavaLangObject != null) {}
    try
    {
      jdField_a_of_type_JavaLangClass.getMethod("close", new Class[0]).invoke(jdField_a_of_type_JavaLangObject, new Object[0]);
      return;
    }
    catch (Exception localException) {}
  }
}
