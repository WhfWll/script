package cn.dbox.core;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import cn.dbox.core.bean.g;
import cn.dbox.core.bean.g.a;
import cn.dbox.core.c.b.a;
import cn.dbox.core.c.d.a;
import cn.dbox.core.c.e;
import cn.dbox.core.h.f;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class c
{
  private static cn.dbox.core.h.d e = new cn.dbox.core.h.d(c.class.getSimpleName());
  private static final String r = "cn.domob.ui.main.DViewManager";
  private static final String s = "showWall";
  private static final String t = "preLoad";
  String a;
  b.a b;
  HashMap<String, cn.dbox.core.bean.d> c = new HashMap();
  String d = "16:5";
  private Context f;
  private b.l g;
  private b.m h;
  private boolean i = false;
  private String j = null;
  private String k = null;
  private String l = null;
  private String m = null;
  private String n = null;
  private boolean o = false;
  private ExecutorService p;
  private String q;
  private Object u = null;
  private Method v = null;
  private Method w = null;
  
  c(Context paramContext, String paramString1, String paramString2)
  {
    f = paramContext;
    k = paramString2;
    j = paramString1;
    p = Executors.newSingleThreadExecutor();
  }
  
  private boolean v()
  {
    if (!o)
    {
      if ((f.g(j)) || (f.g(k))) {
        break label54;
      }
      if (f.a(f)) {
        o = true;
      }
    }
    else
    {
      return true;
    }
    Log.w("DrwSDK", "Permission denied.");
    for (;;)
    {
      return false;
      label54:
      Log.w("DrwSDK", "Please set your publisherID and placementID first.");
    }
  }
  
  public String a()
  {
    return j;
  }
  
  public String a(String paramString, int paramInt)
  {
    if (paramInt == 0)
    {
      paramString = "";
      return paramString;
    }
    if (c.containsKey(paramString))
    {
      Object localObject = (cn.dbox.core.bean.d)c.get(paramString);
      ArrayList localArrayList = ((cn.dbox.core.bean.d)localObject).i();
      e.b("adContainerName:" + paramString + "ids:" + localArrayList);
      int i2 = ((cn.dbox.core.bean.d)localObject).h();
      e.b("Number each page display ads:" + i2);
      if (localArrayList.size() >= i2 * paramInt)
      {
        if (localArrayList.size() < i2 * paramInt + i2)
        {
          localObject = "";
          paramInt = i2 * paramInt;
          for (;;)
          {
            paramString = (String)localObject;
            if (paramInt >= localArrayList.size()) {
              break;
            }
            localObject = (String)localObject + (String)localArrayList.get(paramInt) + ",";
            paramInt += 1;
          }
        }
        localObject = "";
        int i1 = i2 * paramInt;
        for (;;)
        {
          paramString = (String)localObject;
          if (i1 >= i2 * paramInt + i2) {
            break;
          }
          localObject = (String)localObject + (String)localArrayList.get(i1) + ",";
          i1 += 1;
        }
      }
      return null;
    }
    return "";
  }
  
  public void a(b.l paramL)
  {
    g = paramL;
  }
  
  public void a(b.m paramM)
  {
    h = paramM;
  }
  
  public void a(b.a paramA)
  {
    b = paramA;
  }
  
  public void a(String paramString)
  {
    d = paramString;
  }
  
  public void a(final String paramString1, final int paramInt, String paramString2)
  {
    if (!v()) {
      return;
    }
    if (i)
    {
      e.d("requestDataAsynting....");
      return;
    }
    i = true;
    new Thread()
    {
      public void run()
      {
        try
        {
          if (!cn.dbox.core.c.a.a) {
            new cn.dbox.core.c.a(c.this).a();
          }
          HashMap localHashMap = new HashMap();
          if (paramString1 == null) {
            c.u().b("adContainerName:wall");
          }
          for (;;)
          {
            new cn.dbox.core.c.d(c.this).a(new d.a()
            {
              public void a(b.h paramAnonymous2H, String paramAnonymous2String)
              {
                c.a(c.this, false);
                if (a == null) {
                  if (c.a(c.this) != null) {
                    c.a(c.this).a(paramAnonymous2H, paramAnonymous2String, a, b);
                  }
                }
                while (c.b(c.this) == null) {
                  return;
                }
                c.b(c.this).a(paramAnonymous2H, paramAnonymous2String, a, b);
              }
              
              public void a(e paramAnonymous2E)
              {
                int i = 0;
                if (paramAnonymous2E != null) {
                  c.a(c.this, paramAnonymous2E.a());
                }
                c.a(c.this, false);
                if (b == 0) {
                  c = paramAnonymous2E.i();
                }
                Object localObject = paramAnonymous2E.e();
                if (localObject != null)
                {
                  localObject = ((g)localObject).b();
                  if (localObject != null) {
                    c.b(c.this, ((g.a)localObject).b());
                  }
                }
                if (a == null) {
                  if (c.a(c.this) != null) {
                    c.a(c.this).a(paramAnonymous2E.e(), paramAnonymous2E.f(), paramAnonymous2E.g(), a, b);
                  }
                }
                while (c.b(c.this) == null) {
                  return;
                }
                localObject = new ArrayList();
                HashMap localHashMap = paramAnonymous2E.h();
                String[] arrayOfString = a.split(",");
                while (i < arrayOfString.length)
                {
                  if (localHashMap.containsKey(arrayOfString[i])) {
                    ((ArrayList)localObject).add(localHashMap.get(arrayOfString[i]));
                  }
                  i += 1;
                }
                c.b(c.this).a(paramAnonymous2E.e(), paramAnonymous2E.f(), (ArrayList)localObject, a, b);
              }
            }, localHashMap);
            return;
            localHashMap.put("acid", paramString1);
            if (paramInt != 0)
            {
              a = a(paramString1, paramInt);
              localHashMap.put("ids", paramString1);
            }
          }
          return;
        }
        catch (cn.dbox.core.e.a localA)
        {
          c.u().d("Config request is ongoing, Thread will sleep 1 seconds, and then restart to request");
          return;
        }
        catch (Exception localException)
        {
          c.u().a(localException);
          c.a(c.this, false);
        }
      }
    }.start();
  }
  
  public void a(String paramString1, String paramString2)
  {
    m = paramString2;
    l = paramString1;
    if (f.a(this)) {
      r();
    }
  }
  
  public void a(String paramString, ArrayList<cn.dbox.core.bean.a> paramArrayList) {}
  
  public String b()
  {
    return k;
  }
  
  public String c()
  {
    return l;
  }
  
  public String d()
  {
    return m;
  }
  
  public String e()
  {
    return n;
  }
  
  public Context f()
  {
    return f;
  }
  
  public ExecutorService g()
  {
    return p;
  }
  
  public b.a h()
  {
    return b;
  }
  
  public String i()
  {
    if (b.c().equals("online")) {
      return f.f(cn.dbox.core.b.a.j);
    }
    if (b.c().equals("offline")) {
      return f.f(cn.dbox.core.b.a.p);
    }
    return b.c();
  }
  
  public String j()
  {
    if (b != null) {
      return b.c();
    }
    if (b.c().equals("online")) {
      return f.f(cn.dbox.core.b.a.l);
    }
    if (b.c().equals("offline")) {
      return f.f(cn.dbox.core.b.a.r);
    }
    return f.f(cn.dbox.core.b.a.l);
  }
  
  public String k()
  {
    return q;
  }
  
  public String l()
  {
    if (b != null) {
      return b.b();
    }
    if (b.c().equals("online")) {
      return f.f(cn.dbox.core.b.a.m);
    }
    if (b.c().equals("offline")) {
      return f.f(cn.dbox.core.b.a.s);
    }
    return f.f(cn.dbox.core.b.a.m);
  }
  
  public String m()
  {
    if (b != null)
    {
      String str = b.a();
      if (!TextUtils.isEmpty(str)) {
        return str;
      }
    }
    return "http://srp.12306.moxz.net/rp";
  }
  
  public String n()
  {
    if (b != null) {
      return b.d();
    }
    if (b.c().equals("online")) {
      return f.f(cn.dbox.core.b.a.k);
    }
    if (b.c().equals("offline")) {
      return f.f(cn.dbox.core.b.a.q);
    }
    return f.f(cn.dbox.core.b.a.k);
  }
  
  public String o()
  {
    if (b != null) {
      return b.e();
    }
    if (b.c().equals("online")) {
      return f.f(cn.dbox.core.b.a.n);
    }
    if (b.c().equals("offline")) {
      return f.f(cn.dbox.core.b.a.t);
    }
    return f.f(cn.dbox.core.b.a.n);
  }
  
  public String p()
  {
    if (b != null) {
      return b.f();
    }
    if (b.c().equals("online")) {
      return f.f(cn.dbox.core.b.a.o);
    }
    if (b.c().equals("offline")) {
      return f.f(cn.dbox.core.b.a.u);
    }
    return f.f(cn.dbox.core.b.a.o);
  }
  
  public String q()
  {
    return d;
  }
  
  public void r()
  {
    for (;;)
    {
      int i1;
      try
      {
        Class localClass = Class.forName("cn.domob.ui.main.DViewManager");
        Object localObject = localClass.getConstructors();
        Class[] arrayOfClass = null;
        i1 = 0;
        if (i1 < localObject.length)
        {
          if (localObject[i1].getParameterAnnotations().length > 0) {
            arrayOfClass = localObject[i1];
          }
        }
        else
        {
          arrayOfClass = arrayOfClass.getParameterTypes();
          localObject = f;
          String str1 = l;
          String str2 = m;
          u = localClass.getConstructor(arrayOfClass).newInstance(new Object[] { localObject, str1, str2 });
          v = localClass.getMethod("showWall", new Class[0]);
          w = localClass.getMethod("preLoad", new Class[0]);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      catch (Error localError)
      {
        localError.printStackTrace();
        return;
      }
      i1 += 1;
    }
  }
  
  public void s()
  {
    if (((u == null) || (w == null)) && (f.a(this))) {
      r();
    }
    try
    {
      if ((w != null) && (u != null)) {
        w.invoke(u, new Object[0]);
      }
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.printStackTrace();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    catch (Error localError)
    {
      localError.printStackTrace();
    }
  }
  
  public void t()
  {
    if (((u == null) || (v == null)) && (f.a(this))) {
      r();
    }
    try
    {
      if ((v != null) && (u != null)) {
        v.invoke(u, new Object[0]);
      }
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.printStackTrace();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    catch (Error localError)
    {
      localError.printStackTrace();
    }
  }
}
