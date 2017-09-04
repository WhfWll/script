package cn.domob.android.c;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import cn.domob.android.i.f;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

class h
  extends Thread
{
  protected static final String a = "/DomobResDownload/";
  static String b = "sd卡";
  static String c = "内存卡";
  protected static final String d = ".temp";
  static final int e = 2097152;
  static final int f = 5242880;
  private static f g = new f(h.class.getSimpleName());
  private static final String k = "/DomobAppDownload/";
  private i h = null;
  private Context i = null;
  private String j = "/DomobAppDownload/";
  private long l = 0L;
  private String m = "";
  private String n = "";
  private final String o = ".apk";
  private boolean p = false;
  private String q = "";
  private boolean r = true;
  private long s = -1L;
  
  protected h(Context paramContext, String paramString1, String paramString2, boolean paramBoolean, int paramInt, i paramI)
  {
    h = paramI;
    i = paramContext;
    q = paramString2;
    if (paramInt == 3) {
      if (paramString1.contains("/"))
      {
        paramInt = paramString1.lastIndexOf("/");
        m = paramString1.substring(paramInt + 1);
        j = paramString1.substring(0, paramInt + 1);
        r = false;
      }
    }
    for (;;)
    {
      g.b(String.format("download path currentDownloadPath:%s storageName:%s", new Object[] { j, m }));
      return;
      if (paramBoolean)
      {
        m = paramString1;
        j = "/DomobResDownload/";
        r = false;
      }
      else
      {
        m = (paramString1 + ".apk");
        j = "/DomobAppDownload/";
        r = true;
      }
    }
  }
  
  private void b()
  {
    try
    {
      l = a(q);
      if (d()) {
        return;
      }
    }
    catch (Exception localException)
    {
      do
      {
        for (;;)
        {
          g.a(localException);
        }
      } while (c());
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
    String str1 = "";
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
    Object localObject1;
    long l1;
    int i1;
    if (e())
    {
      localObject1 = new StatFs(Environment.getExternalStorageDirectory().getPath());
      l1 = ((StatFs)localObject1).getBlockSize() * ((StatFs)localObject1).getAvailableBlocks();
      g.a(this, "sd availaSize=" + l1 + "softsize=" + l);
      if (l1 > l + 2097152L)
      {
        localObject1 = Environment.getExternalStorageDirectory() + j;
        c((String)localObject1);
        i1 = 1;
      }
    }
    for (;;)
    {
      Object localObject2 = localObject1;
      Runtime localRuntime;
      if (i1 == 0)
      {
        localObject2 = localObject1;
        if (r)
        {
          localObject1 = new StatFs(Environment.getDataDirectory().getPath());
          long l2 = ((StatFs)localObject1).getBlockSize() * ((StatFs)localObject1).getAvailableBlocks();
          g.b(this, "rom" + l2);
          if (l2 < l + 5242880L)
          {
            h.a(l, l1, l2);
            return false;
            if (r) {
              break label500;
            }
            h.a(l, l1, 0L);
            return false;
            if (r) {
              break label493;
            }
            h.b();
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
          break label456;
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
      label456:
      h.a();
      return false;
      label493:
      l1 = 0L;
      i1 = 0;
      continue;
      label500:
      String str2 = "";
      i1 = 0;
    }
  }
  
  private static boolean c(String paramString)
  {
    for (;;)
    {
      try
      {
        g.b("try to create a directory " + paramString);
        try
        {
          File localFile = new File(paramString);
          if (localFile.exists()) {
            continue;
          }
          int i1 = 1;
          if ((!localFile.mkdirs()) && (i1 <= 3) && (!localFile.exists()))
          {
            g.d(String.format("the %d time to create a directory failed, %s ", new Object[] { Integer.valueOf(i1), paramString }));
            i1 += 1;
            continue;
          }
          if ((i1 > 3) && (!localFile.exists())) {
            g.e(String.format("hava tried %d times to create a directory failed, %s ", new Object[] { Integer.valueOf(i1), paramString }));
          }
        }
        catch (Exception paramString)
        {
          g.a(paramString);
          continue;
        }
        return true;
      }
      finally {}
      g.b("the directory is exist, so no need to create again " + paramString);
    }
  }
  
  private boolean d()
  {
    n = (Environment.getExternalStorageDirectory() + j + m);
    g.a(this, "downloadPath: " + n);
    if (b(n)) {}
    boolean bool;
    do
    {
      return true;
      n = (i.getFilesDir().getAbsolutePath() + j + m);
      bool = b(n);
    } while (bool);
    if (!bool) {
      g.b("Local test results are not downloaded resources");
    }
    return false;
  }
  
  private static boolean e()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  protected long a(String paramString)
    throws Exception
  {
    if (s > 0L)
    {
      h.a(s);
      return s;
    }
    paramString = new URL(paramString);
    Proxy localProxy = d.b(i);
    if (localProxy != null) {}
    for (paramString = (HttpURLConnection)paramString.openConnection(localProxy);; paramString = (HttpURLConnection)paramString.openConnection())
    {
      paramString.setRequestMethod("HEAD");
      int i1 = paramString.getResponseCode();
      if ((i1 < 200) || (i1 >= 300)) {
        break;
      }
      s = paramString.getContentLength();
      h.a(s);
      return s;
    }
    return -1L;
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
