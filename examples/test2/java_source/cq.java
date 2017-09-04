import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class cq
{
  private static cq jdField_a_of_type_Cq = new cq();
  private final char[] jdField_a_of_type_ArrayOfChar = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90 };
  
  public cq() {}
  
  public static cq a()
  {
    return jdField_a_of_type_Cq;
  }
  
  private String a(cr paramCr, String paramString)
  {
    cr localCr2 = null;
    cr localCr1 = null;
    try
    {
      paramCr = MessageDigest.getInstance(paramCr.name());
      localCr1 = paramCr;
      localCr2 = paramCr;
      paramCr.update(paramString.getBytes("UTF-8"));
    }
    catch (NoSuchAlgorithmException paramCr)
    {
      for (;;)
      {
        int i;
        System.out.println("NoSuchAlgorithmException caught!");
        paramCr = localCr1;
      }
    }
    catch (UnsupportedEncodingException paramCr)
    {
      for (;;)
      {
        int k;
        int j;
        paramCr.printStackTrace();
        paramCr = localCr2;
        continue;
        char c = jdField_a_of_type_ArrayOfChar[((j + k) % 36)];
      }
    }
    paramCr = paramCr.digest();
    paramString = new StringBuffer();
    i = 0;
    for (;;)
    {
      if (i >= paramCr.length) {
        break label153;
      }
      k = paramCr[i];
      j = k;
      if (k < 0) {
        j = Math.abs(k);
      }
      k = j / 36;
      if (k > 0) {
        break;
      }
      c = jdField_a_of_type_ArrayOfChar[j];
      paramString.append(c);
      i += 1;
    }
    label153:
    return paramString.toString();
  }
  
  public final String a(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 == null) || (paramString1.trim().equals(""))) {
      return null;
    }
    String str = paramString1;
    if (0L > 0L) {
      str = paramString1 + 0L;
    }
    paramString1 = a(cr.a, str + paramString2);
    return paramString3 + paramString1;
  }
}
