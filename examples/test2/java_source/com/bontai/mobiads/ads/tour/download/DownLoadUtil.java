package com.bontai.mobiads.ads.tour.download;

import com.bangcle.andjni.JniLib;
import java.io.File;

public class DownLoadUtil
{
  private static final String TAG = "DownLoadUtil";
  private int realSize = 0;
  private int totalSize = 0;
  
  static
  {
    JniLib.a(DownLoadUtil.class, 298);
  }
  
  public DownLoadUtil() {}
  
  public native int downloadUpdateFile(String paramString1, File paramFile, String paramString2, DownloadFileCallback paramDownloadFileCallback)
    throws Exception;
  
  public native int getRealSize();
  
  public native int getTotalSize();
}
