package com.tl.uic.util;

import com.bangcle.andjni.JniLib;
import java.util.Hashtable;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONObject;

public final class JsonUtil
{
  private static String _messageTypes;
  private static Hashtable<Integer, Integer> _messageTypesSet = new Hashtable();
  private static volatile JsonUtil _myInstance;
  private static String _pattern = "type(\"|'):[\\d]+";
  private static final Pattern pattern = Pattern.compile(_pattern);
  
  static
  {
    JniLib.a(JsonUtil.class, 1060);
  }
  
  private JsonUtil() {}
  
  private static native Boolean getAddMessageTypeHeader();
  
  private static native Boolean getFilterMessageTypes();
  
  public static native JSONObject getHashValues(Map<String, String> paramMap);
  
  public static native JsonUtil getInstance();
  
  public static native Boolean testMessageType(Object paramObject, Boolean paramBoolean);
}
