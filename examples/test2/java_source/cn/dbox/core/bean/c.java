package cn.dbox.core.bean;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c
{
  private static cn.dbox.core.h.d a = new cn.dbox.core.h.d(c.class.getSimpleName());
  private String b;
  private String c;
  private String d;
  private ArrayList<d> e = new ArrayList();
  
  public c() {}
  
  public c(String paramString1, String paramString2)
  {
    b = paramString1;
    c = paramString2;
  }
  
  public c(JSONObject paramJSONObject)
  {
    try
    {
      b = paramJSONObject.optString("id");
      c = paramJSONObject.optString("name");
      d = paramJSONObject.optString("logo");
      paramJSONObject = new JSONArray(paramJSONObject.getString("containers"));
      int i = 0;
      for (;;)
      {
        int j = paramJSONObject.length();
        if (i < j) {
          try
          {
            e.add(new d(b, c, paramJSONObject.getJSONObject(i)));
            i += 1;
          }
          catch (Exception localException)
          {
            for (;;)
            {
              a.a(localException);
            }
          }
        }
      }
      return;
    }
    catch (JSONException paramJSONObject)
    {
      a.b(paramJSONObject.toString());
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
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return d;
  }
  
  public ArrayList<d> d()
  {
    return e;
  }
  
  public String toString()
  {
    return "ChannelInfo [mChannelId=" + b + ", mChannelName=" + c + ", mSEContainerInfos=" + e + "]";
  }
}
