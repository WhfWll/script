package com.sdu.didi.openapi.ss;

import com.sdu.didi.openapi.utils.Utils;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import ss.aa;
import ss.aa.a;
import ss.ab;
import ss.ac;
import ss.ac.a;
import ss.ag;
import ss.ag.a;
import ss.ai;
import ss.ak;
import ss.am;
import ss.g;
import ss.y;
import ss.y.a;

public class a
{
  private static a a;
  private ac b;
  
  private a()
  {
    ac.a localA = new ac.a();
    localA.a(new a("didi.sdk" + Utils.a())).a(3L, TimeUnit.SECONDS).b(3L, TimeUnit.SECONDS).c(3L, TimeUnit.SECONDS);
    b = localA.a();
  }
  
  public static a a()
  {
    try
    {
      if (a == null) {
        a = new a();
      }
      a localA = a;
      return localA;
    }
    finally {}
  }
  
  public String a(String paramString, Map<String, String> paramMap)
  {
    try
    {
      ag.a localA = new ag.a();
      paramString = y.e(paramString).m();
      if ((paramMap != null) && (!paramMap.isEmpty()))
      {
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)paramMap.next();
          paramString.a((String)localEntry.getKey(), (String)localEntry.getValue());
        }
      }
      paramString = localA.a(paramString.c()).a();
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
      return "";
    }
    paramString = b.a(paramString).a();
    if (paramString.c()) {
      return paramString.f().e();
    }
    return "";
  }
  
  public String b(String paramString, Map<String, String> paramMap)
  {
    try
    {
      ag.a localA = new ag.a();
      paramMap = ai.a(ab.a("application/x-www-form-urlencoded"), Utils.a(paramMap));
      paramString = localA.a(paramString).a(paramMap).a();
      paramString = b.a(paramString).a();
      if (paramString.c()) {
        return paramString.f().e();
      }
      return "";
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
    }
    return "";
  }
  
  public class a
    implements aa
  {
    private final String b;
    
    public a(String paramString)
    {
      b = paramString;
    }
    
    public ak a(aa.a paramA)
      throws IOException
    {
      return paramA.a(paramA.a().e().a("User-Agent", b).a());
    }
  }
}
