package com.worklight.androidgap.jsonstore.util;

import com.bangcle.andjni.JniLib;
import java.text.MessageFormat;
import java.util.List;

public class JsonstoreUtil
{
  private static final Logger coreLogger = Logger.getLogger("jsonstore-core");
  private static final Logger dbLogger = Logger.getLogger("jsonstore-db");
  
  static
  {
    JniLib.a(JsonstoreUtil.class, 1102);
  }
  
  private JsonstoreUtil() {}
  
  public static String formatString(String paramString, Object... paramVarArgs)
  {
    return MessageFormat.format(paramString, paramVarArgs);
  }
  
  public static native Logger getCoreLogger();
  
  public static native Logger getDatabaseLogger();
  
  public static native List<int[]> splitArray(int[] paramArrayOfInt);
}
