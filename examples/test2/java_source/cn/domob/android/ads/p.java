package cn.domob.android.ads;

import cn.domob.android.i.f;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

class p
{
  private static f c = new f(p.class.getSimpleName());
  private final String a = "turnoff";
  private JSONArray b = new JSONArray();
  
  public p(String paramString)
  {
    try
    {
      b = new JSONObject(new JSONTokener(paramString)).optJSONArray("turnoff");
      return;
    }
    catch (JSONException paramString)
    {
      c.b("Config resp is not in JSONObject");
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private ArrayList<String> a(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramJSONArray != null) && (!"".equals(paramJSONArray)))
    {
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
              localJSONException.printStackTrace();
            }
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
}
