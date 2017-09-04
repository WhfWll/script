package com.sdu.didi.openapi;

import android.content.Context;
import android.os.AsyncTask;
import java.util.Map;

final class a
  extends AsyncTask<Void, Void, Map<String, String>>
{
  a(Context paramContext, String paramString, Map paramMap, DIOpenSDK.DDCallBack paramDDCallBack) {}
  
  protected Map<String, String> a(Void... paramVarArgs)
  {
    return DIOpenSDK.syncCallDDApi(a, b, c);
  }
  
  protected void a(Map<String, String> paramMap)
  {
    if (d != null) {
      d.onFinish(paramMap);
    }
  }
}
