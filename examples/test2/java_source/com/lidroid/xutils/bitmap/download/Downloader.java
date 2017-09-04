package com.lidroid.xutils.bitmap.download;

import android.content.Context;
import com.lidroid.xutils.BitmapUtils.BitmapLoadTask;
import java.io.OutputStream;

public abstract class Downloader
{
  private Context context;
  private int defaultConnectTimeout;
  private long defaultExpiry;
  private int defaultReadTimeout;
  
  public Downloader() {}
  
  public abstract long downloadToStream(String paramString, OutputStream paramOutputStream, BitmapUtils.BitmapLoadTask<?> paramBitmapLoadTask);
  
  public Context getContext()
  {
    return context;
  }
  
  public int getDefaultConnectTimeout()
  {
    return defaultConnectTimeout;
  }
  
  public long getDefaultExpiry()
  {
    return defaultExpiry;
  }
  
  public int getDefaultReadTimeout()
  {
    return defaultReadTimeout;
  }
  
  public void setContext(Context paramContext)
  {
    context = paramContext;
  }
  
  public void setDefaultConnectTimeout(int paramInt)
  {
    defaultConnectTimeout = paramInt;
  }
  
  public void setDefaultExpiry(long paramLong)
  {
    defaultExpiry = paramLong;
  }
  
  public void setDefaultReadTimeout(int paramInt)
  {
    defaultReadTimeout = paramInt;
  }
}
