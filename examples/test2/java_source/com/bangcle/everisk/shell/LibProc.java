package com.bangcle.everisk.shell;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;

public class LibProc
{
  public static boolean A = true;
  private static SharedPreferences B = null;
  private static String C = "n_dl";
  private static String D = "n_dl0";
  private static String E = "n_dl1";
  public static Context y = null;
  public static boolean z = false;
  
  public LibProc()
  {
    try
    {
      if (new File("/data/local/tmp/riskd").exists()) {
        z = true;
      }
      if (new File("/data/local/tmp/riskd_notupdate").exists())
      {
        A = false;
        a("RiskStub.update", "not need update by /data/local/tmp/riskd_notupdate");
      }
      B = y.getSharedPreferences(C, 0);
      return;
    }
    catch (Exception localException)
    {
      a(localException);
    }
  }
  
  public static void a(Exception paramException)
  {
    try
    {
      if (y == null) {
        return;
      }
      if (z)
      {
        a("RiskStubShell.Debug", "begin debug");
        paramException.printStackTrace();
      }
      Object localObject2 = paramException.getMessage();
      Object localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = "_no_msg_";
      }
      localObject2 = new JSONObject();
      ((JSONObject)localObject2).put("reason", localObject1);
      localObject1 = new StringWriter();
      paramException.printStackTrace(new PrintWriter((Writer)localObject1));
      ((JSONObject)localObject2).put("stack", ((StringWriter)localObject1).toString());
      ((JSONObject)localObject2).put("loader_ver", "24");
      ((JSONObject)localObject2).put("extra", "from " + "risk");
      ((JSONObject)localObject2).put("time", System.currentTimeMillis());
      B.edit().putString(E, ((JSONObject)localObject2).toString()).commit();
      a("RiskStub.Crash", "save loader crash");
      return;
    }
    catch (Exception paramException) {}
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if (z) {
      Log.i(paramString1, paramString2);
    }
  }
  
  private static String s()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    Object localObject = new File("/data/local/tmp/riskd_config");
    byte[] arrayOfByte = new byte['Ѐ'];
    if (((File)localObject).exists())
    {
      a("RiskStub.Init", "read config from local files:" + "/data/local/tmp/riskd_config");
      try
      {
        localObject = new FileInputStream((File)localObject);
        for (;;)
        {
          int i = ((InputStream)localObject).read(arrayOfByte, 0, 1024);
          if (i == -1) {
            break;
          }
          localByteArrayOutputStream.write(arrayOfByte, 0, i);
        }
        return "";
      }
      catch (Exception localException)
      {
        a(localException);
      }
    }
    String str = localException.toString("utf-8");
    return str;
  }
  
  public void load_in(Context paramContext)
  {
    y = paramContext;
  }
  
  public final void r()
  {
    j = 1;
    try
    {
      if (y == null) {
        return;
      }
      localObject = B.getString(D, "");
      a("RiskStub.loader", "load from sharedp=" + (String)localObject);
      String str = s();
      if (str.equals("")) {
        break label331;
      }
      a("RiskStub.loader", "load from file=" + str);
      localObject = str;
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        try
        {
          Conf.h = ((JSONObject)localObject).getInt("t1");
          Conf.i = ((JSONObject)localObject).getInt("t2");
          a("RiskStub.loader", "delay after json t1=" + Conf.h + "\tt2=" + Conf.i);
          Object localObject = new Random();
          int k = Conf.i - Conf.h;
          int i = k;
          if (k <= 0) {
            i = 1;
          }
          i = ((Random)localObject).nextInt(i) + Conf.h;
          Log.i("RiskStub.Final", "delay sleep:" + i);
          if (z)
          {
            i = j;
            long l = i;
            try
            {
              Thread.sleep(l);
              return;
            }
            catch (InterruptedException localInterruptedException)
            {
              return;
            }
          }
        }
        catch (Exception localException1)
        {
          a(localException1);
          continue;
          localException2 = localException2;
          a(localException2);
        }
        catch (JSONException localJSONException)
        {
          continue;
        }
      }
    }
    if (!((String)localObject).equals(""))
    {
      localObject = new JSONObject((String)localObject);
      a("RiskStub.loader", "load config " + ((JSONObject)localObject).toString(4));
      a("RiskStub.loader", "delay before json t1=" + Conf.h + "\tt2=" + Conf.i);
    }
  }
}
