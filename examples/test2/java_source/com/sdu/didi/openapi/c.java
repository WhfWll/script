package com.sdu.didi.openapi;

import android.content.Context;
import android.os.AsyncTask;
import com.sdu.didi.openapi.gK.b;
import com.sdu.didi.openapi.utils.Utils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

final class c
  extends AsyncTask<Void, Void, Map<String, String>>
{
  c(Context paramContext, Map paramMap, String paramString, DIOpenSDK.DDCallBack paramDDCallBack) {}
  
  protected Map<String, String> a(Void... paramVarArgs)
  {
    HashMap localHashMap = new HashMap();
    paramVarArgs = l.a().b(a).d();
    String str1 = Utils.getTimestamp();
    String str2 = Utils.getRandomString(10);
    Object localObject = new JSONObject();
    JSONObject localJSONObject = new JSONObject();
    try
    {
      if ((b != null) && (!b.isEmpty())) {
        localJSONObject.put("data", new JSONObject(b));
      }
      localJSONObject.put("page", c);
      ((JSONObject)localObject).put("apiname", "getPageUrl");
      ((JSONObject)localObject).put("params", localJSONObject);
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
    localObject = ((JSONObject)localObject).toString();
    localHashMap.put("openid", paramVarArgs);
    localHashMap.put("timestamp", str1);
    localHashMap.put("noncestr", str2);
    localHashMap.put("package", localObject);
    localHashMap.put("sign", DIOpenSDK.a().getv11Sign(paramVarArgs + DIOpenSDK.b() + (String)localObject + str1 + str2));
    str1 = com.sdu.didi.openapi.ss.a.a().b("https://api.xiaojukeji.com/v1/remote", localHashMap);
    paramVarArgs = new d(this);
    paramVarArgs.a(str1);
    localHashMap.clear();
    localHashMap.put("errno", paramVarArgs.a() + "");
    localHashMap.put("errmsg", paramVarArgs.b());
    paramVarArgs = localHashMap;
    if (localHashMap.isEmpty()) {
      paramVarArgs = DIOpenSDK.a(DIOpenSDK.a(), str1);
    }
    return paramVarArgs;
  }
  
  protected void a(Map<String, String> paramMap)
  {
    if (d != null) {
      d.onFinish(paramMap);
    }
  }
}
