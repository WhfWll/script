package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class LongColumnConverter
  implements ColumnConverter<Long>
{
  public LongColumnConverter() {}
  
  public Object fieldValue2ColumnValue(Long paramLong)
  {
    return paramLong;
  }
  
  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.INTEGER;
  }
  
  public Long getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt)) {
      return null;
    }
    return Long.valueOf(paramCursor.getLong(paramInt));
  }
  
  public Long getFieldValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return Long.valueOf(paramString);
  }
}
