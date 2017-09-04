package com.sdu.didi.openapi;

import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import com.sdu.didi.openapi.location.Location;
import com.sdu.didi.openapi.location.LocationHelper;
import com.sdu.didi.openapi.ss.e;
import com.sdu.didi.openapi.ss.f;
import com.sdu.didi.openapi.utils.Utils;
import java.lang.ref.SoftReference;
import org.json.JSONException;
import org.json.JSONObject;

public class Methods
{
  private SoftReference<DiDiWebActivity> a;
  
  public Methods(DiDiWebActivity paramDiDiWebActivity)
  {
    a = new SoftReference(paramDiDiWebActivity);
  }
  
  public String getAppInfo(String paramString)
  {
    DiDiWebActivity localDiDiWebActivity = (DiDiWebActivity)a.get();
    if (localDiDiWebActivity == null) {
      return "";
    }
    paramString = new JSONObject();
    try
    {
      paramString.put("weixin", Utils.b(localDiDiWebActivity, "com.tencent.mm"));
      paramString.put("alipay", Utils.b(localDiDiWebActivity, "com.eg.android.AlipayGphone"));
      paramString.put("didipasnger", Utils.b(localDiDiWebActivity, "com.sdu.didi.psnger"));
      return paramString.toString();
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public String getData(String paramString)
  {
    DiDiWebActivity localDiDiWebActivity = (DiDiWebActivity)a.get();
    if (localDiDiWebActivity == null) {
      return "";
    }
    try
    {
      paramString = new JSONObject(paramString);
      String str = paramString.optString("key");
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("key", str);
      localJSONObject.put("data", f.a(localDiDiWebActivity).a(str));
      if (paramString != null) {
        return paramString.toString();
      }
      return "";
    }
    catch (Exception paramString) {}
    return "";
  }
  
  public String getEnvSign(String paramString)
  {
    DiDiWebActivity localDiDiWebActivity = (DiDiWebActivity)a.get();
    if (localDiDiWebActivity == null) {
      return "";
    }
    try
    {
      String str3 = new JSONObject(paramString).optString("package");
      if (TextUtils.isEmpty(str3)) {
        return str3;
      }
      paramString = Utils.getTimestamp();
      String str1 = Utils.getRandomString(10);
      String str2 = l.a().b(localDiDiWebActivity).d();
      Object localObject = DIOpenSDK.getSecrectStr(localDiDiWebActivity);
      str3 = DIOpenSDK.a().getSDKSign(str2 + (String)localObject + str3 + paramString + str1);
      if ((!TextUtils.isEmpty(str3)) && (!TextUtils.isEmpty(str2)) && (!TextUtils.isEmpty((CharSequence)localObject)))
      {
        localObject = new JSONObject();
        ((JSONObject)localObject).put("openid", str2);
        ((JSONObject)localObject).put("timestamp", paramString);
        ((JSONObject)localObject).put("noncestr", str1);
        ((JSONObject)localObject).put("channel", l.a().b(localDiDiWebActivity).e());
        ((JSONObject)localObject).put("sign", str3);
        ((JSONObject)localObject).put("envdata", com.sdu.didi.uuid.l.a(localDiDiWebActivity).a());
        ((JSONObject)localObject).put("version", Utils.a());
        if (TextUtils.isEmpty(((JSONObject)localObject).toString())) {
          return "";
        }
        paramString = ((JSONObject)localObject).toString();
        return paramString;
      }
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
      return "";
    }
    return "";
  }
  
  public String getLocationInfo(String paramString)
  {
    paramString = (DiDiWebActivity)a.get();
    if (paramString == null)
    {
      Log.e("activity", "= null");
      return "";
    }
    Location localLocation = LocationHelper.getInstance(paramString).getLocation();
    if (!localLocation.isAvail()) {
      return "";
    }
    paramString = new JSONObject();
    try
    {
      paramString.put("lat", localLocation.getLat());
      paramString.put("lng", localLocation.getLng());
      paramString.put("maptype", localLocation.getMapType());
      if ((paramString.has("lat")) && (paramString.has("lng"))) {
        return paramString.toString();
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
    return "";
  }
  
  public String getSign(String paramString)
  {
    DiDiWebActivity localDiDiWebActivity = (DiDiWebActivity)a.get();
    if (localDiDiWebActivity == null) {
      return "";
    }
    try
    {
      Object localObject = new JSONObject(paramString).optString("package");
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        return localObject;
      }
      paramString = Utils.getTimestamp();
      String str1 = Utils.getRandomString(10);
      String str2 = l.a().b(localDiDiWebActivity).d();
      String str3 = DIOpenSDK.getSecrectStr(localDiDiWebActivity);
      str3 = DIOpenSDK.a().getSDKSign(str2 + str3 + (String)localObject + paramString + str1);
      if (TextUtils.isEmpty(str3)) {
        return "";
      }
      localObject = new JSONObject();
      try
      {
        ((JSONObject)localObject).put("openid", str2);
        ((JSONObject)localObject).put("timestamp", paramString);
        ((JSONObject)localObject).put("noncestr", str1);
        ((JSONObject)localObject).put("channel", l.a().b(localDiDiWebActivity).e());
        ((JSONObject)localObject).put("sign", str3);
        ((JSONObject)localObject).put("version", Utils.a());
        if (TextUtils.isEmpty(((JSONObject)localObject).toString())) {
          return "";
        }
      }
      catch (JSONException paramString)
      {
        for (;;)
        {
          paramString.printStackTrace();
        }
      }
      paramString = ((JSONObject)localObject).toString();
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
      return "";
    }
    return paramString;
  }
  
  public String getSystemInfo(String paramString)
  {
    DiDiWebActivity localDiDiWebActivity = (DiDiWebActivity)a.get();
    if (localDiDiWebActivity == null) {
      return "";
    }
    paramString = new JSONObject();
    try
    {
      paramString.put("imei", Utils.a(localDiDiWebActivity));
      return paramString.toString();
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public String getUserInfo(String paramString)
  {
    return "success";
  }
  
  public String pageClose(String paramString)
  {
    paramString = (DiDiWebActivity)a.get();
    if (paramString == null) {
      return "";
    }
    paramString.finish();
    return "success";
  }
  
  public String pageRefresh(String paramString)
  {
    paramString = (DiDiWebActivity)a.get();
    if (paramString == null) {
      return "";
    }
    WebView localWebView = (WebView)paramString.findViewById(new e(paramString).a("didi_webview"));
    if ((Build.VERSION.SDK_INT > 10) && (Build.VERSION.SDK_INT < 17)) {
      localWebView.removeJavascriptInterface("searchBoxJavaBridge_");
    }
    paramString.runOnUiThread(new k(this, localWebView));
    return "success";
  }
  
  public String setData(String paramString)
  {
    DiDiWebActivity localDiDiWebActivity = (DiDiWebActivity)a.get();
    if (localDiDiWebActivity == null) {
      return "";
    }
    try
    {
      Object localObject = new JSONObject(paramString);
      paramString = ((JSONObject)localObject).optString("key");
      localObject = ((JSONObject)localObject).optString("data");
      f.a(localDiDiWebActivity).a(paramString, (String)localObject);
      return "success";
    }
    catch (Exception paramString) {}
    return "";
  }
  
  public String setPassportToken(String paramString)
  {
    DiDiWebActivity localDiDiWebActivity = (DiDiWebActivity)a.get();
    if (localDiDiWebActivity == null) {
      return "";
    }
    Object localObject = "";
    try
    {
      String str = new JSONObject(paramString).optString("token", "");
      localObject = str;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
    if (paramString.equals("{}")) {
      localObject = "";
    }
    com.sdu.didi.openapi.utils.b.b(localDiDiWebActivity, "token", (String)localObject);
    return "success";
  }
}
