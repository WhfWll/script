package com.worklight.androidgap.plugin.storage;

import com.bangcle.andjni.JniLib;

public class LocalCountActionDispatcher
  extends SimpleQueryActionDispatcher
{
  private static final String SQL_LOCALCOUNT = "SELECT COUNT(*) FROM {0} WHERE {1} > 0";
  
  static
  {
    JniLib.a(LocalCountActionDispatcher.class, 1169);
  }
  
  protected LocalCountActionDispatcher()
  {
    super("localCount");
  }
  
  protected native String getFormattedQuery(DatabaseActionDispatcher.Context paramContext)
    throws Throwable;
  
  protected native void logResult(DatabaseActionDispatcher.Context paramContext, int paramInt)
    throws Throwable;
}
