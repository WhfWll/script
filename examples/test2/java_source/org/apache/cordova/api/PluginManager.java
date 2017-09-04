package org.apache.cordova.api;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.webkit.WebResourceResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.cordova.CordovaWebView;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParserException;

public class PluginManager
{
  private static String TAG = "PluginManager";
  private final CordovaWebView app;
  private final CordovaInterface ctx;
  private final HashMap<String, PluginEntry> entries = new HashMap();
  private boolean firstRun;
  protected HashMap<String, String> urlMap = new HashMap();
  
  public PluginManager(CordovaWebView paramCordovaWebView, CordovaInterface paramCordovaInterface)
  {
    ctx = paramCordovaInterface;
    app = paramCordovaWebView;
    firstRun = true;
  }
  
  private void pluginConfigurationMissing()
  {
    LOG.e(TAG, "=====================================================================================");
    LOG.e(TAG, "ERROR: plugin.xml is missing.  Add res/xml/plugins.xml to your project.");
    LOG.e(TAG, "https://git-wip-us.apache.org/repos/asf?p=incubator-cordova-android.git;a=blob;f=framework/res/xml/plugins.xml");
    LOG.e(TAG, "=====================================================================================");
  }
  
  public void addService(String paramString1, String paramString2)
  {
    addService(new PluginEntry(paramString1, paramString2, false));
  }
  
  public void addService(PluginEntry paramPluginEntry)
  {
    entries.put(service, paramPluginEntry);
  }
  
