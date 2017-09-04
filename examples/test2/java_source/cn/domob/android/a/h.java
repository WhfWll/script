package cn.domob.android.a;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import cn.domob.android.offerwall.m;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

class h
  extends Thread
{
  static String a = "sd卡";
  static String b = "内存卡";
  protected static final String c = ".temp";
  static final int d = 2097152;
  static final int e = 5242880;
  private static m f = new m(h.class.getSimpleName());
  private static final String i = "/DomobOfferWallAppDownload/";
  private i g = null;
  private Context h = null;
  private long j = 0L;
  private String k = "";
  private String l = "";
  private final String m = ".apk";
  private boolean n = false;
  private String o = "";
  
  protected h(Context paramContext, String paramString1, String paramString2, i paramI)
  {
    g = paramI;
    h = paramContext;
    o = paramString2;
    k = (paramString1 + ".apk");
  }
  
  private long a(String paramString)
    throws Exception
  {
    paramString = new URL(paramString);
    Proxy localProxy = e.b(h);
    if (localProxy != null) {}
    for (paramString = (HttpURLConnection)paramString.openConnection(localProxy);; paramString = (HttpURLConnection)paramString.openConnection())
    {
      paramString.setRequestMethod("HEAD");
      int i1 = paramString.getResponseCode();
      if ((i1 < 200) || (i1 >= 300)) {
        break;
      }
      return paramString.getContentLength();
    }
    return -1L;
  }
  
  private void b()
  {
    if (d()) {}
    while (c()) {
      return;
    }
  }
  
  private boolean b(String paramString)
  {
    File localFile1 = new File(paramString);
    File localFile2 = new File(paramString + ".temp");
    if (localFile1.exists()) {
      if (g != null) {
        g.a(paramString);
      }
    }
    do
    {
      return true;
      if (!localFile2.exists()) {
        break;
      }
      f.b(this, paramString + "　download size=" + localFile2.length() + " " + "softSize:" + j);
      n = true;
    } while (g == null);
    g.b(paramString + ".temp");
    return true;
    return false;
  }
  
  private boolean c()
  {
    Object localObject1 = "";
    long l1 = 0L;
    for (;;)
    {
      try
      {
        j = a(o);
        if (!e()) {
          break label421;
        }
        localObject2 = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l2 = ((StatFs)localObject2).getBlockSize() * ((StatFs)localObject2).getAvailableBlocks();
        f.a(this, "sd availaSize=" + l2 + "softsize=" + j);
        l1 = l2;
        if (l2 <= j + 2097152L) {
          break label421;
        }
        localObject1 = Environment.getExternalStorageDirectory() + "/DomobOfferWallAppDownload/";
        c((String)localObject1);
        i1 = 1;
        l1 = l2;
        if (i1 != 0) {
          break label346;
        }
        localObject1 = new StatFs(Environment.getDataDirectory().getPath());
        l2 = ((StatFs)localObject1).getBlockSize() * ((StatFs)localObject1).getAvailableBlocks();
        f.b(this, "rom" + l2);
        if (l2 < j + 5242880L)
        {
          g.a(j, l1, l2);
          return false;
        }
      }
      catch (Exception localException)
      {
        g.d("连接下载地址错误");
        return false;
      }
      String str = h.getFilesDir().getAbsolutePath() + "/DomobOfferWallAppDownload/";
      c(str);
      Object localObject2 = new File(str);
      localObject2 = "chmod 777 " + ((File)localObject2).getAbsolutePath();
      Runtime localRuntime = Runtime.getRuntime();
      try
      {
        i1 = localRuntime.exec((String)localObject2).waitFor();
        if (i1 != 0) {
          break label384;
        }
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          f.a(localIOException);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          label346:
          f.a(localInterruptedException);
        }
      }
      g.c(str + k + ".temp");
      return true;
      label384:
      g.a();
      return false;
      label421:
      int i1 = 0;
    }
  }
  
  private boolean c(String paramString)
  {
    paramString = new File(paramString);
    if (!paramString.exists()) {
      return paramString.mkdirs();
    }
    return true;
  }
  
  private boolean d()
  {
    l = (Environment.getExternalStorageDirectory() + "/DomobOfferWallAppDownload/" + k);
    f.a(this, "downloadPath: " + l);
    if (b(l)) {}
    do
    {
      return true;
      l = (h.getFilesDir().getAbsolutePath() + "/DomobOfferWallAppDownload/" + k);
    } while (b(l));
    return false;
  }
  
  private static boolean e()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  protected String a()
  {
    f.b(this, "app is download:" + d() + " " + "is not complete:" + n);
    if ((!d()) || (n)) {
      return null;
    }
    return l;
  }
  
  public final void run()
  {
    b();
  }
}
