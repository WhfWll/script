package cn.dm.download;

import android.content.Context;
import cn.dm.download.bean.DownloadAppInfo;
import cn.dm.download.listener.a;
import cn.dm.download.util.Constants;
import cn.dm.download.util.b;
import cn.dm.download.util.c;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.net.URL;

public class e
  extends Thread
{
  private static final int BUFFER_SIZE = 10240;
  private static b j = new b(e.class.getSimpleName());
  private long A;
  private long B = 0L;
  private final int C;
  private final int D;
  private final int E;
  private String F = "";
  public boolean G;
  public boolean H;
  private File file;
  private Context mContext;
  private a n;
  private DownloadAppInfo o;
  private long y;
  private long z;
  
  e(Context paramContext, File paramFile, long paramLong1, long paramLong2, a paramA, DownloadAppInfo paramDownloadAppInfo)
  {
    mContext = paramContext;
    n = paramA;
    o = paramDownloadAppInfo;
    file = paramFile;
    y = paramLong1;
    A = paramLong1;
    z = paramLong2;
    B = paramLong1;
    F = paramFile.getAbsolutePath();
  }
  
  private static boolean a(File paramFile)
  {
    String str = paramFile.getAbsolutePath();
    if (str.endsWith(Constants.Unfinished_Sign)) {
      paramFile.renameTo(new File(str.substring(0, str.length() - Constants.Unfinished_Sign.length())));
    }
    return true;
  }
  
  public void run()
  {
    Object localObject2 = new byte['⠀'];
    Object localObject3;
    Object localObject4;
    try
    {
      localObject1 = new URL(o.getDownloadUrl());
      localObject3 = c.f(mContext);
      if (localObject3 != null) {}
      for (localObject1 = (HttpURLConnection)((URL)localObject1).openConnection((Proxy)localObject3);; localObject1 = (HttpURLConnection)((URL)localObject1).openConnection())
      {
        ((HttpURLConnection)localObject1).setConnectTimeout(40000);
        ((HttpURLConnection)localObject1).setReadTimeout(60000);
        ((HttpURLConnection)localObject1).setAllowUserInteraction(true);
        localObject3 = j;
        new StringBuilder("下载文件：").append(file.getPath());
        localObject3 = new RandomAccessFile(file, "rw");
        if (file.getAbsoluteFile().toString().startsWith(mContext.getFilesDir().getAbsolutePath()))
        {
          localObject4 = "chmod 777 " + file.getAbsolutePath();
          Runtime.getRuntime().exec((String)localObject4);
        }
        if (y != 0L) {
          break;
        }
        if (n.i()) {
          break label253;
        }
        return;
      }
      if (!n.j()) {
        return;
      }
      ((HttpURLConnection)localObject1).setRequestProperty("Range", "bytes=" + y + "-" + z);
      label253:
      localObject4 = j;
      new StringBuilder("下载ResponseCode：").append(((HttpURLConnection)localObject1).getResponseCode());
      if (((HttpURLConnection)localObject1).getResponseCode() != 206) {
        break label444;
      }
      ((RandomAccessFile)localObject3).seek(y);
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      for (;;)
      {
        Object localObject1;
        localObject2 = j;
        new StringBuilder("下载过程中网络出现异常：").append(localSocketTimeoutException.getMessage());
        n.onDownloadFailed(o);
        return;
        ((RandomAccessFile)localObject3).seek(0L);
        B = 0L;
        A = 0L;
      }
    }
    catch (Exception localException)
    {
      localObject2 = j;
      new StringBuilder("下载过程中出现异常:").append(localException.getMessage());
      n.onDownloadFailed(o);
      return;
    }
    localObject1 = new BufferedInputStream(((HttpURLConnection)localObject1).getInputStream());
    long l1 = System.currentTimeMillis();
    if (A >= z) {}
    label444:
    int i;
    do
    {
      localObject2 = file;
      localObject4 = ((File)localObject2).getAbsolutePath();
      if (((String)localObject4).endsWith(Constants.Unfinished_Sign)) {
        ((File)localObject2).renameTo(new File(((String)localObject4).substring(0, ((String)localObject4).length() - Constants.Unfinished_Sign.length())));
      }
      n.b(F);
      ((BufferedInputStream)localObject1).close();
      ((RandomAccessFile)localObject3).close();
      return;
      if ((G) || (H))
      {
        localException.close();
        ((RandomAccessFile)localObject3).close();
        if (G) {
          n.a(o);
        }
        if (!H) {
          break;
        }
        n.c(F);
        return;
      }
      i = localException.read((byte[])localObject2, 0, 10240);
    } while (i == -1);
    ((RandomAccessFile)localObject3).write((byte[])localObject2, 0, i);
    A += i;
    long l2;
    if (A > z) {
      l2 = B;
    }
    for (B = (i - (A - z) + 1L + l2);; B = (i + l2))
    {
      l2 = System.currentTimeMillis();
      if (l2 - l1 < 1000L) {
        break;
      }
      localObject4 = j;
      new StringBuilder("当前下载大小：").append(B);
      o.setCurrentDownloadSize(B);
      n.onProgressChange(o);
      l1 = l2;
      break;
      l2 = B;
    }
  }
}
