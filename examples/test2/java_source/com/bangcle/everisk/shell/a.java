package com.bangcle.everisk.shell;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.bangcle.everisk.utils_l.e;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.json.JSONObject;

public class a
{
  private JSONObject k = null;
  private String l = "";
  public int m = 0;
  public int n = 0;
  public int o;
  public int p;
  private String q = null;
  private String r = null;
  private String s = null;
  private boolean t = false;
  private boolean u = false;
  public boolean v = false;
  public boolean w = false;
  public boolean x = false;
  
  a(String paramString)
  {
    for (;;)
    {
      try
      {
        if (paramString.equals("")) {
          return;
        }
        k = new JSONObject(paramString);
        if (k.has("update_pct_1000"))
        {
          i = k.getInt("update_pct_1000");
          o = i;
          if (!k.has("must_newest")) {
            break label235;
          }
          i = k.getInt("must_newest");
          p = i;
          m = k.getInt("c_ver");
          n = k.getInt("java_ver");
          if (k.has("is_use")) {
            bool = k.getBoolean("is_use");
          }
          t = bool;
          if (!k.has("status")) {
            break label240;
          }
          paramString = k.getString("status");
          l = paramString;
          return;
        }
      }
      catch (Exception paramString)
      {
        LibProc.a(paramString);
        return;
      }
      int i = 0;
      continue;
      label235:
      i = 1;
      continue;
      label240:
      paramString = "init";
    }
  }
  
  private static int a(int paramInt)
  {
    try
    {
      Class localClass = Class.forName(TelephonyManager.class.getName());
      Method localMethod = localClass.getMethod("getNetworkClass", new Class[] { Integer.TYPE });
      localMethod.setAccessible(true);
      paramInt = Integer.parseInt(String.valueOf(localMethod.invoke(localClass, new Object[] { Integer.valueOf(paramInt) })));
      return paramInt;
    }
    catch (Exception localException)
    {
      return 0;
    }
    catch (SecurityException localSecurityException) {}
    return 0;
  }
  
