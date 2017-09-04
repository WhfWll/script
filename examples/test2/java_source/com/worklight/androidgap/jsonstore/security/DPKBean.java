package com.worklight.androidgap.jsonstore.security;

import com.bangcle.andjni.JniLib;
import com.worklight.androidgap.jsonstore.util.jackson.JacksonSerializedJSONObject;
import com.worklight.androidgap.jsonstore.util.jackson.JsonOrgModule;
import org.json.JSONException;
import org.json.JSONObject;

public class DPKBean
{
  private static final String KEY_DPK = "dpk";
  private static final String KEY_ITERATIONS = "iterations";
  private static final String KEY_IV = "iv";
  private static final String KEY_SALT = "jsonSalt";
  private static final String KEY_VERSION = "version";
  private static final String VERSION_NUM = "1.0";
  private JSONObject obj;
  
  static
  {
    JniLib.a(DPKBean.class, 1097);
  }
  
  protected DPKBean(String paramString)
    throws JSONException
  {
    try
    {
      obj = JsonOrgModule.deserializeJSONObject(paramString);
      return;
    }
    catch (Throwable paramString)
    {
      throw new JSONException(paramString);
    }
  }
  
  protected DPKBean(String paramString1, String paramString2, String paramString3, int paramInt)
    throws JSONException
  {
    obj = new JacksonSerializedJSONObject();
    obj.put("dpk", paramString1);
    obj.put("iterations", paramInt);
    obj.put("iv", paramString2);
    obj.put("jsonSalt", paramString3);
    obj.put("version", "1.0");
  }
  
  public native String getEncryptedDPK()
    throws JSONException;
  
  public native String getIV()
    throws JSONException;
  
  public native int getIterations()
    throws JSONException;
  
  public native String getSalt()
    throws JSONException;
  
  public native String getVersion()
    throws JSONException;
  
  public native String toString();
}