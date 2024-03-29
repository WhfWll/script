package com.MobileTicket;

import android.graphics.Bitmap;
import com.bangcle.andjni.JniLib;
import java.io.File;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

public class SocialSharing
  extends CordovaPlugin
{
  static
  {
    JniLib.a(SocialSharing.class, 18);
  }
  
  public SocialSharing() {}
  
  public static native File createPath(String paramString);
  
  public static native boolean saveBitmap(String paramString, File paramFile);
  
  public static native Bitmap stringtoBitmap(String paramString);
  
  public native boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException;
}
