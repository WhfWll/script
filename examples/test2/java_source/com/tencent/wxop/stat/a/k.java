package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.StatSpecifyReportedInfo;
import com.tencent.wxop.stat.common.q;
import org.json.JSONObject;

public class k
  extends e
{
  Long a = null;
  String m;
  String n;
  
  public k(Context paramContext, String paramString1, String paramString2, int paramInt, Long paramLong, StatSpecifyReportedInfo paramStatSpecifyReportedInfo)
  {
    super(paramContext, paramInt, paramStatSpecifyReportedInfo);
    n = paramString1;
    m = paramString2;
    a = paramLong;
  }
  
  public f a()
  {
    return f.a;
  }
  
  public boolean a(JSONObject paramJSONObject)
  {
    q.a(paramJSONObject, "pi", m);
    q.a(paramJSONObject, "rf", n);
    if (a != null) {
      paramJSONObject.put("du", a);
    }
    return true;
  }
}
