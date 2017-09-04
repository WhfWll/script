package cn.domob.android.offerwall;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

class b
{
  protected static final String a = "domob_config";
  protected static final String b = "cookie_id";
  protected static final String c = "interval";
  protected static final String d = "disable";
  protected static final String e = "timestamp";
  protected static final String f = "time";
  protected static final String g = "next_time";
  private Context h;
  private String i;
  private SharedPreferences j;
  
  b(Context paramContext, String paramString)
  {
    h = paramContext;
    i = paramString;
    j = h.getSharedPreferences(i, 0);
  }
  
  protected float a(String paramString, float paramFloat)
  {
    return j.getFloat(paramString, paramFloat);
  }
  
  protected int a(String paramString, int paramInt)
  {
    return j.getInt(paramString, paramInt);
  }
  
  protected long a(String paramString, long paramLong)
  {
    return j.getLong(paramString, paramLong);
  }
  
  protected String a(String paramString1, String paramString2)
  {
    return j.getString(paramString1, paramString2);
  }
  
  protected void a(HashMap<String, Object> paramHashMap)
  {
    SharedPreferences.Editor localEditor;
    for (;;)
    {
      String str;
      Object localObject;
      synchronized (j)
      {
        localEditor = j.edit();
        Iterator localIterator = paramHashMap.keySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        str = (String)localIterator.next();
        localObject = paramHashMap.get(str);
        if ((localObject instanceof String)) {
          localEditor.putString(str, (String)localObject);
        }
      }
      if ((localObject instanceof Boolean)) {
        localEditor.putBoolean(str, ((Boolean)localObject).booleanValue());
      } else if ((localObject instanceof Integer)) {
        localEditor.putInt(str, ((Integer)localObject).intValue());
      } else if ((localObject instanceof Float)) {
        localEditor.putFloat(str, ((Float)localObject).floatValue());
      } else if ((localObject instanceof Long)) {
        localEditor.putLong(str, ((Long)localObject).longValue());
      }
    }
    localEditor.commit();
  }
  
  protected boolean a(String paramString, boolean paramBoolean)
  {
    return j.getBoolean(paramString, paramBoolean);
  }
}
