package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.StatSpecifyReportedInfo;
import com.tencent.wxop.stat.a;
import com.tencent.wxop.stat.common.k;
import com.tencent.wxop.stat.common.q;
import org.json.JSONObject;

public class j
  extends e
{
  private static String a = null;
  private String m = null;
  private String n = null;
  
  public j(Context paramContext, int paramInt, StatSpecifyReportedInfo paramStatSpecifyReportedInfo)
  {
    super(paramContext, paramInt, paramStatSpecifyReportedInfo);
    m = a.a(paramContext).b();
    if (a == null) {
      a = k.i(paramContext);
    }
  }
  
  public f a()
  {
    return f.h;
  }
  
  public void a(String paramString)
  {
    n = paramString;
  }
  
  public boolean a(JSONObject paramJSONObject)
  {
    q.a(paramJSONObject, "op", a);
    q.a(paramJSONObject, "cn", m);
    paramJSONObject.put("sp", n);
    return true;
  }
}
