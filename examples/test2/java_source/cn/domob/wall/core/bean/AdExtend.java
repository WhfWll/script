package cn.domob.wall.core.bean;

import cn.domob.wall.core.e.b;
import cn.domob.wall.core.h.d;
import cn.domob.wall.core.h.f;
import org.json.JSONObject;

public class AdExtend
{
  d a = new d(AdExtend.class.getSimpleName());
  private String b;
  private String c;
  private boolean d;
  private String e;
  private String f;
  
  public AdExtend(JSONObject paramJSONObject)
    throws b
  {
    if (paramJSONObject != null) {
      try
      {
        b = paramJSONObject.getString("label");
        c = paramJSONObject.getString("url");
        e = paramJSONObject.getString("id");
        f = paramJSONObject.getString("tr");
        d = paramJSONObject.optBoolean("preload", Boolean.FALSE.booleanValue());
        a.b("adExtendJsonObject: " + toString());
        if ((f.g(e)) || (f.g(b)) || (f.g(f)) || (f.g(c))) {
          throw new b();
        }
      }
      catch (Exception paramJSONObject)
      {
        a.a(paramJSONObject);
        throw new b(String.format("ParseAdExtendRespException: %s", new Object[] { toString() }));
      }
    }
  }
  
  public String getmId()
  {
    return e;
  }
  
  public String getmLabel()
  {
    return b;
  }
  
  public String getmTr()
  {
    return f;
  }
  
  public String getmUrl()
  {
    return c;
  }
  
  public boolean ismPreload()
  {
    return d;
  }
  
  public String toString()
  {
    return "AdExtend [mLogger=" + a + ", mLabel=" + b + ", mUrl=" + c + ", mPreload=" + d + ", mId=" + e + ", mTr=" + f + "]";
  }
}
