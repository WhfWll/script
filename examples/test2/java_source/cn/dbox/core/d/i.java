package cn.dbox.core.d;

import android.content.Context;
import cn.dbox.core.h.d;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.net.URL;

public class i
  extends Thread
{
  private static d a = new d(i.class.getSimpleName());
  private static final int b = 10240;
  private static final int l = 40000;
  private static final int m = 60000;
  private static final int n = 30;
  private URL c;
  private File d;
  private long e;
  private long f;
  private long g;
  private boolean h = false;
  private long i = 0L;
  private g.a j;
  private f k;
  private Context o = null;
  
  i(URL paramURL, File paramFile, long paramLong1, long paramLong2, g.a paramA, f paramF, Context paramContext)
  {
    c = paramURL;
    d = paramFile;
    e = paramLong1;
    g = paramLong1;
    f = paramLong2;
    j = paramA;
    k = paramF;
    i = paramLong1;
    o = paramContext;
    if ((paramLong1 > paramLong2) && (paramLong2 > 0L))
    {
      a.a(this, "Start postition is larger than end position, set finished to true");
      h = true;
    }
    a.a(this, "download st:" + paramLong1 + " ed:" + paramLong2);
  }
  
  public boolean a()
  {
    return h;
  }
  
  public long b()
  {
    return i;
  }
  
  public void run()
  {
    byte[] arrayOfByte = new byte['⠀'];
    for (;;)
    {
      try
      {
        localObject = h.b(o);
        if (localObject == null) {
          continue;
        }
        a.a(this, "Proxy exists");
        localObject = (HttpURLConnection)c.openConnection((Proxy)localObject);
        ((HttpURLConnection)localObject).setConnectTimeout(40000);
        ((HttpURLConnection)localObject).setReadTimeout(60000);
        ((HttpURLConnection)localObject).setAllowUserInteraction(true);
        ((HttpURLConnection)localObject).setRequestProperty("Range", "bytes=" + e + "-" + f);
        localRandomAccessFile = new RandomAccessFile(d, "rw");
        if (d.getAbsoluteFile().toString().startsWith("/data/data/"))
        {
          a.a(this, "download in rom change chmod " + d.getAbsolutePath());
          String str = "chmod 777 " + d.getAbsolutePath();
          Runtime.getRuntime().exec(str);
        }
        if (((HttpURLConnection)localObject).getResponseCode() != 206) {
          continue;
        }
        a.b(this, "support range parameter,continue to download");
        localRandomAccessFile.seek(e);
        localObject = new BufferedInputStream(((HttpURLConnection)localObject).getInputStream());
      }
      catch (SocketTimeoutException localSocketTimeoutException)
      {
        Object localObject;
        a.e(this, "download SocketTimeoutException ");
        k.a("下载过程中网络出现异常");
        return;
        i1 = localSocketTimeoutException.read(arrayOfByte, 0, 10240);
        if (i1 != -1) {
          continue;
        }
        a.a(this, "Total downloadsize: " + i);
        h = true;
        localSocketTimeoutException.close();
        localRandomAccessFile.close();
        return;
      }
      catch (IOException localIOException)
      {
        RandomAccessFile localRandomAccessFile;
        a.e(this, "download IOException " + localIOException.getMessage());
        k.a("下载过程中出现异常");
        return;
        localRandomAccessFile.write(arrayOfByte, 0, i1);
        g += i1;
        if (g <= f) {
          break label579;
        }
        i += i1 - (g - f) + 1L;
        try
        {
          Thread.sleep(30L);
        }
        catch (InterruptedException localInterruptedException)
        {
          a.a(localInterruptedException);
          k.a("下载过程中出现异常");
        }
        continue;
      }
      catch (Exception localException)
      {
        a.e(this, "download error " + localException.getMessage());
        k.a("下载过程中出现异常");
        a.a(localException);
        return;
      }
      if (g >= f) {
        continue;
      }
      if (!j.a) {
        continue;
      }
      return;
      a.a(this, "Proxy is null");
      localObject = (HttpURLConnection)c.openConnection();
      continue;
      if (e > 0L) {
        a.b(this, "don't support range parameter,download from beginning");
      }
      localRandomAccessFile.seek(0L);
      i = 0L;
      g = 0L;
    }
    for (;;)
    {
      int i1;
      label579:
      i += i1;
    }
  }
}
