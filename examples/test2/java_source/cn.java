import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

public final class cn
  implements HostnameVerifier
{
  private static final Pattern a = Pattern.compile("^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$");
  
  public cn() {}
  
  private static List<String> a(X509Certificate paramX509Certificate, int paramInt)
  {
    localArrayList = new ArrayList();
    try
    {
      paramX509Certificate = paramX509Certificate.getSubjectAlternativeNames();
      if (paramX509Certificate == null) {
        return Collections.emptyList();
      }
      paramX509Certificate = paramX509Certificate.iterator();
      while (paramX509Certificate.hasNext())
      {
        Object localObject = (List)paramX509Certificate.next();
        if ((localObject != null) && (((List)localObject).size() >= 2))
        {
          Integer localInteger = (Integer)((List)localObject).get(0);
          if ((localInteger != null) && (localInteger.intValue() == paramInt))
          {
            localObject = (String)((List)localObject).get(1);
            if (localObject != null) {
              localArrayList.add(localObject);
            }
          }
        }
      }
      return localArrayList;
    }
    catch (CertificateParsingException paramX509Certificate)
    {
      return Collections.emptyList();
    }
  }
  
  private static boolean a(String paramString1, String paramString2)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramString1 == null) || (paramString1.isEmpty()) || (paramString2 == null) || (paramString2.isEmpty())) {
      bool1 = false;
    }
    int i;
    int j;
    int k;
    do
    {
      do
      {
        return bool1;
        paramString2 = paramString2.toLowerCase(Locale.US);
        if (!paramString2.contains("*")) {
          return paramString1.equals(paramString2);
        }
        if (!paramString2.startsWith("*.")) {
          break;
        }
        bool1 = bool2;
      } while (paramString1.regionMatches(0, paramString2, 2, paramString2.length() - 2));
      i = paramString2.indexOf('*');
      if (i > paramString2.indexOf('.')) {
        return false;
      }
      if (!paramString1.regionMatches(0, paramString2, 0, i)) {
        return false;
      }
      j = paramString2.length() - (i + 1);
      k = paramString1.length() - j;
      if ((paramString1.indexOf('.', i) < k) && (!paramString1.endsWith(".clients.google.com"))) {
        return false;
      }
      bool1 = bool2;
    } while (paramString1.regionMatches(k, paramString2, i + 1, j));
    return false;
  }
  
  private static boolean a(String paramString, X509Certificate paramX509Certificate)
  {
    paramString = paramString.toLowerCase(Locale.US);
    Iterator localIterator = a(paramX509Certificate, 2).iterator();
    for (int i = 0; localIterator.hasNext(); i = 1) {
      if (a(paramString, (String)localIterator.next())) {
        return true;
      }
    }
    if (i == 0)
    {
      paramX509Certificate = new co(paramX509Certificate.getSubjectX500Principal()).a("cn");
      if (paramX509Certificate != null) {
        return a(paramString, paramX509Certificate);
      }
    }
    return false;
  }
  
  public final boolean verify(String paramString, SSLSession paramSSLSession)
  {
    int i;
    try
    {
      paramSSLSession = (X509Certificate)paramSSLSession.getPeerCertificates()[0];
      if (a.matcher(paramString).matches())
      {
        Iterator localIterator = a(paramSSLSession, 7).iterator();
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
        } while (!paramString.equalsIgnoreCase((String)localIterator.next()));
        i = 1;
      }
      else
      {
        if (a(paramString, paramSSLSession)) {
          break label100;
        }
        boolean bool = a("sdk.arrownock.com", paramSSLSession);
        if (bool) {
          break label100;
        }
        return false;
      }
    }
    catch (SSLException paramString)
    {
      return false;
    }
    while (i != 0)
    {
      label100:
      return true;
      i = 0;
    }
  }
}
