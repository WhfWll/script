package cn.domob.android.ads.b;

import java.util.Map;

abstract class b
{
  protected Map<String, String> a;
  protected m b;
  
  b(Map<String, String> paramMap, m paramM)
  {
    a = paramMap;
    b = paramM;
  }
  
  protected int a(String paramString)
  {
    paramString = (String)a.get(paramString);
    if (paramString == null) {
      return -1;
    }
    try
    {
      int i = Integer.parseInt(paramString, 10);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return -1;
  }
  
  abstract void a();
  
  protected String b(String paramString)
  {
    return (String)a.get(paramString);
  }
  
  protected float c(String paramString)
  {
    if ((String)a.get(paramString) == null) {
      return 0.0F;
    }
    try
    {
      float f = Float.parseFloat(paramString);
      return f;
    }
    catch (NumberFormatException paramString) {}
    return 0.0F;
  }
  
  protected boolean d(String paramString)
  {
    return "true".equals(a.get(paramString));
  }
}
