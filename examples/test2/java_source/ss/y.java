package ss;

import gK.e;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import ss.ss.j;

public final class y
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private final String b;
  private final String c;
  private final String d;
  private final String e;
  private final int f;
  private final List<String> g;
  private final List<String> h;
  private final String i;
  private final String j;
  
  private y(a paramA)
  {
    b = a;
    c = a(b, false);
    d = a(c, false);
    e = d;
    f = paramA.a();
    g = a(f, false);
    if (g != null) {}
    for (Object localObject1 = a(g, true);; localObject1 = null)
    {
      h = ((List)localObject1);
      localObject1 = localObject2;
      if (h != null) {
        localObject1 = a(h, false);
      }
      i = ((String)localObject1);
      j = paramA.toString();
      return;
    }
  }
  
  static int a(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9')) {
      return paramChar - '0';
    }
    if ((paramChar >= 'a') && (paramChar <= 'f')) {
      return paramChar - 'a' + 10;
    }
    if ((paramChar >= 'A') && (paramChar <= 'F')) {
      return paramChar - 'A' + 10;
    }
    return -1;
  }
  
  public static int a(String paramString)
  {
    if (paramString.equals("http")) {
      return 80;
    }
    if (paramString.equals("https")) {
      return 443;
    }
    return -1;
  }
  
  static String a(String paramString1, int paramInt1, int paramInt2, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    int k = paramInt1;
    while (k < paramInt2)
    {
      int m = paramString1.codePointAt(k);
      if ((m < 32) || (m == 127) || ((m >= 128) && (paramBoolean4)) || (paramString2.indexOf(m) != -1) || ((m == 37) && ((!paramBoolean1) || ((paramBoolean2) && (!a(paramString1, k, paramInt2))))) || ((m == 43) && (paramBoolean3)))
      {
        e localE = new e();
        localE.a(paramString1, paramInt1, k);
        a(localE, paramString1, k, paramInt2, paramString2, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4);
        return localE.o();
      }
      k += Character.charCount(m);
    }
    return paramString1.substring(paramInt1, paramInt2);
  }
  
  static String a(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int k = paramInt1;
    while (k < paramInt2)
    {
      int m = paramString.charAt(k);
      if ((m == 37) || ((m == 43) && (paramBoolean)))
      {
        e localE = new e();
        localE.a(paramString, paramInt1, k);
        a(localE, paramString, k, paramInt2, paramBoolean);
        return localE.o();
      }
      k += 1;
    }
    return paramString.substring(paramInt1, paramInt2);
  }
  
  static String a(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    return a(paramString1, 0, paramString1.length(), paramString2, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4);
  }
  
  static String a(String paramString, boolean paramBoolean)
  {
    return a(paramString, 0, paramString.length(), paramBoolean);
  }
  
  private List<String> a(List<String> paramList, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      paramList = (String)localIterator.next();
      if (paramList != null) {}
      for (paramList = a(paramList, paramBoolean);; paramList = null)
      {
        localArrayList.add(paramList);
        break;
      }
    }
    return Collections.unmodifiableList(localArrayList);
  }
  
  static void a(e paramE, String paramString1, int paramInt1, int paramInt2, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    Object localObject1 = null;
    if (paramInt1 < paramInt2)
    {
      int k = paramString1.codePointAt(paramInt1);
      Object localObject3;
      if (paramBoolean1)
      {
        localObject3 = localObject1;
        if (k != 9)
        {
          localObject3 = localObject1;
          if (k != 10)
          {
            localObject3 = localObject1;
            if (k != 12)
            {
              if (k != 13) {
                break label79;
              }
              localObject3 = localObject1;
            }
          }
        }
      }
      for (;;)
      {
        paramInt1 += Character.charCount(k);
        localObject1 = localObject3;
        break;
        label79:
        Object localObject2;
        if ((k == 43) && (paramBoolean3))
        {
          if (paramBoolean1) {}
          for (localObject2 = "+";; localObject2 = "%2B")
          {
            paramE.a((String)localObject2);
            localObject3 = localObject1;
            break;
          }
        }
        if ((k < 32) || (k == 127) || ((k >= 128) && (paramBoolean4)) || (paramString2.indexOf(k) != -1) || ((k == 37) && ((!paramBoolean1) || ((paramBoolean2) && (!a(paramString1, paramInt1, paramInt2))))))
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new e();
          }
          ((e)localObject2).a(k);
          for (;;)
          {
            localObject3 = localObject2;
            if (((e)localObject2).f()) {
              break;
            }
            int m = ((e)localObject2).h() & 0xFF;
            paramE.b(37);
            paramE.b(a[(m >> 4 & 0xF)]);
            paramE.b(a[(m & 0xF)]);
          }
        }
        paramE.a(k);
        localObject3 = localObject1;
      }
    }
  }
  
  static void a(e paramE, String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramInt1 < paramInt2)
    {
      int k = paramString.codePointAt(paramInt1);
      if ((k == 37) && (paramInt1 + 2 < paramInt2))
      {
        int m = a(paramString.charAt(paramInt1 + 1));
        int n = a(paramString.charAt(paramInt1 + 2));
        if ((m == -1) || (n == -1)) {
          break label111;
        }
        paramE.b((m << 4) + n);
        paramInt1 += 2;
      }
      for (;;)
      {
        paramInt1 += Character.charCount(k);
        break;
        if ((k == 43) && (paramBoolean)) {
          paramE.b(32);
        } else {
          label111:
          paramE.a(k);
        }
      }
    }
  }
  
  static void a(StringBuilder paramStringBuilder, List<String> paramList)
  {
    int m = paramList.size();
    int k = 0;
    while (k < m)
    {
      paramStringBuilder.append('/');
      paramStringBuilder.append((String)paramList.get(k));
      k += 1;
    }
  }
  
  static boolean a(String paramString, int paramInt1, int paramInt2)
  {
    return (paramInt1 + 2 < paramInt2) && (paramString.charAt(paramInt1) == '%') && (a(paramString.charAt(paramInt1 + 1)) != -1) && (a(paramString.charAt(paramInt1 + 2)) != -1);
  }
  
  static List<String> b(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int k = 0;
    if (k <= paramString.length())
    {
      int n = paramString.indexOf('&', k);
      int m = n;
      if (n == -1) {
        m = paramString.length();
      }
      n = paramString.indexOf('=', k);
      if ((n == -1) || (n > m))
      {
        localArrayList.add(paramString.substring(k, m));
        localArrayList.add(null);
      }
      for (;;)
      {
        k = m + 1;
        break;
        localArrayList.add(paramString.substring(k, n));
        localArrayList.add(paramString.substring(n + 1, m));
      }
    }
    return localArrayList;
  }
  
  static void b(StringBuilder paramStringBuilder, List<String> paramList)
  {
    int m = paramList.size();
    int k = 0;
    while (k < m)
    {
      String str1 = (String)paramList.get(k);
      String str2 = (String)paramList.get(k + 1);
      if (k > 0) {
        paramStringBuilder.append('&');
      }
      paramStringBuilder.append(str1);
      if (str2 != null)
      {
        paramStringBuilder.append('=');
        paramStringBuilder.append(str2);
      }
      k += 2;
    }
  }
  
  public static y e(String paramString)
  {
    y localY = null;
    a localA = new a();
    if (localA.a(null, paramString) == y.a.a.a) {
      localY = localA.c();
    }
    return localY;
  }
  
  public URI a()
  {
    Object localObject = m().b().toString();
    try
    {
      URI localURI = new URI((String)localObject);
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      try
      {
        localObject = URI.create(((String)localObject).replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
        return localObject;
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localURISyntaxException);
      }
    }
  }
  
  public String b()
  {
    return b;
  }
  
  public y c(String paramString)
  {
    paramString = d(paramString);
    if (paramString != null) {
      return paramString.c();
    }
    return null;
  }
  
  public boolean c()
  {
    return b.equals("https");
  }
  
  public String d()
  {
    if (c.isEmpty()) {
      return "";
    }
    int k = b.length() + 3;
    int m = j.a(j, k, j.length(), ":@");
    return j.substring(k, m);
  }
  
  public a d(String paramString)
  {
    a localA = new a();
    if (localA.a(this, paramString) == y.a.a.a) {
      return localA;
    }
    return null;
  }
  
  public String e()
  {
    if (d.isEmpty()) {
      return "";
    }
    int k = j.indexOf(':', b.length() + 3);
    int m = j.indexOf('@');
    return j.substring(k + 1, m);
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof y)) && (j.equals(j));
  }
  
  public String f()
  {
    return e;
  }
  
  public int g()
  {
    return f;
  }
  
  public String h()
  {
    int k = j.indexOf('/', b.length() + 3);
    int m = j.a(j, k, j.length(), "?#");
    return j.substring(k, m);
  }
  
  public int hashCode()
  {
    return j.hashCode();
  }
  
  public List<String> i()
  {
    int k = j.indexOf('/', b.length() + 3);
    int m = j.a(j, k, j.length(), "?#");
    ArrayList localArrayList = new ArrayList();
    while (k < m)
    {
      int n = k + 1;
      k = j.a(j, n, m, '/');
      localArrayList.add(j.substring(n, k));
    }
    return localArrayList;
  }
  
  public String j()
  {
    if (h == null) {
      return null;
    }
    int k = j.indexOf('?') + 1;
    int m = j.a(j, k + 1, j.length(), '#');
    return j.substring(k, m);
  }
  
  public String k()
  {
    if (h == null) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    b(localStringBuilder, h);
    return localStringBuilder.toString();
  }
  
  public String l()
  {
    if (i == null) {
      return null;
    }
    int k = j.indexOf('#');
    return j.substring(k + 1);
  }
  
  public a m()
  {
    a localA = new a();
    a = b;
    b = d();
    c = e();
    d = e;
    if (f != a(b)) {}
    for (int k = f;; k = -1)
    {
      e = k;
      f.clear();
      f.addAll(i());
      localA.c(j());
      h = l();
      return localA;
    }
  }
  
  public String toString()
  {
    return j;
  }
  
  public static final class a
  {
    String a;
    String b = "";
    String c = "";
    String d;
    int e = -1;
    final List<String> f = new ArrayList();
    List<String> g;
    String h;
    
    public a()
    {
      f.add("");
    }
    
    private static String a(byte[] paramArrayOfByte)
    {
      int i1 = 0;
      int j = 0;
      int k = -1;
      int i = 0;
      int m;
      while (i < paramArrayOfByte.length)
      {
        m = i;
        while ((m < 16) && (paramArrayOfByte[m] == 0) && (paramArrayOfByte[(m + 1)] == 0)) {
          m += 2;
        }
        int i2 = m - i;
        int n = j;
        if (i2 > j)
        {
          n = i2;
          k = i;
        }
        i = m + 2;
        j = n;
      }
      e localE = new e();
      i = i1;
      while (i < paramArrayOfByte.length) {
        if (i == k)
        {
          localE.b(58);
          m = i + j;
          i = m;
          if (m == 16)
          {
            localE.b(58);
            i = m;
          }
        }
        else
        {
          if (i > 0) {
            localE.b(58);
          }
          localE.i((paramArrayOfByte[i] & 0xFF) << 8 | paramArrayOfByte[(i + 1)] & 0xFF);
          i += 2;
        }
      }
      return localE.o();
    }
    
    private void a(String paramString, int paramInt1, int paramInt2)
    {
      if (paramInt1 == paramInt2) {
        return;
      }
      int i = paramString.charAt(paramInt1);
      if ((i == 47) || (i == 92))
      {
        f.clear();
        f.add("");
        paramInt1 += 1;
        label52:
        if (paramInt1 >= paramInt2) {
          break label127;
        }
        i = j.a(paramString, paramInt1, paramInt2, "/\\");
        if (i >= paramInt2) {
          break label129;
        }
      }
      label127:
      label129:
      for (boolean bool = true;; bool = false)
      {
        a(paramString, paramInt1, i, bool, true);
        paramInt1 = i;
        if (bool) {
          paramInt1 = i + 1;
        }
        break label52;
        f.set(f.size() - 1, "");
        break label52;
        break;
      }
    }
    
    private void a(String paramString, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
    {
      paramString = y.a(paramString, paramInt1, paramInt2, " \"<>^`{}|/\\?#", paramBoolean2, false, false, true);
      if (d(paramString)) {}
      for (;;)
      {
        return;
        if (e(paramString))
        {
          d();
          return;
        }
        if (((String)f.get(f.size() - 1)).isEmpty()) {
          f.set(f.size() - 1, paramString);
        }
        while (paramBoolean1)
        {
          f.add("");
          return;
          f.add(paramString);
        }
      }
    }
    
    private static boolean a(String paramString, int paramInt1, int paramInt2, byte[] paramArrayOfByte, int paramInt3)
    {
      int j = paramInt3;
      int i = paramInt1;
      while (i < paramInt2)
      {
        if (j == paramArrayOfByte.length) {
          return false;
        }
        paramInt1 = i;
        if (j != paramInt3)
        {
          if (paramString.charAt(i) != '.') {
            return false;
          }
          paramInt1 = i + 1;
        }
        int k = 0;
        i = paramInt1;
        for (;;)
        {
          int m;
          if (i < paramInt2)
          {
            m = paramString.charAt(i);
            if ((m >= 48) && (m <= 57)) {}
          }
          else
          {
            if (i - paramInt1 != 0) {
              break;
            }
            return false;
          }
          if ((k == 0) && (paramInt1 != i)) {
            return false;
          }
          k = k * 10 + m - 48;
          if (k > 255) {
            return false;
          }
          i += 1;
        }
        paramArrayOfByte[j] = ((byte)k);
        j += 1;
      }
      return j == paramInt3 + 4;
    }
    
    private static int b(String paramString, int paramInt1, int paramInt2)
    {
      if (paramInt2 - paramInt1 < 2) {}
      int i;
      label115:
      do
      {
        for (;;)
        {
          return -1;
          i = paramString.charAt(paramInt1);
          if (((i >= 97) && (i <= 122)) || ((i >= 65) && (i <= 90)))
          {
            paramInt1 += 1;
            while (paramInt1 < paramInt2)
            {
              i = paramString.charAt(paramInt1);
              if (((i < 97) || (i > 122)) && ((i < 65) || (i > 90)) && ((i < 48) || (i > 57)) && (i != 43) && (i != 45) && (i != 46)) {
                break label115;
              }
              paramInt1 += 1;
            }
          }
        }
      } while (i != 58);
      return paramInt1;
    }
    
    private static int c(String paramString, int paramInt1, int paramInt2)
    {
      int i = 0;
      while (paramInt1 < paramInt2)
      {
        int j = paramString.charAt(paramInt1);
        if ((j != 92) && (j != 47)) {
          break;
        }
        i += 1;
        paramInt1 += 1;
      }
      return i;
    }
    
    private static int d(String paramString, int paramInt1, int paramInt2)
    {
      int i;
      int j;
      if (paramInt1 < paramInt2)
      {
        i = paramInt1;
        j = paramInt1;
      }
      switch (paramString.charAt(paramInt1))
      {
      default: 
        i = paramInt1;
      case '[': 
        for (;;)
        {
          paramInt1 = i + 1;
          break;
          do
          {
            paramInt1 = i + 1;
            i = paramInt1;
            if (paramInt1 >= paramInt2) {
              break;
            }
            i = paramInt1;
          } while (paramString.charAt(paramInt1) != ']');
          i = paramInt1;
        }
        j = paramInt2;
      }
      return j;
    }
    
    private void d()
    {
      if ((((String)f.remove(f.size() - 1)).isEmpty()) && (!f.isEmpty()))
      {
        f.set(f.size() - 1, "");
        return;
      }
      f.add("");
    }
    
    private boolean d(String paramString)
    {
      return (paramString.equals(".")) || (paramString.equalsIgnoreCase("%2e"));
    }
    
    private static String e(String paramString, int paramInt1, int paramInt2)
    {
      paramString = y.a(paramString, paramInt1, paramInt2, false);
      if (paramString.contains(":"))
      {
        if ((paramString.startsWith("[")) && (paramString.endsWith("]"))) {}
        for (paramString = f(paramString, 1, paramString.length() - 1); paramString == null; paramString = f(paramString, 0, paramString.length())) {
          return null;
        }
        paramString = paramString.getAddress();
        if (paramString.length == 16) {
          return a(paramString);
        }
        throw new AssertionError();
      }
      return j.a(paramString);
    }
    
    private boolean e(String paramString)
    {
      return (paramString.equals("..")) || (paramString.equalsIgnoreCase("%2e.")) || (paramString.equalsIgnoreCase(".%2e")) || (paramString.equalsIgnoreCase("%2e%2e"));
    }
    
    private static InetAddress f(String paramString, int paramInt1, int paramInt2)
    {
      byte[] arrayOfByte = new byte[16];
      int i1 = -1;
      int j = -1;
      int i = 0;
      int k = paramInt1;
      int m = j;
      paramInt1 = i;
      if (k < paramInt2)
      {
        if (i == arrayOfByte.length) {
          return null;
        }
        if ((k + 2 <= paramInt2) && (paramString.regionMatches(k, "::", 0, 2)))
        {
          if (j != -1) {
            return null;
          }
          paramInt1 = k + 2;
          i += 2;
          if (paramInt1 != paramInt2) {
            break label352;
          }
          paramInt1 = i;
          m = i;
        }
      }
      else
      {
        if (paramInt1 == arrayOfByte.length) {
          break label335;
        }
        if (m != -1) {
          break label298;
        }
        return null;
      }
      paramInt1 = k;
      m = j;
      int n = i;
      if (i != 0)
      {
        if (!paramString.regionMatches(k, ":", 0, 1)) {
          break label184;
        }
        paramInt1 = k + 1;
        n = i;
      }
      for (m = j;; m = i)
      {
        j = 0;
        i = paramInt1;
        for (;;)
        {
          if (i < paramInt2)
          {
            k = y.a(paramString.charAt(i));
            if (k != -1) {}
          }
          else
          {
            k = i - paramInt1;
            if ((k != 0) && (k <= 4)) {
              break label243;
            }
            return null;
            label184:
            if (paramString.regionMatches(k, ".", 0, 1))
            {
              if (!a(paramString, i1, paramInt2, arrayOfByte, i - 2)) {
                return null;
              }
              paramInt1 = i + 2;
              m = j;
              break;
            }
            return null;
          }
          j = (j << 4) + k;
          i += 1;
        }
        label243:
        k = n + 1;
        arrayOfByte[n] = ((byte)(j >>> 8 & 0xFF));
        n = k + 1;
        arrayOfByte[k] = ((byte)(j & 0xFF));
        k = i;
        j = m;
        i = n;
        i1 = paramInt1;
        break;
        label298:
        System.arraycopy(arrayOfByte, m, arrayOfByte, arrayOfByte.length - (paramInt1 - m), paramInt1 - m);
        Arrays.fill(arrayOfByte, m, arrayOfByte.length - paramInt1 + m, (byte)0);
        try
        {
          label335:
          paramString = InetAddress.getByAddress(arrayOfByte);
          return paramString;
        }
        catch (UnknownHostException paramString)
        {
          throw new AssertionError();
        }
        label352:
        n = i;
      }
    }
    
    private static int g(String paramString, int paramInt1, int paramInt2)
    {
      try
      {
        paramInt1 = Integer.parseInt(y.a(paramString, paramInt1, paramInt2, "", false, false, false, true));
        if ((paramInt1 > 0) && (paramInt1 <= 65535)) {
          return paramInt1;
        }
        return -1;
      }
      catch (NumberFormatException paramString) {}
      return -1;
    }
    
    int a()
    {
      if (e != -1) {
        return e;
      }
      return y.a(a);
    }
    
    a a(y paramY, String paramString)
    {
      int i = j.a(paramString, 0, paramString.length());
      int i1 = j.b(paramString, i, paramString.length());
      label60:
      int k;
      label112:
      int n;
      if (b(paramString, i, i1) != -1) {
        if (paramString.regionMatches(true, i, "https:", 0, 6))
        {
          a = "https";
          i += "https:".length();
          m = c(paramString, i, i1);
          if ((m < 2) && (paramY != null) && (y.a(paramY).equals(a))) {
            break label652;
          }
          k = 0;
          j = 0;
          m = i + m;
          i = k;
          k = m;
          n = j.a(paramString, k, i1, "@/\\?#");
          if (n == i1) {
            break label276;
          }
        }
      }
      label276:
      for (int m = paramString.charAt(n);; m = -1) {
        switch (m)
        {
        default: 
          m = i;
          i = k;
          k = m;
          m = k;
          k = i;
          i = m;
          break label112;
          if (paramString.regionMatches(true, i, "http:", 0, 5))
          {
            a = "http";
            i += "http:".length();
            break label60;
          }
          return a.c;
          if (paramY != null)
          {
            a = y.a(paramY);
            break label60;
          }
          return a.b;
        }
      }
      if (i == 0)
      {
        m = j.a(paramString, k, n, ':');
        String str = y.a(paramString, k, m, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
        paramY = str;
        if (j != 0) {
          paramY = b + "%40" + str;
        }
        b = paramY;
        if (m != n)
        {
          i = 1;
          c = y.a(paramString, m + 1, n, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
        }
        j = 1;
      }
      for (;;)
      {
        m = n + 1;
        k = i;
        i = m;
        break;
        c = (c + "%40" + y.a(paramString, k, n, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true));
      }
      i = d(paramString, k, n);
      if (i + 1 < n)
      {
        d = e(paramString, k, i);
        e = g(paramString, i + 1, n);
        if (e == -1) {
          return a.d;
        }
      }
      else
      {
        d = e(paramString, k, i);
        e = y.a(a);
      }
      if (d == null) {
        return a.e;
      }
      int j = n;
      i = j.a(paramString, j, i1, "?#");
      a(paramString, j, i);
      if ((i < i1) && (paramString.charAt(i) == '?'))
      {
        j = j.a(paramString, i, i1, '#');
        g = y.b(y.a(paramString, i + 1, j, " \"'<>#", true, false, true, true));
        i = j;
      }
      for (;;)
      {
        if ((i < i1) && (paramString.charAt(i) == '#')) {
          h = y.a(paramString, i + 1, i1, "", true, false, false, false);
        }
        return a.a;
        label652:
        b = paramY.d();
        c = paramY.e();
        d = y.b(paramY);
        e = y.c(paramY);
        f.clear();
        f.addAll(paramY.i());
        if (i != i1)
        {
          j = i;
          if (paramString.charAt(i) != '#') {
            break;
          }
        }
        c(paramY.j());
        j = i;
        break;
      }
    }
    
    public a a(int paramInt)
    {
      if ((paramInt <= 0) || (paramInt > 65535)) {
        throw new IllegalArgumentException("unexpected port: " + paramInt);
      }
      e = paramInt;
      return this;
    }
    
    public a a(String paramString)
    {
      if (paramString == null) {
        throw new NullPointerException("scheme == null");
      }
      if (paramString.equalsIgnoreCase("http"))
      {
        a = "http";
        return this;
      }
      if (paramString.equalsIgnoreCase("https"))
      {
        a = "https";
        return this;
      }
      throw new IllegalArgumentException("unexpected scheme: " + paramString);
    }
    
    public a a(String paramString1, String paramString2)
    {
      if (paramString1 == null) {
        throw new NullPointerException("encodedName == null");
      }
      if (g == null) {
        g = new ArrayList();
      }
      g.add(y.a(paramString1, " \"'<>#&=", true, false, true, true));
      List localList = g;
      if (paramString2 != null) {}
      for (paramString1 = y.a(paramString2, " \"'<>#&=", true, false, true, true);; paramString1 = null)
      {
        localList.add(paramString1);
        return this;
      }
    }
    
    a b()
    {
      int j = f.size();
      int i = 0;
      String str;
      while (i < j)
      {
        str = (String)f.get(i);
        f.set(i, y.a(str, "[]", true, true, false, true));
        i += 1;
      }
      if (g != null)
      {
        j = g.size();
        i = 0;
        while (i < j)
        {
          str = (String)g.get(i);
          if (str != null) {
            g.set(i, y.a(str, "\\^`{|}", true, true, true, true));
          }
          i += 1;
        }
      }
      if (h != null) {
        h = y.a(h, " \"#<>\\^`{|}", true, true, false, false);
      }
      return this;
    }
    
    public a b(String paramString)
    {
      if (paramString == null) {
        throw new NullPointerException("host == null");
      }
      String str = e(paramString, 0, paramString.length());
      if (str == null) {
        throw new IllegalArgumentException("unexpected host: " + paramString);
      }
      d = str;
      return this;
    }
    
    public a c(String paramString)
    {
      if (paramString != null) {}
      for (paramString = y.b(y.a(paramString, " \"'<>#", true, false, true, true));; paramString = null)
      {
        g = paramString;
        return this;
      }
    }
    
    public y c()
    {
      if (a == null) {
        throw new IllegalStateException("scheme == null");
      }
      if (d == null) {
        throw new IllegalStateException("host == null");
      }
      return new y(this, null);
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(a);
      localStringBuilder.append("://");
      if ((!b.isEmpty()) || (!c.isEmpty()))
      {
        localStringBuilder.append(b);
        if (!c.isEmpty())
        {
          localStringBuilder.append(':');
          localStringBuilder.append(c);
        }
        localStringBuilder.append('@');
      }
      if (d.indexOf(':') != -1)
      {
        localStringBuilder.append('[');
        localStringBuilder.append(d);
        localStringBuilder.append(']');
      }
      for (;;)
      {
        int i = a();
        if (i != y.a(a))
        {
          localStringBuilder.append(':');
          localStringBuilder.append(i);
        }
        y.a(localStringBuilder, f);
        if (g != null)
        {
          localStringBuilder.append('?');
          y.b(localStringBuilder, g);
        }
        if (h != null)
        {
          localStringBuilder.append('#');
          localStringBuilder.append(h);
        }
        return localStringBuilder.toString();
        localStringBuilder.append(d);
      }
    }
    
    static enum a
    {
      private a() {}
    }
  }
}
