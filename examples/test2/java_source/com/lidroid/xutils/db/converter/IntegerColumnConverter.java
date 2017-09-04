package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class IntegerColumnConverter
  implements ColumnConverter<Integer>
{
  public IntegerColumnConverter() {}
  
  public Object fieldValue2ColumnValue(Integer paramInteger)
  {
    return paramInteger;
  }
  
  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.INTEGER;
  }
  
  public Integer getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt)) {
      return null;
    }
    return Integer.valueOf(paramCursor.getInt(paramInt));
  }
  
  public Integer getFieldValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return Integer.valueOf(paramString);
  }
}
