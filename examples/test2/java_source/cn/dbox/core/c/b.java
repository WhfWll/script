package cn.dbox.core.c;

import cn.dbox.core.h.d;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class b
{
  private static d c = new d(b.class.getSimpleName());
  a a;
  private JSONArray b = new JSONArray();
  
  public b(String paramString)
  {
    try
    {
      paramString = new JSONObject(new JSONTokener(paramString));
      b = paramString.optJSONArray("turnoff");
      a = new a(paramString.optJSONObject("req_urls"));
      return;
    }
    catch (JSONException paramString)
    {
      c.e("Config resp is not in JSONObject");
      return;
    }
    catch (Exception paramString)
    {
      c.a(paramString);
    }
  }
  
  private ArrayList<String> a(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    for (;;)
    {
      if (i < paramJSONArray.length()) {
        try
        {
          localArrayList.add(paramJSONArray.getString(i));
          i += 1;
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            c.a(localJSONException);
          }
        }
      }
    }
    return localArrayList;
  }
  
  public ArrayList<String> a()
  {
    return a(b);
  }
  
  public a b()
  {
    return a;
  }
  
  public String toString()
  {
    return "ConfigResponse [mDisabledParamsValue=" + b + ", mReportUrl=" + a + "]";
  }
  
  public class a
  {
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    
    public a(JSONObject paramJSONObject)
    {
      if (paramJSONObject != null)
      {
        b = paramJSONObject.optString("irp");
        c = paramJSONObject.optString("crp");
        d = paramJSONObject.optString("erp");
        e = paramJSONObject.optString("error");
        f = paramJSONObject.optString("feedback");
        g = paramJSONObject.optString("srp");
      }
    }
    
    public String a()
    {
      return g;
    }
    
    public String b()
    {
      return b;
    }
    
    public String c()
    {
      return c;
    }
    
    public String d()
    {
      return d;
    }
    
    public String e()
    {
      return e;
    }
    
    public String f()
    {
      return f;
    }
    
    public String toString()
    {
      return "ReportUrl [irp=" + b + ", crp=" + c + ", erp=" + d + ", error=" + e + ", feedback=" + f + "]";
    }
  }
}
