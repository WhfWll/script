package cn.dbox.core.bean;

import cn.dbox.core.h.d;
import org.json.JSONObject;

public class g
{
  private static d a = new d(g.class.getSimpleName());
  private String b;
  private a c;
  
  public g(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {}
    try
    {
      b = paramJSONObject.optString("layout");
      c = new a(paramJSONObject.optJSONObject("entry"));
      return;
    }
    catch (Exception paramJSONObject)
    {
      a.a(paramJSONObject);
    }
  }
  
  public String a()
  {
    return b;
  }
  
  public a b()
  {
    return c;
  }
  
  public String toString()
  {
    return "ControlInfo [mLayout=" + b + ", mSEControlEntry=" + c + "]";
  }
  
  public class a
  {
    private String b;
    private String c;
    
    public a(JSONObject paramJSONObject)
    {
      if (paramJSONObject != null)
      {
        b = paramJSONObject.optString("remind");
        c = paramJSONObject.optString("tracker");
      }
    }
    
    public String a()
    {
      return b;
    }
    
    public String b()
    {
      return c;
    }
    
    public String toString()
    {
      return "SEControlEntry [mRemind=" + b + ", mTracker=" + c + "]";
    }
  }
}
