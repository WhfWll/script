package org.apache.cordova;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

public class JSONUtils
{
  public JSONUtils() {}
  
  public static List<String> toStringList(JSONArray paramJSONArray)
    throws JSONException
  {
    Object localObject;
    if (paramJSONArray == null)
    {
      localObject = null;
      return localObject;
    }
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= paramJSONArray.length()) {
        break;
      }
      localArrayList.add(paramJSONArray.get(i).toString());
      i += 1;
    }
  }
}
