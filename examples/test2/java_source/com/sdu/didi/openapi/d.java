package com.sdu.didi.openapi;

import android.text.TextUtils;
import com.sdu.didi.openapi.gK.a;
import java.util.HashMap;
import org.json.JSONObject;

class d
  extends a
{
  d(c paramC) {}
  
  protected void a(JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.optString("url");
    if (!TextUtils.isEmpty(paramJSONObject))
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("special_url", paramJSONObject);
      DIOpenSDK.showDDPage(a.a, localHashMap);
    }
  }
}
