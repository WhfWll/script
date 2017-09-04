package cn.domob.android.ads;

import android.content.Context;
import android.view.View;
import cn.domob.android.i.f;
import cn.domob.android.i.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class F
{
  private static F b;
  private f a = new f(F.class.getSimpleName());
  
  public F() {}
  
  public static F a()
  {
    try
    {
      if (b == null) {
        b = new F();
      }
      F localF = b;
      return localF;
    }
    finally {}
  }
  
  public void a(Context paramContext, long paramLong, g paramG, j paramJ, HashMap<String, String[]> paramHashMap, HashMap<String, String> paramHashMap1)
  {
    a(paramG, paramJ, paramHashMap1, "p", paramLong - paramLong % 100L, null);
    if (paramHashMap != null)
    {
      paramG = (String[])paramHashMap.get(String.valueOf(paramLong));
      if (paramG != null)
      {
        int i = 0;
        while (i < paramG.length)
        {
          if (!h.e(paramG[i])) {
            new w(paramContext, null).a(paramG[i], "third monitor( " + paramLong + " )");
          }
          i += 1;
        }
      }
    }
  }
  
  protected void a(g paramG, j paramJ, HashMap<String, String> paramHashMap, String paramString, long paramLong, View paramView)
  {
    paramG.a(paramJ, paramHashMap, paramString, "s", paramLong, null, paramView);
  }
  
  public long[] a(HashMap<String, String[]> paramHashMap)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramHashMap != null)
    {
      paramHashMap = paramHashMap.keySet().iterator();
      for (;;)
      {
        if (paramHashMap.hasNext())
        {
          String str = (String)paramHashMap.next();
          try
          {
            l = Long.parseLong(str);
            if (l != -1L) {
              localArrayList.add(new Long(l));
            }
          }
          catch (NumberFormatException localNumberFormatException)
          {
            for (;;)
            {
              a.a(localNumberFormatException);
              long l = -1L;
            }
          }
        }
      }
    }
    paramHashMap = new long[localArrayList.size()];
    int i = 0;
    while (i < paramHashMap.length)
    {
      paramHashMap[i] = ((Long)localArrayList.get(i)).longValue();
      i += 1;
    }
    return paramHashMap;
  }
}
