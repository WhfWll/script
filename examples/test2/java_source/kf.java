import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.Socket;
import javax.net.SocketFactory;

public class kf
  implements kc
{
  private int jdField_a_of_type_Int;
  private String jdField_a_of_type_JavaLangString;
  protected Socket a;
  private SocketFactory jdField_a_of_type_JavaxNetSocketFactory;
  protected kk a;
  
  public kf(kk paramKk, SocketFactory paramSocketFactory, String paramString, int paramInt)
  {
    jdField_a_of_type_JavaxNetSocketFactory = paramSocketFactory;
    jdField_a_of_type_JavaLangString = paramString;
    jdField_a_of_type_Int = paramInt;
    jdField_a_of_type_Kk = paramKk;
  }
  
  public final InputStream a()
    throws IOException
  {
    return jdField_a_of_type_JavaNetSocket.getInputStream();
  }
  
  public final OutputStream a()
    throws IOException
  {
    return jdField_a_of_type_JavaNetSocket.getOutputStream();
  }
  
  public void a()
    throws IOException, jm
  {
    try
    {
      jdField_a_of_type_JavaNetSocket = jdField_a_of_type_JavaxNetSocketFactory.createSocket(jdField_a_of_type_JavaLangString, jdField_a_of_type_Int);
      jdField_a_of_type_JavaNetSocket.setTcpNoDelay(true);
      return;
    }
    catch (ConnectException localConnectException)
    {
      jdField_a_of_type_Kk.a(250, null, localConnectException);
      throw at.a(32103);
    }
  }
  
  public final void b()
    throws IOException
  {
    if (jdField_a_of_type_JavaNetSocket != null) {
      jdField_a_of_type_JavaNetSocket.close();
    }
  }
}
