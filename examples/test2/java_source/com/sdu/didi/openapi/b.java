package com.sdu.didi.openapi;

import android.content.Context;
import android.os.AsyncTask;
import java.util.Map;

final class b
  extends AsyncTask<Void, Void, Map<String, String>>
{
  b(Context paramContext, DIOpenSDK.TicketType paramTicketType, DIOpenSDK.DDCallBack paramDDCallBack) {}
  
  protected Map<String, String> a(Void... paramVarArgs)
  {
    return DIOpenSDK.syncGetTicket(a, b);
  }
  
  protected void a(Map<String, String> paramMap)
  {
    if (c != null) {
      c.onFinish(paramMap);
    }
  }
}
