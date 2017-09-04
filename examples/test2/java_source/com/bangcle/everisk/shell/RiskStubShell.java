package com.bangcle.everisk.shell;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.AssetManager;
import android.os.Build.VERSION;
import android.util.Log;
import com.bangcle.everisk.utils_l.e;
import com.bangcle.everisk.utils_l.f;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONObject;

public class RiskStubShell
{
  public static SharedPreferences B = null;
  private static boolean I = false;
  private static Context J = null;
  private static int K = 0;
  static String L = null;
  static String M = "";
  private static a N = null;
  private static a O = null;
  private static a P = null;
  private static a Q = null;
  private static a R = null;
  
  public RiskStubShell() {}
  
  public static String GetRiskSDKParam()
  {
    try
    {
      String str = B.getString("risk_sdk_param", Conf.j);
      return str;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public static boolean RiskSDK(String paramString)
  {
    try
    {
      boolean bool = b.RiskSDK(paramString);
      return bool;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  private static boolean c(a paramA)
  {
    try
    {
      Object localObject = J.getAssets().open("RiskStub");
      byte[] arrayOfByte = new byte[((InputStream)localObject).available()];
      ((InputStream)localObject).read(arrayOfByte);
      localObject = new FileOutputStream(new File(paramA.i()));
      ((OutputStream)localObject).write(arrayOfByte);
      ((OutputStream)localObject).flush();
      ((OutputStream)localObject).close();
      if (!e.c(M + "/lib/libRiskStub.so", paramA.j()))
      {
        LibProc.a("RiskStubShell.InitFirstTime", "ERROR: COPY inside cFile Failed:" + paramA.j());
        return false;
      }
    }
    catch (FileNotFoundException paramA)
    {
      LibProc.a("RiskStubShell.ExtractDexFromResToStoragePath", paramA.getMessage());
      LibProc.a(paramA);
      return false;
    }
    catch (Exception paramA)
    {
      LibProc.a("RiskStubShell.ExtractDexFromResToStoragePath", paramA.getMessage());
      LibProc.a(paramA);
      return false;
    }
    return true;
  }
  
  public static void x()
  {
    LibProc.y = J;
    Object localObject1 = new LibProc();
    B = J.getSharedPreferences("RiskStubLoader", 0);
    int i;
    if (Conf.f == Conf.g + 4096)
    {
      LibProc.a("RiskStubShell.CheckEnv", "ERROR: AgentID INVALID!" + Conf.f);
      i = 0;
    }
    Object localObject2;
    while (i == 0)
    {
      return;
      if (B == null)
      {
        LibProc.a("RiskStubShell.CheckEnv", "ERROR: prefs is NULL!");
        i = 0;
      }
      else
      {
        i = Build.VERSION.SDK_INT;
        K = i;
        if (i < 14)
        {
          LibProc.a("RiskStub.CheckEnv", "sdkVersion: {" + K + "} < {14" + "}");
          i = 0;
        }
        else
        {
          localObject2 = e.c(J);
          if (((String)localObject2).equals(""))
          {
            LibProc.a("RiskStub.CheckEnv", "StoragePath error, is \"\"");
            i = 0;
          }
          else
          {
            localObject2 = ((String)localObject2).substring(0, ((String)localObject2).length() - 6);
            M = (String)localObject2;
            localObject2 = e.f((String)localObject2);
            L = (String)localObject2;
            if ((!((String)localObject2).equals("armeabi")) && (!L.equals("armeabi-v7a")) && (!L.equals("x86")))
            {
              LibProc.a("RiskStub.CheckEnv", "abi error, is " + L);
              i = 0;
            }
            else
            {
              LibProc.a("RiskStubShell.CheckEnv", "StorageRoot: <" + M + ">, sdkVer:" + K + ", abi:" + L);
              localObject2 = new f("start", 60L, 900L, 3600L);
              while (!a.b(J)) {
                ((f)localObject2).G();
              }
              i = 1;
            }
          }
        }
      }
    }
    LibProc.a("RiskStub.Final", "start by version: 24");
    ((LibProc)localObject1).r();
    localObject1 = M + "/RiskStub";
    label539:
    f localF;
    int j;
    if (new File((String)localObject1).exists())
    {
      N = new a(B.getString("ver_a", ""));
      O = new a(B.getString("ver_b", ""));
      if ((!N.h()) && (!O.h()))
      {
        e.c((String)localObject1);
        if (!B.getBoolean("inside_ver", false))
        {
          B.edit().putBoolean("inside_ver", true).commit();
          localObject1 = y();
          N = (a)localObject1;
          if ((((a)localObject1).h()) && (N.a(true))) {
            break label836;
          }
          LibProc.a("RiskStubShell.InitFirstTime", "ERROR: ReadConfigFromRes Failed!");
        }
        N.b(false);
        N.a(L, false, false);
        if ((!LibProc.z) && ((!Nw) || (!Nv))) {
          N.l();
        }
        O.b(false);
        O.a(L, false, false);
        if ((!Ow) || (!Ov)) {
          O.l();
        }
        localF = new f("loader", 1800L, 86400L, 86400L);
        j = 5;
        label656:
        if (j <= 0) {
          break label1675;
        }
        i = j;
      }
    }
    label780:
    label836:
    String str;
    for (;;)
    {
      try
      {
        if (!a.c()) {
          continue;
        }
        if (!Conf.b()) {
          continue;
        }
        R = N;
        bool = true;
        i = j;
        if (!bool) {
          continue;
        }
        N.a("VerA");
        O.a("VerB");
        if (!R.a(N)) {
          continue;
        }
        Q = N;
        P = O;
      }
      catch (Exception localException)
      {
        boolean bool;
        LibProc.a(localException);
        i = j - 1;
        continue;
        if (!N.m()) {
          continue;
        }
        P = N;
        R.a(false);
        Q = R;
        continue;
        P = O;
        R.a(true);
        continue;
        if (!LibProc.A) {
          break label1627;
        }
      }
      Q.b(R);
      if (!Q.g()) {
        continue;
      }
      P = Q;
      if ((P != null) && (P.g())) {
        break label1643;
      }
      LibProc.a("RiskStubShell.Loader", "no available plugin to start, wait");
      i = j;
      localF.G();
      j = i;
      break label656;
      N.a(true);
      O.a(false);
      break;
      N = new a("");
      O = new a("");
      break;
      if (!c(N)) {
        break label539;
      }
      N.c(true);
      break label539;
      str = a.f();
      localObject1 = str + "/plugin/" + Conf.f + "/version";
      LibProc.a("RiskStubShell.UpdateLib", "VersionURL: <" + (String)localObject1 + ">");
      localObject2 = e.a((String)localObject1, -1);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        LibProc.a("RiskStubShell.UpdateLib", "try getRemoteVersions by default");
        localObject2 = e.a(str + "/plugin/version", -1);
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          LibProc.a("RiskStubShell.UpdateLib", "ERROR: getRemoteVersions Failed!");
          bool = false;
          continue;
        }
      }
      LibProc.a("RiskStubShell.UpdateLib", "VersionsString from network: <" + (String)localObject1 + ">");
      localObject1 = new a((String)localObject1);
      R = (a)localObject1;
      bool = ((a)localObject1).h();
      continue;
      if (!R.a(O)) {
        continue;
      }
      Q = O;
      P = N;
    }
    a localA;
    if ((!Conf.b()) && (R.n()))
    {
      Q.a("before update");
      Q.q();
      localA = Q;
      localA.a("ToUpdateVerion");
      str = a.f();
      localObject2 = str + "/plugin/c/" + m + "/" + L + "/RiskStub";
      str = str + "/plugin/java/" + n + "/RiskStub";
      LibProc.a("RiskStubShell.UpdateLib", "CLibUrl: <" + (String)localObject2);
      LibProc.a("RiskStubShell.UpdateLib", "JLibUrl: <" + str);
      if (v)
      {
        LibProc.a("RiskStub.Final", "has Update C Lib to " + m);
        label1351:
        if (!w) {
          break label1474;
        }
        LibProc.a("RiskStub.Final", "has Update J Lib to " + n);
        break label1679;
      }
    }
    for (;;)
    {
      if (i == 0)
      {
        P = null;
        break;
        LibProc.a("RiskStub.Final", "Begin update C Lib to " + m);
        if (e.a((String)localObject2, localA.k(), -1) != null) {
          break label1351;
        }
        LibProc.a("RiskStubShell.UpdateLib", "ERROR: Download <" + localA.k() + "> Failed!");
        i = 0;
        continue;
        label1474:
        LibProc.a("RiskStub.Final", "Update Java Lib " + n);
        if (e.a(str, localA.i(), -1) != null) {
          break label1679;
        }
        LibProc.a("RiskStubShell.UpdateLib", "ERROR: Download <" + str + "> Failed!");
        i = 0;
        continue;
      }
      Q.b(true);
      Q.a(L, true, true);
      if ((!Qw) || (!Qv) || (!Q.p()))
      {
        Q.l();
        break;
      }
      Q.c(true);
      P.c(false);
      P = Q;
      break;
      label1627:
      if (R.o()) {
        break;
      }
      P = null;
      break;
      label1643:
      if (!b.a(J, P.i(), P.j()))
      {
        P.l();
        i = j;
        break label780;
      }
      label1675:
      b.w();
      return;
      label1679:
      i = 1;
    }
  }
  
  /* Error */
  private static a y()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: getstatic 26	com/bangcle/everisk/shell/RiskStubShell:J	Landroid/content/Context;
    //   5: invokevirtual 83	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   8: ldc_w 444
    //   11: invokevirtual 91	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   14: astore_2
    //   15: aload_2
    //   16: invokevirtual 97	java/io/InputStream:available	()I
    //   19: newarray byte
    //   21: astore_0
    //   22: aload_2
    //   23: aload_0
    //   24: invokevirtual 101	java/io/InputStream:read	([B)I
    //   27: pop
    //   28: new 107	com/bangcle/everisk/shell/a
    //   31: dup
    //   32: new 211	java/lang/String
    //   35: dup
    //   36: aload_0
    //   37: invokespecial 446	java/lang/String:<init>	([B)V
    //   40: invokespecial 277	com/bangcle/everisk/shell/a:<init>	(Ljava/lang/String;)V
    //   43: astore_0
    //   44: aload_2
    //   45: invokevirtual 447	java/io/InputStream:close	()V
    //   48: aload_0
    //   49: astore_1
    //   50: aload_0
    //   51: ifnonnull +13 -> 64
    //   54: new 107	com/bangcle/everisk/shell/a
    //   57: dup
    //   58: ldc 32
    //   60: invokespecial 277	com/bangcle/everisk/shell/a:<init>	(Ljava/lang/String;)V
    //   63: astore_1
    //   64: aload_1
    //   65: areturn
    //   66: astore_2
    //   67: aload_1
    //   68: astore_0
    //   69: aload_2
    //   70: astore_1
    //   71: aload_1
    //   72: invokestatic 166	com/bangcle/everisk/shell/LibProc:a	(Ljava/lang/Exception;)V
    //   75: goto -27 -> 48
    //   78: astore_1
    //   79: goto -8 -> 71
    //   82: astore_0
    //   83: aconst_null
    //   84: astore_0
    //   85: goto -37 -> 48
    //   88: astore_1
    //   89: goto -41 -> 48
    // Local variable table:
    //   start	length	slot	name	signature
    //   21	48	0	localObject1	Object
    //   82	1	0	localFileNotFoundException1	FileNotFoundException
    //   84	1	0	localObject2	Object
    //   1	71	1	localObject3	Object
    //   78	1	1	localException1	Exception
    //   88	1	1	localFileNotFoundException2	FileNotFoundException
    //   14	31	2	localInputStream	InputStream
    //   66	4	2	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   2	44	66	java/lang/Exception
    //   44	48	78	java/lang/Exception
    //   2	44	82	java/io/FileNotFoundException
    //   44	48	88	java/io/FileNotFoundException
  }
  
  public void InitIAPSDK(Context paramContext)
  {
    Log.d("RiskStubShell.SDKFee", "RiskStubShell called");
    Conf.a();
  }
  
  public void InitIAPSDKFee(Context paramContext)
  {
    Log.d("RiskStubShell.SDKFee", "InitIAPSDKFee  called");
    load_in(paramContext);
  }
  
  public void SetKeyIAPSDK(String paramString)
  {
    LibProc.a("RiskStubShell.SDKFee", " SetKeyIAPSDK called, key:" + paramString);
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("type", "user_data");
      localJSONObject.put("data", paramString);
      b.RiskSDK(localJSONObject.toString());
      return;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        LibProc.a(paramString);
      }
    }
  }
  
  public void load_in(Context paramContext)
  {
    try
    {
      try
      {
        if (I) {
          return;
        }
        I = true;
        J = paramContext.getApplicationContext();
        new Thread(new c(this)).start();
        return;
      }
      finally {}
      return;
    }
    catch (Exception paramContext) {}
  }
}
