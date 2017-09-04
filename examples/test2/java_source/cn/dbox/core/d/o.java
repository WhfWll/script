package cn.dbox.core.d;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import cn.dbox.core.h.d;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

class o
  extends Thread
{
  protected static final String a = "/DrwResDownload/";
  static String b = "sd卡";
  static String c = "内存卡";
  protected static final String d = ".temp";
  static final int e = 2097152;
  static final int f = 5242880;
  private static d g = new d(o.class.getSimpleName());
  private static final String k = "/DrwAppDownload/";
  private p h = null;
  private Context i = null;
  private String j = "/DrwAppDownload/";
  private long l = 0L;
  private String m = "";
  private String n = "";
  private final String o = ".apk";
  private boolean p = false;
  private String q = "";
  private boolean r = true;
  
  protected o(Context paramContext, String paramString1, String paramString2, boolean paramBoolean, p paramP)
  {
    h = paramP;
    i = paramContext;
    q = paramString2;
    if (paramBoolean)
    {
      m = paramString1;
      j = "/DrwResDownload/";
      r = false;
      return;
    }
    m = (paramString1 + ".apk");
    j = "/DrwAppDownload/";
    r = true;
  }
  
  private long a(String paramString)
    throws Exception
  {
    paramString = new URL(paramString);
    Proxy localProxy = h.b(i);
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
      if (h != null) {
        h.a(paramString);
      }
    }
    do
    {
      return true;
      if (!localFile2.exists()) {
        break;
      }
      g.b(this, paramString + "　download size=" + localFile2.length() + " " + "softSize:" + l);
      p = true;
    } while (h == null);
    h.b(paramString + ".temp");
    return true;
    return false;
  }
  
  private boolean c()
  {
    String str = "";
    long l1 = 0L;
    try
    {
      l = a(q);
      if (l == -1L)
      {
        h.d("连接下载地址信息错误");
        return false;
      }
    }
    catch (Exception localException)
    {
      h.d("连接下载地址错误");
      return false;
    }
    Object localObject2;
    long l2;
    Object localObject1;
    int i1;
    if (e())
    {
      localObject2 = new StatFs(Environment.getExternalStorageDirectory().getPath());
      l2 = ((StatFs)localObject2).getBlockSize() * ((StatFs)localObject2).getAvailableBlocks();
      g.a(this, "sd availaSize=" + l2 + "softsize=" + l);
      l1 = l2;
      if (l2 > l + 2097152L)
      {
        localObject1 = Environment.getExternalStorageDirectory() + j;
        c((String)localObject1);
        i1 = 1;
        l1 = l2;
      }
    }
    for (;;)
    {
      localObject2 = localObject1;
      Runtime localRuntime;
      if (i1 == 0)
      {
        localObject2 = localObject1;
        if (r)
        {
          localObject1 = new StatFs(Environment.getDataDirectory().getPath());
          l2 = ((StatFs)localObject1).getBlockSize() * ((StatFs)localObject1).getAvailableBlocks();
          g.b(this, "rom" + l2);
          if (l2 < l + 5242880L)
          {
            h.a(l, l1, l2);
            return false;
          }
          localObject2 = i.getFilesDir().getAbsolutePath() + j;
          c((String)localObject2);
          localObject1 = new File((String)localObject2);
          localObject1 = "chmod 777 " + ((File)localObject1).getAbsolutePath();
          localRuntime = Runtime.getRuntime();
        }
      }
      try
      {
        i1 = localRuntime.exec((String)localObject1).waitFor();
        if (i1 != 0) {
          break label427;
        }
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          g.a(localIOException);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          g.a(localInterruptedException);
        }
      }
      h.c((String)localObject2 + m + ".temp");
      return true;
      label427:
      h.a();
      return false;
      i1 = 0;
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
    n = (Environment.getExternalStorageDirectory() + j + m);
    g.a(this, "downloadPath: " + n);
    if (b(n)) {}
    do
    {
      return true;
      n = (i.getFilesDir().getAbsolutePath() + j + m);
    } while (b(n));
    return false;
  }
  
  private static boolean e()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  protected String a()
  {
    g.b(this, "app is download:" + d() + " " + "is not complete:" + p);
    if ((!d()) || (p)) {
      return null;
    }
    return n;
  }
  
  public final void run()
  {
    b();
  }
}
