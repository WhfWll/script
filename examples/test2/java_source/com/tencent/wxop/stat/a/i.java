package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.StatConfig;
import com.tencent.wxop.stat.StatSpecifyReportedInfo;
import com.tencent.wxop.stat.common.q;
import org.json.JSONObject;

public class i
  extends e
{
  public static final StatSpecifyReportedInfo a;
  
  static
  {
    StatSpecifyReportedInfo localStatSpecifyReportedInfo = new StatSpecifyReportedInfo();
    a = localStatSpecifyReportedInfo;
    localStatSpecifyReportedInfo.setAppKey("A9VH9B8L4GX4");
  }
  
  public i(Context paramContext)
  {
    super(paramContext, 0, a);
  }
  
  public f a()
  {
    return f.i;
  }
  
  public boolean a(JSONObject paramJSONObject)
  {
    q.a(paramJSONObject, "actky", StatConfig.getAppKey(l));
    return true;
  }
}
