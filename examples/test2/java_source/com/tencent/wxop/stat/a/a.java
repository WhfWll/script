package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.StatAccount;
import com.tencent.wxop.stat.StatSpecifyReportedInfo;
import com.tencent.wxop.stat.common.q;
import org.json.JSONObject;

public class a
  extends e
{
  private StatAccount a = null;
  
  public a(Context paramContext, int paramInt, StatAccount paramStatAccount, StatSpecifyReportedInfo paramStatSpecifyReportedInfo)
  {
    super(paramContext, paramInt, paramStatSpecifyReportedInfo);
    a = paramStatAccount;
  }
  
  public f a()
  {
    return f.e;
  }
  
  public boolean a(JSONObject paramJSONObject)
  {
    q.a(paramJSONObject, "qq", a.getAccount());
    paramJSONObject.put("acc", a.toJsonString());
    return true;
  }
}
