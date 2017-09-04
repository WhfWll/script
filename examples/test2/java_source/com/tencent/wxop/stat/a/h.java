package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.StatAppMonitor;
import com.tencent.wxop.stat.StatSpecifyReportedInfo;
import com.tencent.wxop.stat.a;
import com.tencent.wxop.stat.common.k;
import com.tencent.wxop.stat.common.q;
import org.json.JSONObject;

public class h
  extends e
{
  private static String m = null;
  private static String n = null;
  private StatAppMonitor a = null;
  
  public h(Context paramContext, int paramInt, StatAppMonitor paramStatAppMonitor, StatSpecifyReportedInfo paramStatSpecifyReportedInfo)
  {
    super(paramContext, paramInt, paramStatSpecifyReportedInfo);
    a = paramStatAppMonitor.clone();
  }
  
  public f a()
  {
    return f.f;
  }
  
  public boolean a(JSONObject paramJSONObject)
  {
    if (a == null) {
      return false;
    }
    paramJSONObject.put("na", a.getInterfaceName());
    paramJSONObject.put("rq", a.getReqSize());
    paramJSONObject.put("rp", a.getRespSize());
    paramJSONObject.put("rt", a.getResultType());
    paramJSONObject.put("tm", a.getMillisecondsConsume());
    paramJSONObject.put("rc", a.getReturnCode());
    paramJSONObject.put("sp", a.getSampling());
    if (n == null) {
      n = k.n(l);
    }
    q.a(paramJSONObject, "av", n);
    if (m == null) {
      m = k.i(l);
    }
    q.a(paramJSONObject, "op", m);
    paramJSONObject.put("cn", a.a(l).b());
    return true;
  }
}
