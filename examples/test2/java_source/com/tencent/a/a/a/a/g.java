package com.tencent.a.a.a.a;

import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class g
{
  private static g V = null;
  private Map<Integer, f> U = null;
  private int b = 0;
  private Context c = null;
  
  private g(Context paramContext)
  {
    c = paramContext.getApplicationContext();
    U = new HashMap(3);
    U.put(Integer.valueOf(1), new e(paramContext));
    U.put(Integer.valueOf(2), new b(paramContext));
    U.put(Integer.valueOf(4), new d(paramContext));
  }
  
  public static g E(Context paramContext)
  {
    try
    {
      if (V == null) {
        V = new g(paramContext);
      }
      paramContext = V;
      return paramContext;
    }
    finally {}
  }
  
  private c b(List<Integer> paramList)
  {
    if (paramList.size() >= 0)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Object localObject = (Integer)paramList.next();
        localObject = (f)U.get(localObject);
        if (localObject != null)
        {
          localObject = ((f)localObject).o();
          if ((localObject != null) && (h.c(c))) {
            return localObject;
          }
        }
      }
    }
    return new c();
  }
  
  public final void a(String paramString)
  {
    c localC = p();
    c = paramString;
    if (!h.b(a)) {
      a = h.a(c);
    }
    if (!h.b(b)) {
      b = h.b(c);
    }
    T = System.currentTimeMillis();
    paramString = U.entrySet().iterator();
    while (paramString.hasNext()) {
      ((f)((Map.Entry)paramString.next()).getValue()).a(localC);
    }
  }
  
  public final c p()
  {
    return b(new ArrayList(Arrays.asList(new Integer[] { Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(4) })));
  }
}
