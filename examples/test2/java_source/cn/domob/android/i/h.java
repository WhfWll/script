package cn.domob.android.i;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;

public class h
{
  private static f a = new f(h.class.getSimpleName());
  private static final String b = "DES";
  
  public h() {}
  
  public static int a(int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2) {}
    for (;;)
    {
      int i = 2;
      int m = 1;
      int j = paramInt1;
      paramInt1 = i;
      i = paramInt2;
      paramInt2 = j;
      while (paramInt1 <= i)
      {
        int n = m;
        int k = paramInt2;
        j = i;
        if (i % paramInt1 == 0)
        {
          n = m;
          k = paramInt2;
          j = i;
          if (paramInt2 % paramInt1 == 0)
          {
            n = m * paramInt1;
            j = i / paramInt1;
            k = paramInt2 / paramInt1;
          }
        }
        paramInt1 += 1;
        m = n;
        paramInt2 = k;
        i = j;
      }
      return m;
      i = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = i;
    }
  }
  
  public static String a()
  {
    return new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.CHINESE).format(new Date());
  }
  
  public static String a(int paramInt)
  {
    Random localRandom = new Random();
    int i = 0;
    Object localObject2 = "";
    if (i < paramInt)
    {
      String str;
      label35:
      int j;
      label59:
      Object localObject1;
      if (localRandom.nextInt(2) % 2 == 0)
      {
        str = "char";
        if (!"char".equalsIgnoreCase(str)) {
          break label111;
        }
        if (localRandom.nextInt(2) % 2 != 0) {
          break label105;
        }
        j = 65;
        localObject1 = (String)localObject2 + (char)(j + localRandom.nextInt(26));
      }
      for (;;)
      {
        i += 1;
        localObject2 = localObject1;
        break;
        str = "num";
        break label35;
        label105:
        j = 97;
        break label59;
        label111:
        localObject1 = localObject2;
        if ("num".equalsIgnoreCase(str)) {
          localObject1 = (String)localObject2 + String.valueOf(localRandom.nextInt(10));
        }
      }
    }
    return localObject2;
  }
  
  public static String a(String paramString1, String paramString2)
  {
    try
    {
      Object localObject = paramString1.getBytes("UTF-8");
      paramString1 = new byte[16];
      System.arraycopy(localObject, 0, paramString1, 0, Math.min(localObject.length, 16));
      paramString2 = paramString2.getBytes("UTF-8");
      paramString1 = new SecretKeySpec(paramString1, "AES");
      localObject = Cipher.getInstance("AES/ECB/PKCS7Padding");
      ((Cipher)localObject).init(1, paramString1);
      paramString1 = new String(b.b(((Cipher)localObject).doFinal(paramString2), 2));
      return paramString1;
    }
    catch (Exception paramString1) {}
    return "";
  }
  
  public static String a(HashMap<String, String> paramHashMap)
  {
    Object localObject;
    StringBuilder localStringBuilder;
    try
    {
      localObject = new ArrayList();
      localStringBuilder = new StringBuilder();
      Iterator localIterator = paramHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ((List)localObject).add(new BasicNameValuePair(str, (String)paramHashMap.get(str)));
      }
      paramHashMap = new BufferedReader(new InputStreamReader(new UrlEncodedFormEntity((List)localObject, "UTF-8").getContent()));
    }
    catch (Exception paramHashMap)
    {
      a.a(paramHashMap);
      return null;
    }
    for (;;)
    {
      localObject = paramHashMap.readLine();
      if (localObject == null) {
        break;
      }
      localStringBuilder.append((String)localObject);
    }
    paramHashMap = localStringBuilder.toString();
    return paramHashMap;
  }
  
  public static HashMap<String, String> a(String paramString)
  {
    HashMap localHashMap = new HashMap();
    String[] arrayOfString1;
    int j;
    int i;
    if (paramString != null)
    {
      arrayOfString1 = paramString.split("&");
      j = arrayOfString1.length;
      i = 0;
    }
    for (;;)
    {
      if (i < j)
      {
        String[] arrayOfString2 = arrayOfString1[i].split("=");
        try
        {
          if (arrayOfString2.length == 2) {
            localHashMap.put(URLDecoder.decode(arrayOfString2[0], "UTF-8"), URLDecoder.decode(arrayOfString2[1], "UTF-8"));
          } else {
            localHashMap.put(URLDecoder.decode(arrayOfString2[0], "UTF-8"), "");
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          a.a(localUnsupportedEncodingException);
          a.e("URL decode params String error:" + paramString);
        }
      }
      return localHashMap;
      i += 1;
    }
  }
  
  public static String b(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = new DESKeySpec(paramString1.getBytes());
      paramString1 = SecretKeyFactory.getInstance("DES").generateSecret(paramString1);
      Cipher localCipher = Cipher.getInstance("DES");
      localCipher.init(1, paramString1, new IvParameterSpec("12345678".getBytes()));
      paramString1 = b.a(localCipher.doFinal(paramString2.getBytes()), 2);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      a.b("des encode error");
    }
    return null;
  }
  
  public static boolean b(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return Pattern.compile("[0-9]*").matcher(paramString).matches();
  }
  
  public static String c(String paramString)
  {
    try
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append(Integer.valueOf(paramString.substring(0, 2))).append(".").append(Integer.valueOf(paramString.substring(2, 4))).append(".").append(Integer.valueOf(paramString.substring(4, 6)));
      localObject = ((StringBuilder)localObject).toString();
      return localObject;
    }
    catch (Exception localException)
    {
      a.a(localException);
    }
    return paramString;
  }
  
  public static String d(String paramString)
  {
    try
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append(paramString.substring(0, 4)).append("-").append(paramString.substring(4, 6)).append("-").append(paramString.substring(6, 8));
      localObject = ((StringBuilder)localObject).toString();
      return localObject;
    }
    catch (Exception localException)
    {
      a.a(localException);
    }
    return paramString;
  }
  
  public static boolean e(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
}
