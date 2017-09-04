package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class StringColumnConverter
  implements ColumnConverter<String>
{
  public StringColumnConverter() {}
  
  public Object fieldValue2ColumnValue(String paramString)
  {
    return paramString;
  }
  
  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.TEXT;
  }
  
  public String getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt)) {
      return null;
    }
    return paramCursor.getString(paramInt);
  }
  
  public String getFieldValue(String paramString)
  {
    return paramString;
  }
}
