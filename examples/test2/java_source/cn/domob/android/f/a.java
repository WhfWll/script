package cn.domob.android.f;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class a
{
  public static final String a = "domob_config";
  public static final String b = "cookie_id";
  public static final String c = "interval";
  public static final String d = "disable";
  public static final String e = "timestamp";
  public static final String f = "time";
  public static final String g = "next_time";
  public static final String h = "version";
  public static final String i = "config";
  public static final String j = "timeout";
  private Context k;
  private String l;
  private SharedPreferences m;
  
  public a(Context paramContext, String paramString)
  {
    k = paramContext;
    l = paramString;
    m = k.getSharedPreferences(l, 0);
  }
  
  public float a(String paramString, float paramFloat)
  {
    return m.getFloat(paramString, paramFloat);
  }
  
  public int a(String paramString, int paramInt)
  {
    return m.getInt(paramString, paramInt);
  }
  
  public long a(String paramString, long paramLong)
  {
    return m.getLong(paramString, paramLong);
  }
  
  public String a(String paramString1, String paramString2)
  {
    return m.getString(paramString1, paramString2);
  }
  
  public void a(HashMap<String, Object> paramHashMap)
  {
    SharedPreferences.Editor localEditor;
    for (;;)
    {
      String str;
      Object localObject;
      synchronized (m)
      {
        localEditor = m.edit();
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
  
  public boolean a(String paramString, boolean paramBoolean)
  {
    return m.getBoolean(paramString, paramBoolean);
  }
}
