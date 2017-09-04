import java.math.BigInteger;
import java.util.Enumeration;

public final class ie
  extends fo
{
  private fw a;
  public BigInteger a;
  public BigInteger b;
  public BigInteger c;
  public BigInteger d;
  public BigInteger e;
  public BigInteger f;
  public BigInteger g;
  public BigInteger h;
  private BigInteger i;
  
  public ie(fw paramFw)
  {
    jdField_a_of_type_Fw = null;
    paramFw = paramFw.a();
    BigInteger localBigInteger = ((fm)paramFw.nextElement()).a();
    if ((localBigInteger.intValue() != 0) && (localBigInteger.intValue() != 1)) {
      throw new IllegalArgumentException("wrong version for RSA private key");
    }
    i = localBigInteger;
    jdField_a_of_type_JavaMathBigInteger = ((fm)paramFw.nextElement()).a();
    b = ((fm)paramFw.nextElement()).a();
    c = ((fm)paramFw.nextElement()).a();
    d = ((fm)paramFw.nextElement()).a();
    e = ((fm)paramFw.nextElement()).a();
    f = ((fm)paramFw.nextElement()).a();
    g = ((fm)paramFw.nextElement()).a();
    h = ((fm)paramFw.nextElement()).a();
    if (paramFw.hasMoreElements()) {
      jdField_a_of_type_Fw = ((fw)paramFw.nextElement());
    }
  }
  
  public final fv b()
  {
    fh localFh = new fh();
    localFh.a(new fm(i));
    localFh.a(new fm(jdField_a_of_type_JavaMathBigInteger));
    localFh.a(new fm(b));
    localFh.a(new fm(c));
    localFh.a(new fm(d));
    localFh.a(new fm(e));
    localFh.a(new fm(f));
    localFh.a(new fm(g));
    localFh.a(new fm(h));
    if (jdField_a_of_type_Fw != null) {
      localFh.a(jdField_a_of_type_Fw);
    }
    return new hi(localFh);
  }
}
