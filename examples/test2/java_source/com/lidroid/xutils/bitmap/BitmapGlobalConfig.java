package com.lidroid.xutils.bitmap;

import android.app.ActivityManager;
import android.content.Context;
import com.lidroid.xutils.bitmap.core.BitmapCache;
import com.lidroid.xutils.bitmap.download.DefaultDownloader;
import com.lidroid.xutils.bitmap.download.Downloader;
import com.lidroid.xutils.cache.FileNameGenerator;
import com.lidroid.xutils.task.Priority;
import com.lidroid.xutils.task.PriorityAsyncTask;
import com.lidroid.xutils.task.PriorityExecutor;
import com.lidroid.xutils.util.LogUtils;
import java.util.HashMap;

public class BitmapGlobalConfig
{
  private static final PriorityExecutor BITMAP_LOAD_EXECUTOR = new PriorityExecutor(5);
  private static final int DEFAULT_POOL_SIZE = 5;
  private static final PriorityExecutor DISK_CACHE_EXECUTOR = new PriorityExecutor(2);
  public static final int MIN_DISK_CACHE_SIZE = 10485760;
  public static final int MIN_MEMORY_CACHE_SIZE = 2097152;
  private static final HashMap<String, BitmapGlobalConfig> configMap = new HashMap(1);
  private BitmapCache bitmapCache;
  private BitmapCacheListener bitmapCacheListener;
  private long defaultCacheExpiry = 2592000000L;
  private int defaultConnectTimeout = 15000;
  private int defaultReadTimeout = 15000;
  private boolean diskCacheEnabled = true;
  private String diskCachePath;
  private int diskCacheSize = 52428800;
  private Downloader downloader;
  private FileNameGenerator fileNameGenerator;
  private Context mContext;
  private boolean memoryCacheEnabled = true;
  private int memoryCacheSize = 4194304;
  
