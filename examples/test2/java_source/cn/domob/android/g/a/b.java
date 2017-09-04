package cn.domob.android.g.a;

import cn.domob.android.f.e;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

class b
  implements Runnable
{
  private static cn.domob.android.i.f a = new cn.domob.android.i.f(b.class.getSimpleName());
  private static final String b = "sid";
  private static final long c = 0L;
  private static volatile boolean d = false;
  private static long e = 0L;
  private static boolean f = false;
  private static int l = 0;
  private String g;
  private boolean h;
  private a.a i = null;
  private c j;
  private e k;
  
  b(c paramC)
  {
    j = paramC;
  }
  
  private Map<String, String> a(c paramC)
  {
    Map localMap = d.a(paramC.g(), paramC.b());
    if (paramC.f() != null)
    {
      paramC = paramC.f().entrySet().iterator();
      while (paramC.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramC.next();
        localMap.put(localEntry.getKey(), localEntry.getValue());
      }
    }
    a.b("complete request parameter is " + localMap.toString());
    return localMap;
  }
  
  private void a(String paramString)
  {
    g = b(paramString);
    a.b(String.format("try to use the new url(%s) to connect again", new Object[] { g }));
    d();
  }
  
  protected static boolean a()
  {
    return d;
  }
  
  private String b(String paramString)
  {
    String str;
    do
    {
      str = cn.domob.android.i.h.a(5);
    } while (!str.matches(".*\\d.*"));
    paramString = "http://" + str + "." + paramString;
    a.b(String.format("create new url(%s) for detect", new Object[] { paramString }));
    return paramString;
  }
  
  private void b()
  {
    String str = c();
    if (!cn.domob.android.i.h.e(str)) {
      a(str);
    }
  }
  
  private String c()
  {
    if (j.d() > 0)
    {
      String[] arrayOfString = j.c();
      if ((arrayOfString != null) && (arrayOfString.length > 0)) {
        if (l + 1 <= arrayOfString.length * j.d())
        {
          int n = (l + 1) / j.d();
          if ((l + 1) % j.d() > 0) {}
          for (int m = 1;; m = 0)
          {
            m = m + n - 1;
            if ((m >= arrayOfString.length) || (m < 0)) {
              break;
            }
            return arrayOfString[m];
          }
          a.e(String.format("logical error, index(%d) out of array", new Object[] { Integer.valueOf(m) }));
        }
      }
    }
    for (;;)
    {
      return null;
      a.d(String.format("all domains has failed, detected failed times is %d", new Object[] { Integer.valueOf(l) }));
      continue;
      a.e("domain array is null or length is zero");
      continue;
      a.e("Each domain can try to detect the number is not greater than 0");
    }
  }
  
  private boolean c(String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (!cn.domob.android.i.h.e(paramString)) {}
    boolean bool;
    try
    {
      paramString = new JSONObject(new JSONTokener(paramString));
      localObject1 = localObject2;
      if (paramString != null) {
        localObject1 = paramString.optString("sid", null);
      }
      if (!cn.domob.android.i.h.e((String)localObject1))
      {
        bool = true;
        if (!bool) {
          break label85;
        }
        a.b("connect response contain sid");
        return bool;
      }
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        a.a(paramString);
        paramString = null;
        continue;
        bool = false;
      }
      label85:
      a.b("connect response not contain sid");
    }
    return bool;
  }
  
  private void d()
  {
    if (j.h()) {
      j();
    }
    if (cn.domob.android.i.c.l(j.g()))
    {
      if (c(f()))
      {
        h = true;
        a.b("found available url: " + g);
      }
      do
      {
        return;
        h();
        i();
      } while (f);
      b();
      return;
    }
    i = a.a.a;
  }
  
  private boolean e()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (e > 0L)
    {
      bool1 = bool2;
      if (e + j.e() < System.currentTimeMillis())
      {
        a.b("all domains failed has been timeout, so reset varable, detect again");
        f = false;
        l = 0;
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private String f()
  {
    a.b("do sync connect");
    cn.domob.android.f.h localH = cn.domob.android.f.c.a().a(g());
    String str = null;
    if (localH != null) {
      str = localH.e();
    }
    a.b("connect response String: " + str);
    return str;
  }
  
  private e g()
  {
    if (k == null)
    {
      k = new e();
      k.a(j.g());
      k.c("GET");
      k.a(true);
    }
    k.a(new cn.domob.android.f.f(a(j)));
    k.a(g);
    return k;
  }
  
  private int h()
  {
    l += 1;
    a.b(String.format("detect failed, total failed time is %d", new Object[] { Integer.valueOf(l) }));
    return l;
  }
  
  private void i()
  {
    if ((j.c() != null) && (j.d() > 0) && (l >= j.c().length * j.d()))
    {
      f = true;
      e = System.currentTimeMillis();
      a.d("all domains have been masked");
    }
  }
  
  private void j()
  {
    int m = k();
    a.b(String.format("thread sleep %d millisecond", new Object[] { Integer.valueOf(m) }));
    long l1 = m;
    try
    {
      Thread.sleep(l1);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      a.a(localInterruptedException);
    }
  }
  
  private int k()
  {
    return new Random().nextInt(1000);
  }
  
  public void run()
  {
    a.b("start multi domain detect");
    d = true;
    h = false;
    if (cn.domob.android.i.c.l(j.g())) {
      if (f) {
        if (e())
        {
          b();
          if (j.a() != null)
          {
            if (f) {
              i = a.a.b;
            }
            a.b("multi domain detect finished");
            if (!h) {
              break label175;
            }
            a.b("found available domain: " + g);
            j.a().a(g);
          }
        }
      }
    }
    for (;;)
    {
      d = false;
      return;
      a.b("all domain has been detected failed, and allow detecting time is not reaching");
      break;
      b();
      break;
      i = a.a.a;
      a.b("network is not available, so finish detecting");
      break;
      label175:
      a.b("not found available domain");
      j.a().a(i);
    }
  }
}
