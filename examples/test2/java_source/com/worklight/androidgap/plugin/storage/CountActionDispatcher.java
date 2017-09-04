package com.worklight.androidgap.plugin.storage;

import com.bangcle.andjni.JniLib;

public class CountActionDispatcher
  extends SimpleQueryActionDispatcher
{
  private static final String SQL_COUNT = "SELECT COUNT(*) FROM {0} WHERE {1} = 0";
  
  static
  {
    JniLib.a(CountActionDispatcher.class, 1156);
  }
  
  protected CountActionDispatcher()
  {
    super("count");
  }
  
  protected native String getFormattedQuery(DatabaseActionDispatcher.Context paramContext)
    throws Throwable;
  
  protected native void logResult(DatabaseActionDispatcher.Context paramContext, int paramInt)
    throws Throwable;
}
