package com.lidroid.xutils.db.sqlite;

import android.database.Cursor;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.db.converter.ColumnConverter;
import com.lidroid.xutils.db.table.Column;
import com.lidroid.xutils.db.table.DbModel;
import com.lidroid.xutils.db.table.Finder;
import com.lidroid.xutils.db.table.Id;
import com.lidroid.xutils.db.table.Table;
import com.lidroid.xutils.util.LogUtils;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

public class CursorUtils
{
  public CursorUtils() {}
  
  public static DbModel getDbModel(Cursor paramCursor)
  {
    DbModel localDbModel = null;
    int j;
    int i;
    if (paramCursor != null)
    {
      localDbModel = new DbModel();
      j = paramCursor.getColumnCount();
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        return localDbModel;
      }
      localDbModel.add(paramCursor.getColumnName(i), paramCursor.getString(i));
      i += 1;
    }
  }
  
  public static <T> T getEntity(DbUtils paramDbUtils, Cursor paramCursor, Class<T> paramClass, long paramLong)
  {
    if ((paramDbUtils == null) || (paramCursor == null))
    {
      paramDbUtils = null;
      return paramDbUtils;
    }
    EntityTempCache.setSeq(paramLong);
    for (;;)
    {
      Table localTable;
      int i;
      Object localObject1;
      try
      {
        localTable = Table.get(paramDbUtils, paramClass);
        Id localId = id;
        paramDbUtils = localId.getColumnName();
        int j = localId.getIndex();
        i = j;
        if (j < 0) {
          i = paramCursor.getColumnIndex(paramDbUtils);
        }
        Object localObject2 = localId.getColumnConverter().getFieldValue(paramCursor, i);
        localObject1 = EntityTempCache.get(paramClass, localObject2);
        paramDbUtils = localObject1;
        if (localObject1 != null) {
          break;
        }
        localObject1 = paramClass.newInstance();
        localId.setValue2Entity(localObject1, paramCursor, i);
        EntityTempCache.put(paramClass, localObject2, localObject1);
        j = paramCursor.getColumnCount();
        i = 0;
        if (i >= j)
        {
          paramCursor = finderMap.values().iterator();
          paramDbUtils = localObject1;
          if (!paramCursor.hasNext()) {
            break;
          }
          ((Finder)paramCursor.next()).setValue2Entity(localObject1, null, 0);
          continue;
        }
        paramDbUtils = paramCursor.getColumnName(i);
      }
      catch (Throwable paramDbUtils)
      {
        LogUtils.e(paramDbUtils.getMessage(), paramDbUtils);
        return null;
      }
      paramDbUtils = (Column)columnMap.get(paramDbUtils);
      if (paramDbUtils != null) {
        paramDbUtils.setValue2Entity(localObject1, paramCursor, i);
      }
      i += 1;
    }
  }
  
  private static class EntityTempCache
  {
    private static final ConcurrentHashMap<String, Object> cache = new ConcurrentHashMap();
    private static long seq = 0L;
    
    private EntityTempCache() {}
    
    public static <T> T get(Class<T> paramClass, Object paramObject)
    {
      return cache.get(paramClass.getName() + "#" + paramObject);
    }
    
    public static <T> void put(Class<T> paramClass, Object paramObject1, Object paramObject2)
    {
      cache.put(paramClass.getName() + "#" + paramObject1, paramObject2);
    }
    
    public static void setSeq(long paramLong)
    {
      if (seq != paramLong)
      {
        cache.clear();
        seq = paramLong;
      }
    }
  }
  
  public static class FindCacheSequence
  {
    private static final String FINDER_LAZY_LOADER_CLASS_NAME = FinderLazyLoader.class.getName();
    private static final String FOREIGN_LAZY_LOADER_CLASS_NAME;
    private static long seq = 0L;
    
    static
    {
      FOREIGN_LAZY_LOADER_CLASS_NAME = ForeignLazyLoader.class.getName();
    }
    
    private FindCacheSequence() {}
    
    public static long getSeq()
    {
      String str = Thread.currentThread().getStackTrace()[4].getClassName();
      if ((!str.equals(FOREIGN_LAZY_LOADER_CLASS_NAME)) && (!str.equals(FINDER_LAZY_LOADER_CLASS_NAME))) {
        seq += 1L;
      }
      return seq;
    }
  }
}
