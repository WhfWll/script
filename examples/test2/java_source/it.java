import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.cert.CertificateFactory;

final class it
  implements jg
{
  private String a;
  
  public it(String paramString)
  {
    a = paramString;
  }
  
  public final Object a(jf paramJf)
    throws IOException
  {
    paramJf = new ByteArrayInputStream(paramJf.a());
    try
    {
      paramJf = CertificateFactory.getInstance("X.509", a).generateCertificate(paramJf);
      return paramJf;
    }
    catch (Exception paramJf)
    {
      throw new ip("problem parsing cert: " + paramJf.toString(), paramJf);
    }
  }
}
