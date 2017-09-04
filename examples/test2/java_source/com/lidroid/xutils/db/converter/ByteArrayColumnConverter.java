package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class ByteArrayColumnConverter
  implements ColumnConverter<byte[]>
{
  public ByteArrayColumnConverter() {}
  
  public Object fieldValue2ColumnValue(byte[] paramArrayOfByte)
  {
    return paramArrayOfByte;
  }
  
  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.BLOB;
  }
  
  public byte[] getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt)) {
      return null;
    }
    return paramCursor.getBlob(paramInt);
  }
  
  public byte[] getFieldValue(String paramString)
  {
    return null;
  }
}
