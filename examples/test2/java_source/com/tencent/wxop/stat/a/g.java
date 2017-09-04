package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.StatGameUser;
import com.tencent.wxop.stat.StatSpecifyReportedInfo;
import com.tencent.wxop.stat.common.q;
import org.json.JSONObject;

public class g
  extends e
{
  private StatGameUser a = null;
  
  public g(Context paramContext, int paramInt, StatGameUser paramStatGameUser, StatSpecifyReportedInfo paramStatSpecifyReportedInfo)
  {
    super(paramContext, paramInt, paramStatSpecifyReportedInfo);
    a = paramStatGameUser.clone();
  }
  
  public f a()
  {
    return f.g;
  }
  
  public boolean a(JSONObject paramJSONObject)
  {
    if (a == null) {
      return false;
    }
    q.a(paramJSONObject, "wod", a.getWorldName());
    q.a(paramJSONObject, "gid", a.getAccount());
    q.a(paramJSONObject, "lev", a.getLevel());
    return true;
  }
}
