package cn.domob.wall.core.h;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

public final class c
{
  private static d a = new d(c.class.getSimpleName());
  private static String b = "01";
  
  public c() {}
  
  private static byte a(int paramInt, byte[] paramArrayOfByte)
  {
    if (paramInt >= paramArrayOfByte.length) {
      return 0;
    }
    return paramArrayOfByte[paramInt];
  }
  
  public static a a(String paramString1, String paramString2, String paramString3)
  {
    a localA = new a();
    try
    {
      paramString1 = paramString1.getBytes("UTF-8");
      paramString2 = paramString2.getBytes("UTF-8");
      paramString3 = paramString3.getBytes("UTF-8");
      byte[] arrayOfByte = new byte[10];
      int j = 3;
      int i = paramString1.length - 1;
      while (i >= paramString1.length - 4)
      {
        arrayOfByte[j] = paramString1[i];
        j -= 1;
        i -= 1;
      }
      i = paramString2.length;
      arrayOfByte[4] = ((byte)((0xFF00 & i) >> 8));
      arrayOfByte[5] = ((byte)(i & 0xFF));
      paramString1 = a(new String(a(paramString3, arrayOfByte)));
      long l = System.currentTimeMillis();
      localA.a(String.valueOf(l));
      i = (int)(Math.random() * 2.147483647E9D);
      localA.b(String.valueOf(i));
      paramString2 = a(i ^ (int)(l / 1000L));
      i = 0;
      while (i < paramString2.length)
      {
        paramString1[(3 - i)] = paramString2[i];
        i += 1;
      }
      paramString1 = a(paramString1);
      localA.c(b + b(paramString1));
      return localA;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      a.a(paramString1);
    }
    return localA;
  }
  
  private static byte[] a(int paramInt)
  {
    return new byte[] { (byte)(paramInt & 0xFF), (byte)((0xFF00 & paramInt) >> 8), (byte)((0xFF0000 & paramInt) >> 16), (byte)((0xFF000000 & paramInt) >> 24) };
  }
  
  private static byte[] a(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return null;
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(paramString.getBytes("UTF-8"));
      paramString = localMessageDigest.digest();
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  private static byte[] a(byte[] paramArrayOfByte)
  {
    int i = 4;
    while (i <= paramArrayOfByte.length - 4)
    {
      int j = 3;
      while (j >= 0)
      {
        paramArrayOfByte[(i + 3 - j)] = ((byte)(paramArrayOfByte[(3 - j)] ^ a(i + 3 - j, paramArrayOfByte)));
        j -= 1;
      }
      i += 4;
    }
    return paramArrayOfByte;
  }
  
  private static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 3;
    while (i < paramArrayOfByte1.length + 3)
    {
      if (i < 4)
      {
        j = 3;
        while (j >= 0)
        {
          paramArrayOfByte2[(9 - j)] = a(i - j, paramArrayOfByte1);
          j -= 1;
        }
      }
      int j = 3;
      while (j >= 0)
      {
        paramArrayOfByte2[(9 - j)] = ((byte)(paramArrayOfByte2[(9 - j)] ^ a(i - j, paramArrayOfByte1)));
        j -= 1;
      }
      i += 4;
    }
    return paramArrayOfByte2;
  }
  
  private static String b(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder("");
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      String str2 = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
      String str1 = str2;
      if (str2.length() == 1) {
        str1 = "0" + str2;
      }
      localStringBuilder.append(str1);
      i += 1;
    }
    return localStringBuilder.toString().toUpperCase().trim();
  }
  
  public static class a
  {
    private String a = "";
    private String b = "";
    private String c = "";
    
    public a() {}
    
    public String a()
    {
      return a;
    }
    
    public void a(String paramString)
    {
      a = paramString;
    }
    
    public String b()
    {
      return b;
    }
    
    public void b(String paramString)
    {
      b = paramString;
    }
    
    public String c()
    {
      return c;
    }
    
    public void c(String paramString)
    {
      c = paramString;
    }
  }
}
