package org.apache.cordova;

import android.app.Activity;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.LOG;
import org.apache.cordova.api.PluginManager;

public class IceCreamCordovaWebViewClient
  extends CordovaWebViewClient
{
  public IceCreamCordovaWebViewClient(CordovaInterface paramCordovaInterface)
  {
    super(paramCordovaInterface);
  }
  
  public IceCreamCordovaWebViewClient(CordovaInterface paramCordovaInterface, CordovaWebView paramCordovaWebView)
  {
    super(paramCordovaInterface, paramCordovaWebView);
  }
  
  private WebResourceResponse generateWebResourceResponse(String paramString)
  {
    if (paramString.startsWith("file:///android_asset/"))
    {
      String str = paramString.replaceFirst("file:///android_asset/", "");
      if (str.contains("?")) {
        paramString = str.split("\\?")[0];
      }
      for (;;)
      {
        str = null;
        if (paramString.endsWith(".html")) {
          str = "text/html";
        }
        try
        {
          paramString = new WebResourceResponse(str, "UTF-8", cordova.getActivity().getAssets().open(Uri.parse(paramString).getPath(), 2));
          return paramString;
        }
        catch (IOException paramString)
        {
          LOG.e("generateWebResourceResponse", paramString.getMessage(), paramString);
        }
        paramString = str;
        if (str.contains("#")) {
          paramString = str.split("#")[0];
        }
      }
    }
    return null;
  }
  
  private WebResourceResponse getWhitelistResponse()
  {
    return new WebResourceResponse("text/plain", "UTF-8", new ByteArrayInputStream("".getBytes()));
  }
  
  private static boolean needsIceCreamSpaceInAssetUrlFix(String paramString)
  {
    if (!paramString.contains("%20")) {
      return false;
    }
    switch (Build.VERSION.SDK_INT)
    {
    default: 
      return false;
    }
    return true;
  }
  
  public WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    WebResourceResponse localWebResourceResponse = super.shouldInterceptRequest(paramWebView, paramString);
    if ((!Config.isUrlWhiteListed(paramString)) && ((paramString.startsWith("http://")) || (paramString.startsWith("https://")))) {
      paramWebView = getWhitelistResponse();
    }
    do
    {
      do
      {
        return paramWebView;
        if ((localWebResourceResponse == null) && ((paramString.contains("?")) || (paramString.contains("#")) || (needsIceCreamSpaceInAssetUrlFix(paramString)))) {
          return generateWebResourceResponse(paramString);
        }
        paramWebView = localWebResourceResponse;
      } while (localWebResourceResponse != null);
      paramWebView = localWebResourceResponse;
    } while (appView.pluginManager == null);
    return appView.pluginManager.shouldInterceptRequest(paramString);
  }
}