  private static String a(Context paramContext)
  {
    try
    {
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (paramContext == null) {
        throw new SecurityException("Shell ConnectivityManager is null");
      }
    }
    catch (Exception paramContext)
    {
      LibProc.a("RiskStubShell.NWUtils", paramContext.getMessage());
    }
    for (;;)
    {
      return null;
      paramContext = paramContext.getAllNetworkInfo();
      if (paramContext == null) {
        throw new SecurityException("Shell NetworkInfo infos[] is null");
      }
      int j = paramContext.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramContext[i];
        if ((localObject != null) && (localObject.isConnected()))
        {
          if (localObject.getType() == 1) {
            return "wifi";
          }
          if (localObject.getType() == 0) {
            switch (a(localObject.getSubtype()))
            {
            case 2: 
              return "3g";
            case 3: 
              return "4g";
            }
          }
        }
        i += 1;
      }
    }
  }
  
  public static String b(String paramString)
  {
    int i = 0;
    try
    {
      paramString = new FileInputStream(paramString);
      Object localObject1 = new byte['Ѐ'];
      Object localObject2 = MessageDigest.getInstance("MD5");
      int j;
      do
      {
        j = paramString.read((byte[])localObject1);
        if (j > 0) {
          ((MessageDigest)localObject2).update((byte[])localObject1, 0, j);
        }
      } while (j != -1);
      paramString.close();
      localObject2 = ((MessageDigest)localObject2).digest();
      paramString = "";
      for (;;)
      {
        localObject1 = paramString;
        if (i >= localObject2.length) {
          break;
        }
        paramString = paramString + Integer.toString((localObject2[i] & 0xFF) + 256, 16).substring(1);
        i += 1;
      }
      return localObject1;
    }
    catch (Exception paramString)
    {
      localObject1 = "";
    }
  }
  
  public static boolean b(Context paramContext)
  {
    boolean bool2 = false;
    paramContext = a(paramContext);
    boolean bool1 = bool2;
    if (paramContext != null) {
      if ((!paramContext.equals("wifi")) && (!paramContext.equals("3g")))
      {
        bool1 = bool2;
        if (!paramContext.equals("4g")) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static boolean c()
  {
    if ((!Conf.d.equals("")) && (!Conf.e.equals(""))) {}
    while (d()) {
      return true;
    }
    if (e()) {
      return d();
    }
    return false;
  }
  
  private static boolean d()
  {
    Object localObject2 = RiskStubShell.B;
    SharedPreferences.Editor localEditor = ((SharedPreferences)localObject2).edit();
    Object localObject1 = ((SharedPreferences)localObject2).getString("ip1", Conf.b);
    String str = ((SharedPreferences)localObject2).getString("ip2", Conf.c);
    long l1 = ((SharedPreferences)localObject2).getLong((String)localObject1 + "_last_available_tm", 0L);
    long l2 = ((SharedPreferences)localObject2).getLong(str + "_last_available_tm", 0L);
    localObject2 = new ArrayList();
    if (l1 >= l2)
    {
      ((List)localObject2).add(localObject1);
      ((List)localObject2).add(str);
      localObject1 = ((List)localObject2).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject1).hasNext()) {
        break label394;
      }
      str = (String)((Iterator)localObject1).next();
      LibProc.a("RiskStub.loader", "HostMgr:try_ips: host= " + str);
      localObject2 = e.a(str + "/" + Conf.f + "/addr", 10);
      if (localObject2 != null)
      {
        try
        {
          localObject2 = new JSONObject((String)localObject2);
          Conf.d = ((JSONObject)localObject2).getString("srv_addr");
          Conf.e = ((JSONObject)localObject2).getString("down_addr");
          LibProc.a("RiskStub.loader", "HostMgr: get srvHost = " + Conf.d);
          LibProc.a("RiskStub.loader", "HostMgr: get dldHost = " + Conf.e);
          localEditor.putLong(str + "_last_available_tm", System.currentTimeMillis()).commit();
          return true;
        }
        catch (Exception localException)
        {
          LibProc.a(localException);
        }
        ((List)localObject2).add(str);
        ((List)localObject2).add(localObject1);
        break;
      }
    }
    label394:
    return false;
  }
  
  private static boolean e()
  {
    Object localObject = e.a(Conf.a, 10);
    try
    {
      localObject = new JSONObject((String)localObject);
      LibProc.a("RiskStub.loader", "HostMgr: get standby ip = " + ((JSONObject)localObject).toString());
      SharedPreferences.Editor localEditor = RiskStubShell.B.edit();
      localEditor.putString("ip1", ((JSONObject)localObject).getString("ip1"));
      localEditor.putString("ip2", ((JSONObject)localObject).getString("ip2"));
      localEditor.commit();
      return true;
    }
    catch (Exception localException)
    {
      LibProc.a(localException);
    }
    return false;
  }
  
  public static String f()
  {
    LibProc.a("RiskStub.loader", "HostMgr: DownloadHost = " + Conf.e);
    return Conf.e;
  }
  
  void a(String paramString)
  {
    try
    {
      if (k == null) {}
      for (String str = "null";; str = k.toString(4))
      {
        LibProc.a("RiskStub.Version", paramString + "\n" + str);
        return;
      }
      return;
    }
    catch (Exception paramString) {}
  }
  
  public boolean a(a paramA)
  {
    if (paramA == null) {}
    while ((m == m) && (n == n)) {
      return true;
    }
    return false;
  }
  
  public boolean a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    v = false;
    x = paramBoolean2;
    if (paramBoolean2) {}
    try
    {
      str1 = s;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        try
        {
          String str2 = b(str1);
          if ((str2.equalsIgnoreCase(k.getString("md5_" + paramString))) || (str2.equalsIgnoreCase(k.getString("md5_armeabi"))))
          {
            LibProc.a("RiskStubShell.CheckMd5", "MD5 Check: <" + str1 + "> OK!");
            v = true;
            return true;
          }
          LibProc.a("RiskStubShell.CheckMd5", "ERROR: MD5 Check: <" + str1 + ">");
          if (!paramBoolean1) {
            break label234;
          }
          e.c(str1);
          if (!paramBoolean2) {
            continue;
          }
          s = null;
          return false;
        }
        catch (Exception paramString)
        {
          continue;
        }
        paramString = paramString;
        str1 = null;
        LibProc.a("RiskStubShell.CheckMd5", "ERROR: get MD5, <" + str1 + ">");
        LibProc.a(paramString);
      }
      r = null;
      return false;
    }
    String str1 = r;
    while (str1 != null) {}
    label234:
    return false;
  }
  
  public boolean a(boolean paramBoolean)
  {
    LibProc.a("RiskStubShell.Version", "status: " + l + ", isA:" + paramBoolean);
    if (l == "") {
      return false;
    }
    u = paramBoolean;
    if (paramBoolean) {}
    for (String str = "A";; str = "B")
    {
      q = (RiskStubShell.M + "/RiskStub/" + str + "/J/RiskStub.apk");
      if (e.e(new File(q).getParent())) {
        break;
      }
      LibProc.a("RiskStubShell.Version", "ERROR: MKDIR: <" + q + ">");
      q = null;
      return false;
    }
    s = (RiskStubShell.M + "/RiskStub/" + str + "/C/RiskStub");
    r = (RiskStubShell.M + "/RiskStub/" + str + "/C/libRiskStub.so");
    if (!e.e(new File(r).getParent()))
    {
      LibProc.a("RiskStubShell.Version", "ERROR: MKDIR: <" + r + ">");
      r = null;
      return false;
    }
    return true;
  }
  
  public void b(a paramA)
  {
    int i = 0;
    try
    {
      String[] arrayOfString = new String[4];
      arrayOfString[0] = "md5_armeabi-v7a";
      arrayOfString[1] = "md5_x86";
      arrayOfString[2] = "md5_armeabi";
      arrayOfString[3] = "md5_java";
      while (i < arrayOfString.length)
      {
        k.put(arrayOfString[i], k.get(arrayOfString[i]));
        i += 1;
      }
      return;
    }
    catch (Exception paramA) {}
  }
  
  public boolean b(boolean paramBoolean)
  {
    w = false;
    try
    {
      if (q == null) {
        return false;
      }
      if (b(q).equalsIgnoreCase(k.getString("md5_java")))
      {
        LibProc.a("RiskStubShell.CheckMd5", "MD5 Check: <" + q + "> OK!");
        w = true;
        return true;
      }
      LibProc.a("RiskStubShell.CheckMd5", "ERROR: MD5 Check: <" + q + ">");
    }
    catch (Exception localException)
    {
      for (;;)
      {
        LibProc.a("RiskStubShell.CheckMd5", "ERROR: get MD5, <" + q + ">");
        LibProc.a(localException);
      }
    }
    if (paramBoolean)
    {
      e.c(q);
      q = null;
      return false;
    }
    return false;
  }
  
  public void c(boolean paramBoolean)
  {
    if ((!paramBoolean) && (l.equals(""))) {
      return;
    }
    if (paramBoolean) {
      l = "ok";
    }
    t = paramBoolean;
    q();
  }
  
  boolean g()
  {
    return l.equals("ok");
  }
  
  public boolean h()
  {
    return l.length() > 0;
  }
  
  public String i()
  {
    return q;
  }
  
  public String j()
  {
    return r;
  }
  
  public String k()
  {
    return s;
  }
  
  public void l()
  {
    l = "init";
    q();
  }
  
  public boolean m()
  {
    return t;
  }
  
  public boolean n()
  {
    int i = new Random().nextInt(1000);
    LibProc.a("RiskStub.Shell", "update when" + i + " < " + o + ", must_newest: " + p);
    return i < o;
  }
  
  public boolean o()
  {
    return p == 0;
  }
  
  public boolean p()
  {
    if ((!x) && (v)) {
      return true;
    }
    Object localObject = e.d(s, new File(r).getParent());
    e.c(s);
    s = null;
    if (((ArrayList)localObject).size() != 1)
    {
      r = null;
      return false;
    }
    if (!((String)((ArrayList)localObject).get(0)).equals("libRiskStub.so"))
    {
      r = null;
      return false;
    }
    localObject = b(r);
    try
    {
      k.put("md5_" + RiskStubShell.L, localObject);
      return true;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  void q()
  {
    try
    {
      k.put("status", l);
      k.put("is_use", t);
      if (u) {}
      for (String str = "ver_a";; str = "ver_b")
      {
        RiskStubShell.B.edit().putString(str, k.toString()).commit();
        return;
      }
      return;
    }
    catch (Exception localException) {}
  }
}
