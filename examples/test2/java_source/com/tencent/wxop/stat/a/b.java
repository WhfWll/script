package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.StatServiceImpl;
import com.tencent.wxop.stat.StatSpecifyReportedInfo;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class b
  extends e
{
  protected c a = new c();
  private long m = -1L;
  
  public b(Context paramContext, int paramInt, String paramString, StatSpecifyReportedInfo paramStatSpecifyReportedInfo)
  {
    super(paramContext, paramInt, paramStatSpecifyReportedInfo);
    a.a = paramString;
  }
  
  private void h()
  {
    Object localObject;
    if (a.a != null)
    {
      localObject = StatServiceImpl.getCommonKeyValueForKVEvent(a.a);
      if ((localObject != null) && (((Properties)localObject).size() > 0))
      {
        if ((a.c != null) && (a.c.length() != 0)) {
          break label71;
        }
        a.c = new JSONObject((Map)localObject);
      }
    }
    for (;;)
    {
      return;
      label71:
      localObject = ((Properties)localObject).entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        try
        {
          a.c.put(localEntry.getKey().toString(), localEntry.getValue());
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
    }
  }
  
  public f a()
  {
    return f.d;
  }
  
  public void a(long paramLong)
  {
    m = paramLong;
  }
  
  public boolean a(JSONObject paramJSONObject)
  {
    paramJSONObject.put("ei", a.a);
    if (m > 0L) {
      paramJSONObject.put("du", m);
    }
    if (a.b == null)
    {
      h();
      paramJSONObject.put("kv", a.c);
    }
    for (;;)
    {
      return true;
      paramJSONObject.put("ar", a.b);
    }
  }
  
  public c b()
  {
    return a;
  }
}
