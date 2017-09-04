package com.tencent.mm.sdk.openapi;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.database.Cursor;
import com.tencent.mm.sdk.b.b;
import com.tencent.mm.sdk.c.a.a;
import com.tencent.mm.sdk.c.a.b;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class MMSharedPreferences
  implements SharedPreferences
{
  private final String[] columns = { "_id", "key", "type", "value" };
  private final ContentResolver cr;
  private REditor editor = null;
  private final HashMap<String, Object> values = new HashMap();
  
  public MMSharedPreferences(Context paramContext)
  {
    cr = paramContext.getContentResolver();
  }
  
  private Object getValue(String paramString)
  {
    for (;;)
    {
      try
      {
        Cursor localCursor = cr.query(a.b.CONTENT_URI, columns, "key = ?", new String[] { paramString }, null);
        if (localCursor == null) {
          return null;
        }
        int i = localCursor.getColumnIndex("type");
        int j = localCursor.getColumnIndex("value");
        if (localCursor.moveToFirst())
        {
          paramString = a.a.a(localCursor.getInt(i), localCursor.getString(j));
          localCursor.close();
          return paramString;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return null;
      }
      paramString = null;
    }
  }
  
  public boolean contains(String paramString)
  {
    return getValue(paramString) != null;
  }
  
  public SharedPreferences.Editor edit()
  {
    if (editor == null) {
      editor = new REditor(cr);
    }
    return editor;
  }
  
  public Map<String, ?> getAll()
  {
    try
    {
      Cursor localCursor = cr.query(a.b.CONTENT_URI, columns, null, null, null);
      if (localCursor == null) {
        return null;
      }
      int i = localCursor.getColumnIndex("key");
      int j = localCursor.getColumnIndex("type");
      int k = localCursor.getColumnIndex("value");
      while (localCursor.moveToNext())
      {
        Object localObject = a.a.a(localCursor.getInt(j), localCursor.getString(k));
        values.put(localCursor.getString(i), localObject);
      }
      localException.close();
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return values;
    }
    HashMap localHashMap = values;
    return localHashMap;
  }
  
  public boolean getBoolean(String paramString, boolean paramBoolean)
  {
    paramString = getValue(paramString);
    boolean bool = paramBoolean;
    if (paramString != null)
    {
      bool = paramBoolean;
      if ((paramString instanceof Boolean)) {
        bool = ((Boolean)paramString).booleanValue();
      }
    }
    return bool;
  }
  
  public float getFloat(String paramString, float paramFloat)
  {
    paramString = getValue(paramString);
    float f = paramFloat;
    if (paramString != null)
    {
      f = paramFloat;
      if ((paramString instanceof Float)) {
        f = ((Float)paramString).floatValue();
      }
    }
    return f;
  }
  
  public int getInt(String paramString, int paramInt)
  {
    paramString = getValue(paramString);
    int i = paramInt;
    if (paramString != null)
    {
      i = paramInt;
      if ((paramString instanceof Integer)) {
        i = ((Integer)paramString).intValue();
      }
    }
    return i;
  }
  
  public long getLong(String paramString, long paramLong)
  {
    paramString = getValue(paramString);
    long l = paramLong;
    if (paramString != null)
    {
      l = paramLong;
      if ((paramString instanceof Long)) {
        l = ((Long)paramString).longValue();
      }
    }
    return l;
  }
  
  public String getString(String paramString1, String paramString2)
  {
    paramString1 = getValue(paramString1);
    if ((paramString1 != null) && ((paramString1 instanceof String))) {
      return (String)paramString1;
    }
    return paramString2;
  }
  
  public Set<String> getStringSet(String paramString, Set<String> paramSet)
  {
    return null;
  }
  
  public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener) {}
  
  public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener) {}
  
  private static class REditor
    implements SharedPreferences.Editor
  {
    private boolean clear = false;
    private ContentResolver cr;
    private Set<String> remove = new HashSet();
    private Map<String, Object> values = new HashMap();
    
    public REditor(ContentResolver paramContentResolver)
    {
      cr = paramContentResolver;
    }
    
    public void apply() {}
    
    public SharedPreferences.Editor clear()
    {
      clear = true;
      return this;
    }
    
    public boolean commit()
    {
      ContentValues localContentValues = new ContentValues();
      if (clear)
      {
        cr.delete(a.b.CONTENT_URI, null, null);
        clear = false;
      }
      Iterator localIterator = remove.iterator();
      Object localObject1;
      while (localIterator.hasNext())
      {
        localObject1 = (String)localIterator.next();
        cr.delete(a.b.CONTENT_URI, "key = ?", new String[] { localObject1 });
      }
      localIterator = values.entrySet().iterator();
      label146:
      label302:
      label326:
      while (localIterator.hasNext())
      {
        localObject1 = (Map.Entry)localIterator.next();
        Object localObject2 = ((Map.Entry)localObject1).getValue();
        if (localObject2 == null)
        {
          b.b("MicroMsg.SDK.PluginProvider.Resolver", "unresolve failed, null value");
          i = 0;
          if (i != 0) {
            break label302;
          }
        }
        for (int i = 0;; i = 1)
        {
          if (i == 0) {
            break label326;
          }
          cr.update(a.b.CONTENT_URI, localContentValues, "key = ?", new String[] { (String)((Map.Entry)localObject1).getKey() });
          break;
          if ((localObject2 instanceof Integer))
          {
            i = 1;
            break label146;
          }
          if ((localObject2 instanceof Long))
          {
            i = 2;
            break label146;
          }
          if ((localObject2 instanceof String))
          {
            i = 3;
            break label146;
          }
          if ((localObject2 instanceof Boolean))
          {
            i = 4;
            break label146;
          }
          if ((localObject2 instanceof Float))
          {
            i = 5;
            break label146;
          }
          if ((localObject2 instanceof Double))
          {
            i = 6;
            break label146;
          }
          b.b("MicroMsg.SDK.PluginProvider.Resolver", "unresolve failed, unknown type=" + localObject2.getClass().toString());
          i = 0;
          break label146;
          localContentValues.put("type", Integer.valueOf(i));
          localContentValues.put("value", localObject2.toString());
        }
      }
      return true;
    }
    
    public SharedPreferences.Editor putBoolean(String paramString, boolean paramBoolean)
    {
      values.put(paramString, Boolean.valueOf(paramBoolean));
      remove.remove(paramString);
      return this;
    }
    
    public SharedPreferences.Editor putFloat(String paramString, float paramFloat)
    {
      values.put(paramString, Float.valueOf(paramFloat));
      remove.remove(paramString);
      return this;
    }
    
    public SharedPreferences.Editor putInt(String paramString, int paramInt)
    {
      values.put(paramString, Integer.valueOf(paramInt));
      remove.remove(paramString);
      return this;
    }
    
    public SharedPreferences.Editor putLong(String paramString, long paramLong)
    {
      values.put(paramString, Long.valueOf(paramLong));
      remove.remove(paramString);
      return this;
    }
    
    public SharedPreferences.Editor putString(String paramString1, String paramString2)
    {
      values.put(paramString1, paramString2);
      remove.remove(paramString1);
      return this;
    }
    
    public SharedPreferences.Editor putStringSet(String paramString, Set<String> paramSet)
    {
      return null;
    }
    
    public SharedPreferences.Editor remove(String paramString)
    {
      remove.add(paramString);
      return this;
    }
  }
}
