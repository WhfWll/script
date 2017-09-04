package cn.domob.wall.core.c;

import cn.domob.wall.core.h.d;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class b
{
  private static d b = new d(b.class.getSimpleName());
  private JSONArray a = new JSONArray();
  
  public b(String paramString)
  {
    try
    {
      a = new JSONObject(new JSONTokener(paramString)).optJSONArray("turnoff");
      return;
    }
    catch (JSONException paramString)
    {
      b.e("Config resp is not in JSONObject");
      return;
    }
    catch (Exception paramString)
    {
      b.a(paramString);
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
            b.a(localJSONException);
          }
        }
      }
    }
    return localArrayList;
  }
  
  public ArrayList<String> a()
  {
    return a(a);
  }
}
