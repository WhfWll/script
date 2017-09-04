package com.lidroid.xutils.db.converter;

import com.lidroid.xutils.db.sqlite.ColumnDbType;
import java.util.concurrent.ConcurrentHashMap;

public class ColumnConverterFactory
{
  private static final ConcurrentHashMap<String, ColumnConverter> columnType_columnConverter_map = new ConcurrentHashMap();
  
  static
  {
    Object localObject = new BooleanColumnConverter();
    columnType_columnConverter_map.put(Boolean.TYPE.getName(), localObject);
    columnType_columnConverter_map.put(Boolean.class.getName(), localObject);
    localObject = new ByteArrayColumnConverter();
    columnType_columnConverter_map.put([B.class.getName(), localObject);
    localObject = new ByteColumnConverter();
    columnType_columnConverter_map.put(Byte.TYPE.getName(), localObject);
    columnType_columnConverter_map.put(Byte.class.getName(), localObject);
    localObject = new CharColumnConverter();
    columnType_columnConverter_map.put(Character.TYPE.getName(), localObject);
    columnType_columnConverter_map.put(Character.class.getName(), localObject);
    localObject = new DateColumnConverter();
    columnType_columnConverter_map.put(java.util.Date.class.getName(), localObject);
    localObject = new DoubleColumnConverter();
    columnType_columnConverter_map.put(Double.TYPE.getName(), localObject);
    columnType_columnConverter_map.put(Double.class.getName(), localObject);
    localObject = new FloatColumnConverter();
    columnType_columnConverter_map.put(Float.TYPE.getName(), localObject);
    columnType_columnConverter_map.put(Float.class.getName(), localObject);
    localObject = new IntegerColumnConverter();
    columnType_columnConverter_map.put(Integer.TYPE.getName(), localObject);
    columnType_columnConverter_map.put(Integer.class.getName(), localObject);
    localObject = new LongColumnConverter();
    columnType_columnConverter_map.put(Long.TYPE.getName(), localObject);
    columnType_columnConverter_map.put(Long.class.getName(), localObject);
    localObject = new ShortColumnConverter();
    columnType_columnConverter_map.put(Short.TYPE.getName(), localObject);
    columnType_columnConverter_map.put(Short.class.getName(), localObject);
    localObject = new SqlDateColumnConverter();
    columnType_columnConverter_map.put(java.sql.Date.class.getName(), localObject);
    localObject = new StringColumnConverter();
    columnType_columnConverter_map.put(String.class.getName(), localObject);
  }
  
  private ColumnConverterFactory() {}
  
  public static ColumnConverter getColumnConverter(Class paramClass)
  {
    if (columnType_columnConverter_map.containsKey(paramClass.getName())) {
      return (ColumnConverter)columnType_columnConverter_map.get(paramClass.getName());
    }
    if (ColumnConverter.class.isAssignableFrom(paramClass)) {
      try
      {
        ColumnConverter localColumnConverter = (ColumnConverter)paramClass.newInstance();
        if (localColumnConverter != null) {
          columnType_columnConverter_map.put(paramClass.getName(), localColumnConverter);
        }
        return localColumnConverter;
      }
      catch (Throwable paramClass) {}
    }
    return null;
  }
  
  public static ColumnDbType getDbColumnType(Class paramClass)
  {
    paramClass = getColumnConverter(paramClass);
    if (paramClass != null) {
      return paramClass.getColumnDbType();
    }
    return ColumnDbType.TEXT;
  }
  
  public static boolean isSupportColumnConverter(Class paramClass)
  {
    if (columnType_columnConverter_map.containsKey(paramClass.getName())) {}
    for (;;)
    {
      return true;
      if (ColumnConverter.class.isAssignableFrom(paramClass)) {
        try
        {
          ColumnConverter localColumnConverter = (ColumnConverter)paramClass.newInstance();
          if (localColumnConverter != null) {
            columnType_columnConverter_map.put(paramClass.getName(), localColumnConverter);
          }
          if (localColumnConverter != null) {
            return false;
          }
        }
        catch (Throwable paramClass) {}
      }
    }
    return false;
  }
  
  public static void registerColumnConverter(Class paramClass, ColumnConverter paramColumnConverter)
  {
    columnType_columnConverter_map.put(paramClass.getName(), paramColumnConverter);
  }
}
