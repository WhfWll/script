package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.StatConfig;
import com.tencent.wxop.stat.StatSpecifyReportedInfo;
import com.tencent.wxop.stat.common.b;
import com.tencent.wxop.stat.common.q;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.json.JSONObject;

public class d
  extends e
{
  private String a;
  private int m;
  private int n = 100;
  private Thread o = null;
  
  public d(Context paramContext, int paramInt1, int paramInt2, Throwable paramThrowable, StatSpecifyReportedInfo paramStatSpecifyReportedInfo)
  {
    super(paramContext, paramInt1, paramStatSpecifyReportedInfo);
    a(paramInt2, paramThrowable);
  }
  
  public d(Context paramContext, int paramInt1, int paramInt2, Throwable paramThrowable, Thread paramThread, StatSpecifyReportedInfo paramStatSpecifyReportedInfo)
  {
    super(paramContext, paramInt1, paramStatSpecifyReportedInfo);
    a(paramInt2, paramThrowable);
    o = paramThread;
  }
  
  public d(Context paramContext, int paramInt1, String paramString, int paramInt2, int paramInt3, Thread paramThread, StatSpecifyReportedInfo paramStatSpecifyReportedInfo)
  {
    super(paramContext, paramInt1, paramStatSpecifyReportedInfo);
    if (paramString != null)
    {
      paramInt1 = paramInt3;
      if (paramInt3 <= 0) {
        paramInt1 = StatConfig.getMaxReportEventLength();
      }
      if (paramString.length() > paramInt1) {
        break label61;
      }
    }
    label61:
    for (a = paramString;; a = paramString.substring(0, paramInt1))
    {
      o = paramThread;
      m = paramInt2;
      return;
    }
  }
  
  private void a(int paramInt, Throwable paramThrowable)
  {
    if (paramThrowable != null)
    {
      StringWriter localStringWriter = new StringWriter();
      PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
      paramThrowable.printStackTrace(localPrintWriter);
      a = localStringWriter.toString();
      m = paramInt;
      localPrintWriter.close();
    }
  }
  
  public f a()
  {
    return f.c;
  }
  
  public boolean a(JSONObject paramJSONObject)
  {
    q.a(paramJSONObject, "er", a);
    paramJSONObject.put("ea", m);
    if ((m == 2) || (m == 3)) {
      new b(l).a(paramJSONObject, o);
    }
    return true;
  }
}
