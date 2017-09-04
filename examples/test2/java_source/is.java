import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPublicKeySpec;

final class is
  extends ir
{
  private String a;
  
  public is(iq paramIq, String paramString1, String paramString2)
  {
    super(paramIq, paramString1);
    a = paramString2;
  }
  
  public final Object a(jf paramJf)
    throws IOException
  {
    try
    {
      paramJf = a(paramJf);
      if (paramJf.b() != 9) {
        throw new ip("malformed sequence in RSA private key");
      }
    }
    catch (IOException paramJf)
    {
      throw paramJf;
      if ((paramJf instanceof ie)) {
        paramJf = (ie)paramJf;
      }
      for (;;)
      {
        RSAPublicKeySpec localRSAPublicKeySpec = new RSAPublicKeySpec(a, b);
        paramJf = new RSAPrivateCrtKeySpec(a, b, c, d, e, f, g, h);
        KeyFactory localKeyFactory = KeyFactory.getInstance("RSA", a);
        return new KeyPair(localKeyFactory.generatePublic(localRSAPublicKeySpec), localKeyFactory.generatePrivate(paramJf));
        if (paramJf != null) {
          paramJf = new ie(fw.a(paramJf));
        } else {
          paramJf = null;
        }
      }
    }
    catch (Exception paramJf)
    {
      throw new ip("problem creating RSA private key: " + paramJf.toString(), paramJf);
    }
  }
}
