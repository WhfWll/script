package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class FloatColumnConverter
  implements ColumnConverter<Float>
{
  public FloatColumnConverter() {}
  
  public Object fieldValue2ColumnValue(Float paramFloat)
  {
    return paramFloat;
  }
  
  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.REAL;
  }
  
  public Float getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt)) {
      return null;
    }
    return Float.valueOf(paramCursor.getFloat(paramInt));
  }
  
  public Float getFieldValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return Float.valueOf(paramString);
  }
}
