package com.alipay.sdk.protocol;

import android.text.TextUtils;
import org.json.JSONObject;

public enum a
{
  private String h;
  private String i;
  private String j;
  private JSONObject k;
  private String l;
  private String m;
  private String n;
  private boolean o;
  private boolean p;
  private boolean q;
  private String r;
  private String s;
  private String t;
  private JSONObject u;
  
  private a(String paramString)
  {
    h = paramString;
  }
  
  public static a[] a(b paramB)
  {
    if (paramB != null)
    {
      localObject1 = a;
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        break label291;
      }
    }
    label89:
    label288:
    label291:
    for (Object localObject1 = ((String)localObject1).split(";");; localObject1 = null)
    {
      if (localObject1 == null) {
        return new a[] { c };
      }
      a[] arrayOfA1 = new a[localObject1.length];
      int i4 = localObject1.length;
      int i2 = 0;
      int i1 = 0;
      Object localObject3;
      Object localObject2;
      int i3;
      if (i2 < i4)
      {
        localObject3 = localObject1[i2];
        localObject2 = c;
        a[] arrayOfA2 = values();
        int i5 = arrayOfA2.length;
        i3 = 0;
        if (i3 >= i5) {
          break label288;
        }
        a localA = arrayOfA2[i3];
        if (localObject3.startsWith(h)) {
          localObject2 = localA;
        }
      }
      for (;;)
      {
        i = localObject3;
        if (TextUtils.isEmpty(b)) {
          b = com.alipay.sdk.cons.a.b;
        }
        j = b;
        k = paramB.a();
        l = c;
        m = d;
        n = e;
        o = f;
        p = g;
        q = h;
        r = i;
        s = j;
        t = k;
        u = l;
        arrayOfA1[i1] = localObject2;
        i2 += 1;
        i1 += 1;
        break;
        i3 += 1;
        break label89;
        return arrayOfA1;
        return new a[] { c };
      }
    }
  }
  
  private static String[] a(String paramString)
  {
    String[] arrayOfString = null;
    if (!TextUtils.isEmpty(paramString)) {
      arrayOfString = paramString.split(";");
    }
    return arrayOfString;
  }
  
  private JSONObject m()
  {
    return k;
  }
  
  public final JSONObject a()
  {
    return u;
  }
  
  public final String b()
  {
    return t;
  }
  
  public final String c()
  {
    return r;
  }
  
  public final String d()
  {
    return s;
  }
  
  public final String e()
  {
    return i;
  }
  
  public final String f()
  {
    return j;
  }
  
  public final String g()
  {
    return m;
  }
  
  public final String h()
  {
    return n;
  }
  
  public final boolean i()
  {
    return o;
  }
  
  public final boolean j()
  {
    return p;
  }
  
  public final boolean k()
  {
    return q;
  }
  
  public final String l()
  {
    return l;
  }
}
