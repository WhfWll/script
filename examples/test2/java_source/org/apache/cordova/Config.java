package org.apache.cordova;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.cordova.api.LOG;
import org.xmlpull.v1.XmlPullParserException;

public class Config
{
  public static final String TAG = "Config";
  private static Config self = null;
  private String startUrl;
  private ArrayList<Pattern> whiteList = new ArrayList();
  private HashMap<String, Boolean> whiteListCache = new HashMap();
  
  private Config() {}
  
  private Config(Activity paramActivity)
  {
    if (paramActivity == null) {
      LOG.i("CordovaLog", "There is no activity. Is this on the lock screen?");
    }
    for (;;)
    {
      return;
      int j = paramActivity.getResources().getIdentifier("config", "xml", paramActivity.getPackageName());
      int i = j;
      if (j == 0)
      {
        i = paramActivity.getResources().getIdentifier("cordova", "xml", paramActivity.getPackageName());
        LOG.i("CordovaLog", "config.xml missing, reverting to cordova.xml");
      }
      if (i == 0)
      {
        LOG.i("CordovaLog", "cordova.xml missing. Ignoring...");
        return;
      }
      XmlResourceParser localXmlResourceParser = paramActivity.getResources().getXml(i);
      i = -1;
      while (i != 1)
      {
        Object localObject;
        String str1;
        boolean bool;
        if (i == 2)
        {
          localObject = localXmlResourceParser.getName();
          if (!((String)localObject).equals("access")) {
            break label210;
          }
          localObject = localXmlResourceParser.getAttributeValue(null, "origin");
          str1 = localXmlResourceParser.getAttributeValue(null, "subdomains");
          if (localObject != null)
          {
            if ((str1 == null) || (str1.compareToIgnoreCase("true") != 0)) {
              break label204;
            }
            bool = true;
            label183:
            _addWhiteListEntry((String)localObject, bool);
          }
        }
        try
        {
          for (;;)
          {
            j = localXmlResourceParser.next();
            i = j;
            break;
            label204:
            bool = false;
            break label183;
            label210:
            if (((String)localObject).equals("log"))
            {
              localObject = localXmlResourceParser.getAttributeValue(null, "level");
              LOG.i("CordovaLog", "Found log level %s", new Object[] { localObject });
              if (localObject != null) {
                LOG.setLogLevel((String)localObject);
              }
            }
            else if (((String)localObject).equals("preference"))
            {
              String str2 = localXmlResourceParser.getAttributeValue(null, "name");
              if (str2.equals("splashscreen"))
              {
                str1 = localXmlResourceParser.getAttributeValue(null, "value");
                localObject = str1;
                if (str1 != null) {
                  localObject = "splash";
                }
                j = paramActivity.getResources().getIdentifier((String)localObject, "drawable", paramActivity.getPackageName());
                paramActivity.getIntent().putExtra(str2, j);
                LOG.i("CordovaLog", "Found preference for %s=%s", new Object[] { str2, localObject });
                Log.d("CordovaLog", "Found preference for " + str2 + "=" + (String)localObject);
              }
              else if (str2.equals("backgroundColor"))
              {
                j = localXmlResourceParser.getAttributeIntValue(null, "value", -16777216);
                paramActivity.getIntent().putExtra(str2, j);
                LOG.i("CordovaLog", "Found preference for %s=%d", new Object[] { str2, Integer.valueOf(j) });
                Log.d("CordovaLog", "Found preference for " + str2 + "=" + Integer.toString(j));
              }
              else if (str2.equals("loadUrlTimeoutValue"))
              {
                j = localXmlResourceParser.getAttributeIntValue(null, "value", 20000);
                paramActivity.getIntent().putExtra(str2, j);
                LOG.i("CordovaLog", "Found preference for %s=%d", new Object[] { str2, Integer.valueOf(j) });
                Log.d("CordovaLog", "Found preference for " + str2 + "=" + Integer.toString(j));
              }
              else if (str2.equals("keepRunning"))
              {
                bool = localXmlResourceParser.getAttributeValue(null, "value").equals("true");
                paramActivity.getIntent().putExtra(str2, bool);
              }
              else if (str2.equals("InAppBrowserStorageEnabled"))
              {
                bool = localXmlResourceParser.getAttributeValue(null, "value").equals("true");
                paramActivity.getIntent().putExtra(str2, bool);
              }
              else if (str2.equals("disallowOverscroll"))
              {
                bool = localXmlResourceParser.getAttributeValue(null, "value").equals("true");
                paramActivity.getIntent().putExtra(str2, bool);
              }
              else
              {
                localObject = localXmlResourceParser.getAttributeValue(null, "value");
                paramActivity.getIntent().putExtra(str2, (String)localObject);
                LOG.i("CordovaLog", "Found preference for %s=%s", new Object[] { str2, localObject });
                Log.d("CordovaLog", "Found preference for " + str2 + "=" + (String)localObject);
              }
            }
            else if (((String)localObject).equals("content"))
            {
              str1 = localXmlResourceParser.getAttributeValue(null, "src");
              LOG.i("CordovaLog", "Found start page location: %s", new Object[] { str1 });
              if (str1 != null) {
                if (Pattern.compile("^[a-z]+://").matcher(str1).find())
                {
                  startUrl = str1;
                }
                else
                {
                  localObject = str1;
                  if (str1.charAt(0) == '/') {
                    localObject = str1.substring(1);
                  }
                  startUrl = ("file:///android_asset/www/" + (String)localObject);
                }
              }
            }
          }
        }
        catch (XmlPullParserException localXmlPullParserException)
        {
          localXmlPullParserException.printStackTrace();
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
        }
      }
    }
  }
  
