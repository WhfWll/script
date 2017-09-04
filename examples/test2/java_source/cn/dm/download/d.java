package cn.dm.download;

import android.os.Environment;
import android.os.StatFs;
import cn.dm.download.bean.DownloadAppInfo;
import cn.dm.download.listener.a;
import cn.dm.download.util.Constants;
import cn.dm.download.util.b;
import cn.dm.download.util.c;
import java.io.File;

public class d
{
  private static b j = new b(d.class.getSimpleName());
  private a n;
  private DownloadAppInfo o;
  private int w = 2097152;
  private int x;
  
  public d(DownloadAppInfo paramDownloadAppInfo, a paramA)
  {
    o = paramDownloadAppInfo;
    n = paramA;
  }
  
  public final boolean a(long paramLong, String paramString)
  {
    if (paramLong == Constants.DownloadUrlWrong)
    {
      paramString = j;
      n.onDownloadFailed(o);
      return false;
    }
    if (c.s())
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      if (localStatFs.getBlockSize() * localStatFs.getAvailableBlocks() > w + paramLong) {
        c.t(paramString);
      }
      for (;;)
      {
        return true;
        paramString = j;
        n.onDownloadFailed(o);
      }
    }
    paramString = j;
    o.setErrorFlag(1);
    n.onDownloadFailed(o);
    return false;
  }
}
