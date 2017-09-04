import java.io.IOException;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class ke
  extends kf
{
  public int a;
  private String[] a;
  
  public ke(kk paramKk, SSLSocketFactory paramSSLSocketFactory, String paramString, int paramInt)
  {
    super(paramKk, paramSSLSocketFactory, paramString, paramInt);
  }
  
  public final void a()
    throws IOException, jm
  {
    super.a();
    a(jdField_a_of_type_ArrayOfJavaLangString);
    int i = jdField_a_of_type_JavaNetSocket.getSoTimeout();
    if (i == 0) {
      jdField_a_of_type_JavaNetSocket.setSoTimeout(jdField_a_of_type_Int * 1000);
    }
    ((SSLSocket)jdField_a_of_type_JavaNetSocket).startHandshake();
    jdField_a_of_type_JavaNetSocket.setSoTimeout(i);
  }
  
  public final void a(String[] paramArrayOfString)
  {
    jdField_a_of_type_ArrayOfJavaLangString = paramArrayOfString;
    if ((jdField_a_of_type_JavaNetSocket != null) && (paramArrayOfString != null))
    {
      if (jdField_a_of_type_Kk.a())
      {
        String str1 = "";
        int i = 0;
        while (i < paramArrayOfString.length)
        {
          String str2 = str1;
          if (i > 0) {
            str2 = str1 + ",";
          }
          str1 = str2 + paramArrayOfString[i];
          i += 1;
        }
        jdField_a_of_type_Kk.a(260, new Object[] { str1 });
      }
      ((SSLSocket)jdField_a_of_type_JavaNetSocket).setEnabledCipherSuites(paramArrayOfString);
    }
  }
}