  private BitmapGlobalConfig(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context may not be null");
    }
    mContext = paramContext;
    diskCachePath = paramString;
    initBitmapCache();
  }
  
  /* Error */
  public static BitmapGlobalConfig getInstance(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_1
    //   4: astore_2
    //   5: aload_1
    //   6: invokestatic 106	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   9: ifeq +10 -> 19
    //   12: aload_0
    //   13: ldc 108
    //   15: invokestatic 114	com/lidroid/xutils/util/OtherUtils:getDiskCacheDir	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   18: astore_2
    //   19: getstatic 58	com/lidroid/xutils/bitmap/BitmapGlobalConfig:configMap	Ljava/util/HashMap;
    //   22: aload_2
    //   23: invokevirtual 118	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   26: ifeq +19 -> 45
    //   29: getstatic 58	com/lidroid/xutils/bitmap/BitmapGlobalConfig:configMap	Ljava/util/HashMap;
    //   32: aload_2
    //   33: invokevirtual 122	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   36: checkcast 2	com/lidroid/xutils/bitmap/BitmapGlobalConfig
    //   39: astore_0
    //   40: ldc 2
    //   42: monitorexit
    //   43: aload_0
    //   44: areturn
    //   45: new 2	com/lidroid/xutils/bitmap/BitmapGlobalConfig
    //   48: dup
    //   49: aload_0
    //   50: aload_2
    //   51: invokespecial 124	com/lidroid/xutils/bitmap/BitmapGlobalConfig:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   54: astore_0
    //   55: getstatic 58	com/lidroid/xutils/bitmap/BitmapGlobalConfig:configMap	Ljava/util/HashMap;
    //   58: aload_2
    //   59: aload_0
    //   60: invokevirtual 128	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   63: pop
    //   64: goto -24 -> 40
    //   67: astore_0
    //   68: ldc 2
    //   70: monitorexit
    //   71: aload_0
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	paramContext	Context
    //   0	73	1	paramString	String
    //   4	55	2	str	String
    // Exception table:
    //   from	to	target	type
    //   5	19	67	finally
    //   19	40	67	finally
    //   45	64	67	finally
  }
  
  private int getMemoryClass()
  {
    return ((ActivityManager)mContext.getSystemService("activity")).getMemoryClass();
  }
  
  private void initBitmapCache()
  {
    new BitmapCacheManagementTask(null).execute(new Object[] { Integer.valueOf(0) });
    new BitmapCacheManagementTask(null).execute(new Object[] { Integer.valueOf(1) });
  }
  
  public void clearCache()
  {
    new BitmapCacheManagementTask(null).execute(new Object[] { Integer.valueOf(4) });
  }
  
  public void clearCache(String paramString)
  {
    new BitmapCacheManagementTask(null).execute(new Object[] { Integer.valueOf(7), paramString });
  }
  
  public void clearDiskCache()
  {
    new BitmapCacheManagementTask(null).execute(new Object[] { Integer.valueOf(6) });
  }
  
  public void clearDiskCache(String paramString)
  {
    new BitmapCacheManagementTask(null).execute(new Object[] { Integer.valueOf(9), paramString });
  }
  
  public void clearMemoryCache()
  {
    new BitmapCacheManagementTask(null).execute(new Object[] { Integer.valueOf(5) });
  }
  
  public void clearMemoryCache(String paramString)
  {
    new BitmapCacheManagementTask(null).execute(new Object[] { Integer.valueOf(8), paramString });
  }
  
  public void closeCache()
  {
    new BitmapCacheManagementTask(null).execute(new Object[] { Integer.valueOf(3) });
  }
  
  public void flushCache()
  {
    new BitmapCacheManagementTask(null).execute(new Object[] { Integer.valueOf(2) });
  }
  
  public BitmapCache getBitmapCache()
  {
    if (bitmapCache == null) {
      bitmapCache = new BitmapCache(this);
    }
    return bitmapCache;
  }
  
  public BitmapCacheListener getBitmapCacheListener()
  {
    return bitmapCacheListener;
  }
  
  public PriorityExecutor getBitmapLoadExecutor()
  {
    return BITMAP_LOAD_EXECUTOR;
  }
  
  public long getDefaultCacheExpiry()
  {
    return defaultCacheExpiry;
  }
  
  public int getDefaultConnectTimeout()
  {
    return defaultConnectTimeout;
  }
  
  public int getDefaultReadTimeout()
  {
    return defaultReadTimeout;
  }
  
  public PriorityExecutor getDiskCacheExecutor()
  {
    return DISK_CACHE_EXECUTOR;
  }
  
  public String getDiskCachePath()
  {
    return diskCachePath;
  }
  
  public int getDiskCacheSize()
  {
    return diskCacheSize;
  }
  
  public Downloader getDownloader()
  {
    if (downloader == null) {
      downloader = new DefaultDownloader();
    }
    downloader.setContext(mContext);
    downloader.setDefaultExpiry(getDefaultCacheExpiry());
    downloader.setDefaultConnectTimeout(getDefaultConnectTimeout());
    downloader.setDefaultReadTimeout(getDefaultReadTimeout());
    return downloader;
  }
  
  public FileNameGenerator getFileNameGenerator()
  {
    return fileNameGenerator;
  }
  
  public int getMemoryCacheSize()
  {
    return memoryCacheSize;
  }
  
  public int getThreadPoolSize()
  {
    return BITMAP_LOAD_EXECUTOR.getPoolSize();
  }
  
  public boolean isDiskCacheEnabled()
  {
    return diskCacheEnabled;
  }
  
  public boolean isMemoryCacheEnabled()
  {
    return memoryCacheEnabled;
  }
  
  public void setBitmapCacheListener(BitmapCacheListener paramBitmapCacheListener)
  {
    bitmapCacheListener = paramBitmapCacheListener;
  }
  
  public void setDefaultCacheExpiry(long paramLong)
  {
    defaultCacheExpiry = paramLong;
  }
  
  public void setDefaultConnectTimeout(int paramInt)
  {
    defaultConnectTimeout = paramInt;
  }
  
  public void setDefaultReadTimeout(int paramInt)
  {
    defaultReadTimeout = paramInt;
  }
  
  public void setDiskCacheEnabled(boolean paramBoolean)
  {
    diskCacheEnabled = paramBoolean;
  }
  
  public void setDiskCacheSize(int paramInt)
  {
    if (paramInt >= 10485760)
    {
      diskCacheSize = paramInt;
      if (bitmapCache != null) {
        bitmapCache.setDiskCacheSize(diskCacheSize);
      }
    }
  }
  
  public void setDownloader(Downloader paramDownloader)
  {
    downloader = paramDownloader;
  }
  
  public void setFileNameGenerator(FileNameGenerator paramFileNameGenerator)
  {
    fileNameGenerator = paramFileNameGenerator;
    if (bitmapCache != null) {
      bitmapCache.setDiskCacheFileNameGenerator(paramFileNameGenerator);
    }
  }
  
  public void setMemCacheSizePercent(float paramFloat)
  {
    if ((paramFloat < 0.05F) || (paramFloat > 0.8F)) {
      throw new IllegalArgumentException("percent must be between 0.05 and 0.8 (inclusive)");
    }
    memoryCacheSize = Math.round(getMemoryClass() * paramFloat * 1024.0F * 1024.0F);
    if (bitmapCache != null) {
      bitmapCache.setMemoryCacheSize(memoryCacheSize);
    }
  }
  
  public void setMemoryCacheEnabled(boolean paramBoolean)
  {
    memoryCacheEnabled = paramBoolean;
  }
  
  public void setMemoryCacheSize(int paramInt)
  {
    if (paramInt >= 2097152)
    {
      memoryCacheSize = paramInt;
      if (bitmapCache != null) {
        bitmapCache.setMemoryCacheSize(memoryCacheSize);
      }
      return;
    }
    setMemCacheSizePercent(0.3F);
  }
  
  public void setThreadPoolSize(int paramInt)
  {
    BITMAP_LOAD_EXECUTOR.setPoolSize(paramInt);
  }
  
  private class BitmapCacheManagementTask
    extends PriorityAsyncTask<Object, Void, Object[]>
  {
    public static final int MESSAGE_CLEAR = 4;
    public static final int MESSAGE_CLEAR_BY_KEY = 7;
    public static final int MESSAGE_CLEAR_DISK = 6;
    public static final int MESSAGE_CLEAR_DISK_BY_KEY = 9;
    public static final int MESSAGE_CLEAR_MEMORY = 5;
    public static final int MESSAGE_CLEAR_MEMORY_BY_KEY = 8;
    public static final int MESSAGE_CLOSE = 3;
    public static final int MESSAGE_FLUSH = 2;
    public static final int MESSAGE_INIT_DISK_CACHE = 1;
    public static final int MESSAGE_INIT_MEMORY_CACHE = 0;
    
    private BitmapCacheManagementTask()
    {
      setPriority(Priority.UI_TOP);
    }
    
    protected Object[] doInBackground(Object... paramVarArgs)
    {
      if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {}
      do
      {
        do
        {
          do
          {
            BitmapCache localBitmapCache;
            do
            {
              return paramVarArgs;
              localBitmapCache = getBitmapCache();
            } while (localBitmapCache == null);
            try
            {
              switch (((Integer)paramVarArgs[0]).intValue())
              {
              case 0: 
                localBitmapCache.initMemoryCache();
                return paramVarArgs;
              }
            }
            catch (Throwable localThrowable)
            {
              LogUtils.e(localThrowable.getMessage(), localThrowable);
              return paramVarArgs;
            }
            localThrowable.initDiskCache();
            return paramVarArgs;
            localThrowable.flush();
            return paramVarArgs;
            localThrowable.clearMemoryCache();
            localThrowable.close();
            return paramVarArgs;
            localThrowable.clearCache();
            return paramVarArgs;
            localThrowable.clearMemoryCache();
            return paramVarArgs;
            localThrowable.clearDiskCache();
            return paramVarArgs;
          } while (paramVarArgs.length != 2);
          localThrowable.clearCache(String.valueOf(paramVarArgs[1]));
          return paramVarArgs;
        } while (paramVarArgs.length != 2);
        localThrowable.clearMemoryCache(String.valueOf(paramVarArgs[1]));
        return paramVarArgs;
      } while (paramVarArgs.length != 2);
      localThrowable.clearDiskCache(String.valueOf(paramVarArgs[1]));
      return paramVarArgs;
      return paramVarArgs;
    }
    
    protected void onPostExecute(Object[] paramArrayOfObject)
    {
      if ((bitmapCacheListener == null) || (paramArrayOfObject == null) || (paramArrayOfObject.length == 0)) {}
      do
      {
        do
        {
          do
          {
            return;
            try
            {
              switch (((Integer)paramArrayOfObject[0]).intValue())
              {
              case 0: 
                bitmapCacheListener.onInitMemoryCacheFinished();
                return;
              }
            }
            catch (Throwable paramArrayOfObject)
            {
              LogUtils.e(paramArrayOfObject.getMessage(), paramArrayOfObject);
              return;
            }
            bitmapCacheListener.onInitDiskFinished();
            return;
            bitmapCacheListener.onFlushCacheFinished();
            return;
            bitmapCacheListener.onCloseCacheFinished();
            return;
            bitmapCacheListener.onClearCacheFinished();
            return;
            bitmapCacheListener.onClearMemoryCacheFinished();
            return;
            bitmapCacheListener.onClearDiskCacheFinished();
            return;
          } while (paramArrayOfObject.length != 2);
          bitmapCacheListener.onClearCacheFinished(String.valueOf(paramArrayOfObject[1]));
          return;
        } while (paramArrayOfObject.length != 2);
        bitmapCacheListener.onClearMemoryCacheFinished(String.valueOf(paramArrayOfObject[1]));
        return;
      } while (paramArrayOfObject.length != 2);
      bitmapCacheListener.onClearDiskCacheFinished(String.valueOf(paramArrayOfObject[1]));
      return;
    }
  }
}
