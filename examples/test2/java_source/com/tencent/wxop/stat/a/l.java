package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.StatSpecifyReportedInfo;
import com.tencent.wxop.stat.common.a;
import com.tencent.wxop.stat.common.b;
import com.tencent.wxop.stat.common.k;
import org.json.JSONObject;

public class l
  extends e
{
  private b a;
  private JSONObject m = null;
  
  public l(Context paramContext, int paramInt, JSONObject paramJSONObject, StatSpecifyReportedInfo paramStatSpecifyReportedInfo)
  {
    super(paramContext, paramInt, paramStatSpecifyReportedInfo);
    a = new b(paramContext);
    m = paramJSONObject;
  }
  
  public f a()
  {
    return f.b;
  }
  
  public boolean a(JSONObject paramJSONObject)
  {
    if (e != null) {
      paramJSONObject.put("ut", e.d());
    }
    if (m != null) {
      paramJSONObject.put("cfg", m);
    }
    if (k.y(l)) {
      paramJSONObject.put("ncts", 1);
    }
    a.a(paramJSONObject, null);
    return true;
  }
}
