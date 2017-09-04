package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public abstract interface ColumnConverter<T>
{
  public abstract Object fieldValue2ColumnValue(T paramT);
  
  public abstract ColumnDbType getColumnDbType();
  
  public abstract T getFieldValue(Cursor paramCursor, int paramInt);
  
  public abstract T getFieldValue(String paramString);
}
