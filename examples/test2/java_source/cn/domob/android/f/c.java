package cn.domob.android.f;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;

public class c
{
  private static volatile c a = null;
  private ThreadPoolExecutor b = (ThreadPoolExecutor)Executors.newCachedThreadPool();
  private final Map<Context, List<WeakReference<Future<?>>>> c = new WeakHashMap();
  private final Map<String, String> d = new HashMap();
  
  private c() {}
  
  public static c a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new c();
      }
      return a;
    }
    finally {}
  }
  
  public static String a(String paramString, f paramF)
  {
    String str = paramString;
    if (paramF != null)
    {
      paramF = paramF.b();
      if (paramString.indexOf("?") == -1) {
        str = paramString + "?" + paramF;
      }
    }
    else
    {
      return str;
    }
    return paramString + "&" + paramF;
  }
  
  private h b(e paramE)
  {
    Object localObject = new d(paramE);
    Context localContext = paramE.a();
    if (paramE.e()) {
      return ((d)localObject).a();
    }
    Future localFuture = b.submit((Runnable)localObject);
    if (localContext != null)
    {
      localObject = (List)c.get(localContext);
      paramE = (e)localObject;
      if (localObject == null)
      {
        paramE = new LinkedList();
        c.put(localContext, paramE);
      }
      paramE.add(new WeakReference(localFuture));
    }
    return null;
  }
  
  public h a(Context paramContext, String paramString)
  {
    e localE = new e();
    localE.a(paramContext);
    localE.a(paramString);
    localE.c("GET");
    localE.a(true);
    return a(localE);
  }
  
  public h a(e paramE)
  {
    return b(paramE);
  }
  
  public void a(Context paramContext, String paramString, f paramF, g paramG)
  {
    paramContext = new e();
    paramContext.a(paramString);
    paramContext.c("GET");
    paramContext.a(paramG);
    a(paramContext);
  }
  
  public void a(Context paramContext, String paramString, g paramG)
  {
    paramContext = new e();
    paramContext.a(paramString);
    paramContext.a(paramG);
    paramContext.c("GET");
    a(paramContext);
  }
  
  public void a(Context paramContext, String paramString1, g paramG, String paramString2)
  {
    paramContext = new e();
    paramContext.a(paramString1);
    paramContext.a(paramG);
    paramContext.b(paramString2);
    paramContext.c("GET");
    a(paramContext);
  }
  
  public void a(Context paramContext, boolean paramBoolean)
  {
    Object localObject = (List)c.get(paramContext);
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Future localFuture = (Future)((WeakReference)((Iterator)localObject).next()).get();
        if (localFuture != null) {
          localFuture.cancel(paramBoolean);
        }
      }
    }
    c.remove(paramContext);
  }
  
  public void a(String paramString1, String paramString2)
  {
    d.put(paramString1, paramString2);
  }
  
  public void a(ThreadPoolExecutor paramThreadPoolExecutor)
  {
    b = paramThreadPoolExecutor;
  }
  
  public void b(Context paramContext, String paramString, f paramF, g paramG)
  {
    e localE = new e();
    localE.a(paramContext);
    localE.a(paramString);
    localE.a(paramF);
    localE.a(paramG);
    a(localE);
  }
  
  public void c(Context paramContext, String paramString, f paramF, g paramG)
  {
    e localE = new e();
    localE.a(paramContext);
    localE.a(paramString);
    localE.a(paramF);
    localE.a(paramG);
    localE.b(true);
    a(localE);
  }
}