  public void clearPluginObjects()
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext()) {
      nextplugin = null;
    }
  }
  
  public boolean exec(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    CordovaPlugin localCordovaPlugin = getPlugin(paramString1);
    if (localCordovaPlugin == null)
    {
      Log.d(TAG, "exec() call to unknown plugin: " + paramString1);
      paramString1 = new PluginResult(PluginResult.Status.CLASS_NOT_FOUND_EXCEPTION);
      app.sendPluginResult(paramString1, paramString3);
      return true;
    }
    try
    {
      paramString1 = new CallbackContext(paramString3, app);
      if (!localCordovaPlugin.execute(paramString2, paramString4, paramString1))
      {
        paramString1 = new PluginResult(PluginResult.Status.INVALID_ACTION);
        app.sendPluginResult(paramString1, paramString3);
        return true;
      }
    }
    catch (JSONException paramString1)
    {
      paramString1 = new PluginResult(PluginResult.Status.JSON_EXCEPTION);
      app.sendPluginResult(paramString1, paramString3);
      return true;
    }
    boolean bool = paramString1.isFinished();
    return bool;
  }
  
  @Deprecated
  public boolean exec(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    return exec(paramString1, paramString2, paramString3, paramString4);
  }
  
  public CordovaPlugin getPlugin(String paramString)
  {
    PluginEntry localPluginEntry = (PluginEntry)entries.get(paramString);
    if (localPluginEntry == null) {
      paramString = null;
    }
    CordovaPlugin localCordovaPlugin;
    do
    {
      return paramString;
      localCordovaPlugin = plugin;
      paramString = localCordovaPlugin;
    } while (localCordovaPlugin != null);
    return localPluginEntry.createPlugin(app, ctx);
  }
  
  public void init()
  {
    LOG.d(TAG, "init()");
    if (firstRun)
    {
      loadPlugins();
      firstRun = false;
    }
    for (;;)
    {
      startupPlugins();
      return;
      onPause(false);
      onDestroy();
      clearPluginObjects();
    }
  }
  
  public void loadPlugins()
  {
    int j = ctx.getActivity().getResources().getIdentifier("config", "xml", ctx.getActivity().getPackageName());
    int i = j;
    if (j == 0)
    {
      i = ctx.getActivity().getResources().getIdentifier("plugins", "xml", ctx.getActivity().getPackageName());
      LOG.i(TAG, "Using plugins.xml instead of config.xml.  plugins.xml will eventually be deprecated");
    }
    if (i == 0) {
      pluginConfigurationMissing();
    }
    for (;;)
    {
      return;
      XmlResourceParser localXmlResourceParser = ctx.getActivity().getResources().getXml(i);
      j = -1;
      Object localObject3 = "";
      Object localObject6 = "";
      int k = 0;
      while (j != 1)
      {
        Object localObject7;
        Object localObject2;
        Object localObject1;
        if (j == 2)
        {
          localObject7 = localXmlResourceParser.getName();
          if (((String)localObject7).equals("plugin"))
          {
            localObject2 = localXmlResourceParser.getAttributeValue(null, "name");
            localObject1 = localXmlResourceParser.getAttributeValue(null, "value");
            addService(new PluginEntry((String)localObject2, (String)localObject1, "true".equals(localXmlResourceParser.getAttributeValue(null, "onload"))));
            i = k;
          }
        }
        try
        {
          for (;;)
          {
            k = localXmlResourceParser.next();
            j = k;
            k = i;
            localObject6 = localObject1;
            localObject3 = localObject2;
            break;
            if (((String)localObject7).equals("url-filter"))
            {
              urlMap.put(localXmlResourceParser.getAttributeValue(null, "value"), localObject3);
              i = k;
              localObject1 = localObject6;
              localObject2 = localObject3;
            }
            else if (((String)localObject7).equals("feature"))
            {
              i = 1;
              localXmlResourceParser.getAttributeValue(null, "name");
              localObject1 = localObject6;
              localObject2 = localObject3;
            }
            else
            {
              i = k;
              localObject1 = localObject6;
              localObject2 = localObject3;
              if (((String)localObject7).equals("param"))
              {
                i = k;
                localObject1 = localObject6;
                localObject2 = localObject3;
                if (k != 0)
                {
                  localObject1 = localXmlResourceParser.getAttributeValue(null, "name");
                  if (((String)localObject1).equals("service")) {
                    localObject7 = localXmlResourceParser.getAttributeValue(null, "value");
                  }
                  for (;;)
                  {
                    i = k;
                    localObject1 = localObject6;
                    localObject2 = localObject7;
                    if (((String)localObject7).length() <= 0) {
                      break;
                    }
                    i = k;
                    localObject1 = localObject6;
                    localObject2 = localObject7;
                    if (((String)localObject6).length() <= 0) {
                      break;
                    }
                    addService(new PluginEntry((String)localObject7, (String)localObject6, "true".equals(localXmlResourceParser.getAttributeValue(null, "onload"))));
                    localObject2 = "";
                    localObject1 = "";
                    i = k;
                    break;
                    localObject7 = localObject3;
                    if (((String)localObject1).equals("package"))
                    {
                      localObject6 = localXmlResourceParser.getAttributeValue(null, "value");
                      localObject7 = localObject3;
                    }
                  }
                  i = k;
                  localObject1 = localObject6;
                  localObject2 = localObject3;
                  if (j == 3)
                  {
                    i = k;
                    localObject1 = localObject6;
                    localObject2 = localObject3;
                    if (localXmlResourceParser.getName().equals("feature"))
                    {
                      localObject2 = "";
                      localObject1 = "";
                      i = 0;
                    }
                  }
                }
              }
            }
          }
        }
        catch (XmlPullParserException localXmlPullParserException)
        {
          localXmlPullParserException.printStackTrace();
          k = i;
          localObject6 = localObject1;
          Object localObject4 = localObject2;
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
          k = i;
          localObject6 = localObject1;
          Object localObject5 = localObject2;
        }
      }
    }
  }
  
  public void onDestroy()
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext())
    {
      PluginEntry localPluginEntry = (PluginEntry)localIterator.next();
      if (plugin != null) {
        plugin.onDestroy();
      }
    }
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext())
    {
      PluginEntry localPluginEntry = (PluginEntry)localIterator.next();
      if (plugin != null) {
        plugin.onNewIntent(paramIntent);
      }
    }
  }
  
  public boolean onOverrideUrlLoading(String paramString)
  {
    Iterator localIterator = urlMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (paramString.startsWith((String)localEntry.getKey())) {
        return getPlugin((String)localEntry.getValue()).onOverrideUrlLoading(paramString);
      }
    }
    return false;
  }
  
  public void onPause(boolean paramBoolean)
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext())
    {
      PluginEntry localPluginEntry = (PluginEntry)localIterator.next();
      if (plugin != null) {
        plugin.onPause(paramBoolean);
      }
    }
  }
  
  public void onReset()
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext())
    {
      CordovaPlugin localCordovaPlugin = nextplugin;
      if (localCordovaPlugin != null) {
        localCordovaPlugin.onReset();
      }
    }
  }
  
  public void onResume(boolean paramBoolean)
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext())
    {
      PluginEntry localPluginEntry = (PluginEntry)localIterator.next();
      if (plugin != null) {
        plugin.onResume(paramBoolean);
      }
    }
  }
  
  public Object postMessage(String paramString, Object paramObject)
  {
    Object localObject1 = ctx.onMessage(paramString, paramObject);
    if (localObject1 != null) {
      return localObject1;
    }
    localObject1 = entries.values().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (PluginEntry)((Iterator)localObject1).next();
      if (plugin != null)
      {
        localObject2 = plugin.onMessage(paramString, paramObject);
        if (localObject2 != null) {
          return localObject2;
        }
      }
    }
    return null;
  }
  
  public WebResourceResponse shouldInterceptRequest(String paramString)
  {
    Iterator localIterator = urlMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (paramString.startsWith((String)localEntry.getKey())) {
        return getPlugin((String)localEntry.getValue()).shouldInterceptRequest(paramString);
      }
    }
    return null;
  }
  
  public void startupPlugins()
  {
    Iterator localIterator = entries.values().iterator();
    while (localIterator.hasNext())
    {
      PluginEntry localPluginEntry = (PluginEntry)localIterator.next();
      if (onload) {
        localPluginEntry.createPlugin(app, ctx);
      }
    }
  }
}
