package com.worklight.androidgap.jsonstore.util.jackson;

import com.bangcle.andjni.JniLib;
import org.json.JSONArray;
import org.json.JSONException;

public class JacksonSerializedJSONArray
  extends JSONArray
{
  private JSONArray wrappedArray;
  
  static
  {
    JniLib.a(JacksonSerializedJSONArray.class, 1104);
  }
  
  public JacksonSerializedJSONArray() {}
  
  protected JacksonSerializedJSONArray(JSONArray paramJSONArray)
  {
    wrappedArray = paramJSONArray;
  }
  
  public native String toString();
  
  public native String toString(int paramInt)
    throws JSONException;
}