  private void _addWhiteListEntry(String paramString, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (paramString.compareTo("*") == 0)
        {
          LOG.d("Config", "Unlimited access to network resources");
          whiteList.add(Pattern.compile(".*"));
          return;
        }
        if (!paramBoolean) {
          break;
        }
        if (paramString.startsWith("http"))
        {
          whiteList.add(Pattern.compile(paramString.replaceFirst("https?://", "^https?://(.*\\.)?")));
          LOG.d("Config", "Origin to allow with subdomains: %s", new Object[] { paramString });
          return;
        }
      }
      catch (Exception localException)
      {
        LOG.d("Config", "Failed to add origin %s", new Object[] { paramString });
        return;
      }
      whiteList.add(Pattern.compile("^https?://(.*\\.)?" + paramString));
    }
    if (paramString.startsWith("http")) {
      whiteList.add(Pattern.compile(paramString.replaceFirst("https?://", "^https?://")));
    }
    for (;;)
    {
      LOG.d("Config", "Origin to allow: %s", new Object[] { paramString });
      return;
      whiteList.add(Pattern.compile("^https?://" + paramString));
    }
  }
  
  public static void addWhiteListEntry(String paramString, boolean paramBoolean)
  {
    if (self == null) {
      return;
    }
    self._addWhiteListEntry(paramString, paramBoolean);
  }
  
  public static String getStartUrl()
  {
    if ((self == null) || (selfstartUrl == null)) {
      return "file:///android_asset/www/index.html";
    }
    return selfstartUrl;
  }
  
  public static void init()
  {
    if (self == null) {
      self = new Config();
    }
  }
  
  public static void init(Activity paramActivity)
  {
    if (self == null) {
      self = new Config(paramActivity);
    }
  }
  
  public static boolean isUrlWhiteListed(String paramString)
  {
    if (self == null) {}
    Iterator localIterator;
    do
    {
      while (!localIterator.hasNext())
      {
        return false;
        if (selfwhiteListCache.get(paramString) != null) {
          return true;
        }
        localIterator = selfwhiteList.iterator();
      }
    } while (!((Pattern)localIterator.next()).matcher(paramString).find());
    selfwhiteListCache.put(paramString, Boolean.valueOf(true));
    return true;
  }
}
