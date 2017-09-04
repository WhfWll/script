package com.worklight.androidgap.jsonstore.util.jackson;

import com.bangcle.andjni.JniLib;
import org.json.JSONException;
import org.json.JSONObject;

public class JacksonSerializedJSONObject
  extends JSONObject
{
  private JSONObject wrappedObject;
  
  static
  {
    JniLib.a(JacksonSerializedJSONObject.class, 1105);
  }
  
  public JacksonSerializedJSONObject() {}
  
  protected JacksonSerializedJSONObject(JSONObject paramJSONObject)
  {
    wrappedObject = paramJSONObject;
  }
  
  public native String toString();
  
  public native String toString(int paramInt)
    throws JSONException;
}
