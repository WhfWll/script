package cn.domob.android.offerwall;

import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

class k
{
  private static m a = new m(k.class.getSimpleName());
  private static final String h = "status";
  private static final String i = "refresh_interval";
  private static final String j = "results";
  private static final String k = "id";
  private static final String l = "rp_url";
  private static final String m = "name";
  private static final String n = "pkg";
  private static final String o = "file_url";
  private static final String p = "config";
  private static final String q = "autorun";
  private static final String r = "autodownload";
  private String b;
  private String c;
  private int d;
  private String e;
  private HashMap<Integer, a> f;
  private b g;
  
  private k() {}
  
  protected static k a(String paramString)
  {
    k localK = new k();
    if (localK.b(paramString))
    {
      a.a("OfferWall response is ok.");
      return localK;
    }
    return null;
  }
  
  private boolean b(String paramString)
  {
    for (;;)
    {
      int i1;
      try
      {
        b = paramString;
        Object localObject = new JSONObject(new JSONTokener(paramString));
        c = ((JSONObject)localObject).optString("status", null);
        d = ((JSONObject)localObject).optInt("refresh_interval", 3600);
        e = ((JSONObject)localObject).optString("results", null);
        paramString = ((JSONObject)localObject).optJSONObject("config");
        localObject = ((JSONObject)localObject).optJSONArray("results");
        if (localObject != null)
        {
          f = new HashMap();
          int i2 = ((JSONArray)localObject).length();
          i1 = 0;
          if (i1 < i2)
          {
            a localA = new a(((JSONArray)localObject).getJSONObject(i1));
            if (localA == null) {
              break label177;
            }
            f.put(Integer.valueOf(localA.a()), localA);
            break label177;
          }
        }
        if (paramString != null) {
          g = new b(paramString);
        }
        return true;
      }
      catch (Exception paramString)
      {
        a.a(paramString);
        return false;
      }
      label177:
      i1 += 1;
    }
  }
  
  protected String a()
  {
    return b;
  }
  
  protected String b()
  {
    return c;
  }
  
  protected int c()
  {
    return d;
  }
  
  protected String d()
  {
    return e;
  }
  
  protected HashMap<Integer, a> e()
  {
    return f;
  }
  
  protected b f()
  {
    return g;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DomobOfferResponse [mOriginalRespStr=").append(b).append(", mStatus=").append(c).append(", mRefreshInterval=").append(d).append(", mResults=").append(e).append(", mConfig=").append(g).append("]");
    return localStringBuilder.toString();
  }
  
  class a
  {
    private int b;
    private String c;
    private String d;
    private String e;
    private String f;
    
    a(JSONObject paramJSONObject)
    {
      b = paramJSONObject.optInt("id");
      c = paramJSONObject.optString("rp_url", null);
      d = paramJSONObject.optString("name", null);
      e = paramJSONObject.optString("pkg", null);
      f = paramJSONObject.optString("file_url", null);
    }
    
    protected int a()
    {
      return b;
    }
    
    protected String b()
    {
      return c;
    }
    
    protected String c()
    {
      return d;
    }
    
    protected String d()
    {
      return e;
    }
    
    protected String e()
    {
      return f;
    }
  }
  
  class b
  {
    private boolean b;
    private boolean c;
    
    b(JSONObject paramJSONObject)
    {
      b = paramJSONObject.optBoolean("autorun", false);
      c = paramJSONObject.optBoolean("autodownload", false);
    }
    
    protected boolean a()
    {
      return b;
    }
    
    protected boolean b()
    {
      return c;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("OfferConfig [mAutorun=").append(b).append(", mAutoDownload=").append(c).append("]");
      return localStringBuilder.toString();
    }
  }
}
