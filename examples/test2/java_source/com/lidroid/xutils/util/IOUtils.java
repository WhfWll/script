package com.lidroid.xutils.util;

import android.database.Cursor;
import java.io.Closeable;

public class IOUtils
{
  private IOUtils() {}
  
  public static void closeQuietly(Cursor paramCursor)
  {
    if (paramCursor != null) {}
    try
    {
      paramCursor.close();
      return;
    }
    catch (Throwable paramCursor) {}
  }
  
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Throwable paramCloseable) {}
  }
}
