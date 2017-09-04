package com.bangcle.everisk.shell;

import android.content.Context;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.Method;
import java.util.LinkedList;
import org.json.JSONObject;

public final class b
{
  private static DexClassLoader F = null;
  private static boolean G = false;
  private static LinkedList H = new LinkedList();
  
  public static boolean RiskSDK(String paramString)
  {
    try
    {
      LibProc.a("RiskStub.Final", "receive RiskSDK=" + paramString);
      JSONObject localJSONObject = new JSONObject(paramString);
      if ((G) && (F != null)) {
        a(localJSONObject);
      } else {
        H.push(paramString);
      }
    }
    catch (Exception paramString)
    {
      LibProc.a(paramString);
      return false;
    }
    return true;
  }
  
  public static boolean a(Context paramContext, String paramString1, String paramString2)
  {
    Object localObject = paramContext.getDir("RiskStub", 0);
    LibProc.a("RiskStubShell.CallRiskStubInit", "dexOutputDir: " + ((File)localObject).getPath());
    try
    {
      paramString1 = new DexClassLoader(paramString1, ((File)localObject).getPath(), null, paramContext.getClass().getClassLoader());
      F = paramString1;
      localObject = paramString1.loadClass("com.bangcle.everisk.infs.LibProc");
      paramString1 = ((Class)localObject).newInstance();
      localObject = ((Class)localObject).getMethod("load_out", new Class[] { Context.class, JSONObject.class });
      LibProc.a("RiskStubShell.CallRiskStubInit", "getMethod: LibProc<load_out> OK!");
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("agent_id", Conf.f);
      localJSONObject.put("libpath", paramString2);
      LibProc.a("RiskStub.loader", "HostMgr: SrvHost = " + Conf.d);
      localJSONObject.put("url_root", Conf.d);
      LibProc.a("RiskStubShell.CallRiskStubInit", "begin Call LibProc<load_out>:\n" + localJSONObject.toString(4));
      ((Method)localObject).invoke(paramString1, new Object[] { paramContext, localJSONObject });
      LibProc.a("RiskStubShell.CallRiskStubInit", "Call LibProc<load_out> OK");
      return true;
    }
    catch (Exception paramContext)
    {
      LibProc.a("RiskStubShell.CallRiskStubInit", "Call LibProc<load_out> ERROR, RESET!");
      LibProc.a(paramContext);
    }
    return false;
  }
  
  private static boolean a(JSONObject paramJSONObject)
  {
    try
    {
      Object localObject2 = F.loadClass("com.bangcle.everisk.infs.LibProc");
      Object localObject1 = ((Class)localObject2).newInstance();
      localObject2 = ((Class)localObject2).getMethod("risk_sdk", new Class[] { JSONObject.class });
      LibProc.a("RiskStub.CallRiskSdk", "Call com.bangcle.everisk.infs.LibProc.risk_sdk() : " + paramJSONObject.toString(4));
      ((Method)localObject2).invoke(localObject1, new Object[] { paramJSONObject });
      return true;
    }
    catch (Exception paramJSONObject)
    {
      LibProc.a(paramJSONObject);
    }
    return false;
  }
  
  private static String t()
  {
    StackTraceElement localStackTraceElement = Thread.currentThread().getStackTrace()[2];
    return localStackTraceElement.getClassName() + "." + localStackTraceElement.getMethodName() + ":" + localStackTraceElement.getLineNumber();
  }
  
  public static void u()
  {
    if (F == null) {
      return;
    }
    try
    {
      Object localObject2 = F.loadClass("com.bangcle.everisk.stub.Action");
      Object localObject1 = ((Class)localObject2).getMethod("Ins", new Class[0]).invoke(null, new Object[0]);
      localObject2 = ((Class)localObject2).getMethod("AfterMsg", new Class[0]);
      LibProc.a("RiskStub.afterMsg", "Call com.bangcle.everisk.stub.Action.AfterMsg() : ");
      ((Method)localObject2).invoke(localObject1, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      LibProc.a(t(), localException.getMessage());
      LibProc.a(localException);
    }
  }
  
  public static String v()
  {
    if (F == null) {
      return null;
    }
    try
    {
      Object localObject2 = F.loadClass("com.bangcle.everisk.stub.Action");
      Object localObject1 = ((Class)localObject2).getMethod("Ins", new Class[0]).invoke(null, new Object[0]);
      localObject2 = ((Class)localObject2).getMethod("GetMsg", new Class[0]);
      LibProc.a("RiskStub.getMsg", "Call com.bangcle.everisk.stub.Action.GetMsg() : ");
      localObject1 = (String)((Method)localObject2).invoke(localObject1, new Object[0]);
      return localObject1;
    }
    catch (Exception localException)
    {
      LibProc.a(t(), localException.getMessage());
      LibProc.a(localException);
    }
    return null;
  }
  
  public static void w()
  {
    while (!H.isEmpty())
    {
      String str = (String)H.poll();
      try
      {
        a(new JSONObject(str));
      }
      catch (Exception localException)
      {
        LibProc.a("RiskStubShell.UpdateAndLoad", "new JSONObject ERROR, String x: <" + str + ">");
        LibProc.a(localException);
      }
    }
    G = true;
  }
}
