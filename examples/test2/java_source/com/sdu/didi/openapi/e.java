package com.sdu.didi.openapi;

import com.sdu.didi.openapi.gK.a;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

class e
  extends a
{
  e(DIOpenSDK paramDIOpenSDK, Map paramMap) {}
  
  protected void a(JSONObject paramJSONObject)
  {
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      a.put(str, paramJSONObject.optString(str));
    }
  }
}
