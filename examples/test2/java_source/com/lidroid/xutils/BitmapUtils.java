package com.lidroid.xutils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import com.lidroid.xutils.bitmap.BitmapCacheListener;
import com.lidroid.xutils.bitmap.BitmapCommonUtils;
import com.lidroid.xutils.bitmap.BitmapDisplayConfig;
import com.lidroid.xutils.bitmap.BitmapGlobalConfig;
import com.lidroid.xutils.bitmap.callback.BitmapLoadCallBack;
import com.lidroid.xutils.bitmap.callback.BitmapLoadFrom;
import com.lidroid.xutils.bitmap.callback.DefaultBitmapLoadCallBack;
import com.lidroid.xutils.bitmap.core.AsyncDrawable;
import com.lidroid.xutils.bitmap.core.BitmapCache;
import com.lidroid.xutils.bitmap.core.BitmapSize;
import com.lidroid.xutils.bitmap.download.Downloader;
import com.lidroid.xutils.cache.FileNameGenerator;
import com.lidroid.xutils.task.PriorityAsyncTask;
import com.lidroid.xutils.task.PriorityExecutor;
import com.lidroid.xutils.task.TaskHandler;
import java.io.File;
import java.lang.ref.WeakReference;

public class BitmapUtils
  implements TaskHandler
{
  private boolean cancelAllTask = false;
  private Context context;
  private BitmapDisplayConfig defaultDisplayConfig;
  private BitmapGlobalConfig globalConfig;
  private boolean pauseTask = false;
  private final Object pauseTaskLock = new Object();
  
  public BitmapUtils(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public BitmapUtils(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context may not be null");
    }
    context = paramContext.getApplicationContext();
    globalConfig = BitmapGlobalConfig.getInstance(context, paramString);
    defaultDisplayConfig = new BitmapDisplayConfig();
  }
  
  public BitmapUtils(Context paramContext, String paramString, float paramFloat)
  {
    this(paramContext, paramString);
    globalConfig.setMemCacheSizePercent(paramFloat);
  }
  
  public BitmapUtils(Context paramContext, String paramString, float paramFloat, int paramInt)
  {
    this(paramContext, paramString);
    globalConfig.setMemCacheSizePercent(paramFloat);
    globalConfig.setDiskCacheSize(paramInt);
  }
  
  public BitmapUtils(Context paramContext, String paramString, int paramInt)
  {
    this(paramContext, paramString);
    globalConfig.setMemoryCacheSize(paramInt);
  }
  
  public BitmapUtils(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    this(paramContext, paramString);
    globalConfig.setMemoryCacheSize(paramInt1);
    globalConfig.setDiskCacheSize(paramInt2);
  }
  
  private static <T extends View> boolean bitmapLoadTaskExist(T paramT, String paramString, BitmapLoadCallBack<T> paramBitmapLoadCallBack)
  {
    boolean bool = true;
    paramT = getBitmapTaskFromContainer(paramT, paramBitmapLoadCallBack);
    if (paramT != null)
    {
      paramBitmapLoadCallBack = uri;
      if ((TextUtils.isEmpty(paramBitmapLoadCallBack)) || (!paramBitmapLoadCallBack.equals(paramString))) {
        paramT.cancel(true);
      }
    }
    else
    {
      bool = false;
    }
    return bool;
  }
  
  private static <T extends View> BitmapLoadTask<T> getBitmapTaskFromContainer(T paramT, BitmapLoadCallBack<T> paramBitmapLoadCallBack)
  {
    if (paramT != null)
    {
      paramT = paramBitmapLoadCallBack.getDrawable(paramT);
      if ((paramT instanceof AsyncDrawable)) {
        return ((AsyncDrawable)paramT).getBitmapWorkerTask();
      }
    }
    return null;
  }
  
  public void cancel()
  {
    pauseTask = true;
    cancelAllTask = true;
    synchronized (pauseTaskLock)
    {
      pauseTaskLock.notifyAll();
      return;
    }
  }
  
  public void clearCache()
  {
    globalConfig.clearCache();
  }
  
  public void clearCache(String paramString)
  {
    globalConfig.clearCache(paramString);
  }
  
  public void clearDiskCache()
  {
    globalConfig.clearDiskCache();
  }
  
  public void clearDiskCache(String paramString)
  {
    globalConfig.clearDiskCache(paramString);
  }
  
  public void clearMemoryCache()
  {
    globalConfig.clearMemoryCache();
  }
  
  public void clearMemoryCache(String paramString)
  {
    globalConfig.clearMemoryCache(paramString);
  }
  
  public void closeCache()
  {
    globalConfig.closeCache();
  }
  
  public BitmapUtils configBitmapCacheListener(BitmapCacheListener paramBitmapCacheListener)
  {
    globalConfig.setBitmapCacheListener(paramBitmapCacheListener);
    return this;
  }
  
  public BitmapUtils configDefaultAutoRotation(boolean paramBoolean)
  {
    defaultDisplayConfig.setAutoRotation(paramBoolean);
    return this;
  }
  
  public BitmapUtils configDefaultBitmapConfig(Bitmap.Config paramConfig)
  {
    defaultDisplayConfig.setBitmapConfig(paramConfig);
    return this;
  }
  
  public BitmapUtils configDefaultBitmapMaxSize(int paramInt1, int paramInt2)
  {
    defaultDisplayConfig.setBitmapMaxSize(new BitmapSize(paramInt1, paramInt2));
    return this;
  }
  
  public BitmapUtils configDefaultBitmapMaxSize(BitmapSize paramBitmapSize)
  {
    defaultDisplayConfig.setBitmapMaxSize(paramBitmapSize);
    return this;
  }
  
  public BitmapUtils configDefaultCacheExpiry(long paramLong)
  {
    globalConfig.setDefaultCacheExpiry(paramLong);
    return this;
  }
  
  public BitmapUtils configDefaultConnectTimeout(int paramInt)
  {
    globalConfig.setDefaultConnectTimeout(paramInt);
    return this;
  }
  
  public BitmapUtils configDefaultDisplayConfig(BitmapDisplayConfig paramBitmapDisplayConfig)
  {
    defaultDisplayConfig = paramBitmapDisplayConfig;
    return this;
  }
  
  public BitmapUtils configDefaultImageLoadAnimation(Animation paramAnimation)
  {
    defaultDisplayConfig.setAnimation(paramAnimation);
    return this;
  }
  
  public BitmapUtils configDefaultLoadFailedImage(int paramInt)
  {
    defaultDisplayConfig.setLoadFailedDrawable(context.getResources().getDrawable(paramInt));
    return this;
  }
  
  public BitmapUtils configDefaultLoadFailedImage(Bitmap paramBitmap)
  {
    defaultDisplayConfig.setLoadFailedDrawable(new BitmapDrawable(context.getResources(), paramBitmap));
    return this;
  }
  
  public BitmapUtils configDefaultLoadFailedImage(Drawable paramDrawable)
  {
    defaultDisplayConfig.setLoadFailedDrawable(paramDrawable);
    return this;
  }
  
  public BitmapUtils configDefaultLoadingImage(int paramInt)
  {
    defaultDisplayConfig.setLoadingDrawable(context.getResources().getDrawable(paramInt));
    return this;
  }
  
  public BitmapUtils configDefaultLoadingImage(Bitmap paramBitmap)
  {
    defaultDisplayConfig.setLoadingDrawable(new BitmapDrawable(context.getResources(), paramBitmap));
    return this;
  }
  
  public BitmapUtils configDefaultLoadingImage(Drawable paramDrawable)
  {
    defaultDisplayConfig.setLoadingDrawable(paramDrawable);
    return this;
  }
  
  public BitmapUtils configDefaultReadTimeout(int paramInt)
  {
    globalConfig.setDefaultReadTimeout(paramInt);
    return this;
  }
  
  public BitmapUtils configDefaultShowOriginal(boolean paramBoolean)
  {
    defaultDisplayConfig.setShowOriginal(paramBoolean);
    return this;
  }
  
  public BitmapUtils configDiskCacheEnabled(boolean paramBoolean)
  {
    globalConfig.setDiskCacheEnabled(paramBoolean);
    return this;
  }
  
  public BitmapUtils configDiskCacheFileNameGenerator(FileNameGenerator paramFileNameGenerator)
  {
    globalConfig.setFileNameGenerator(paramFileNameGenerator);
    return this;
  }
  
  public BitmapUtils configDownloader(Downloader paramDownloader)
  {
    globalConfig.setDownloader(paramDownloader);
    return this;
  }
  
  public BitmapUtils configMemoryCacheEnabled(boolean paramBoolean)
  {
    globalConfig.setMemoryCacheEnabled(paramBoolean);
    return this;
  }
  
  public BitmapUtils configThreadPoolSize(int paramInt)
  {
    globalConfig.setThreadPoolSize(paramInt);
    return this;
  }
  
  public <T extends View> void display(T paramT, String paramString)
  {
    display(paramT, paramString, null, null);
  }
  
  public <T extends View> void display(T paramT, String paramString, BitmapDisplayConfig paramBitmapDisplayConfig)
  {
    display(paramT, paramString, paramBitmapDisplayConfig, null);
  }
  
  public <T extends View> void display(T paramT, String paramString, BitmapDisplayConfig paramBitmapDisplayConfig, BitmapLoadCallBack<T> paramBitmapLoadCallBack)
  {
    if (paramT == null) {}
    Object localObject;
    do
    {
      return;
      localObject = paramBitmapLoadCallBack;
      if (paramBitmapLoadCallBack == null) {
        localObject = new DefaultBitmapLoadCallBack();
      }
      if (paramBitmapDisplayConfig != null)
      {
        paramBitmapLoadCallBack = paramBitmapDisplayConfig;
        if (paramBitmapDisplayConfig != defaultDisplayConfig) {}
      }
      else
      {
        paramBitmapLoadCallBack = defaultDisplayConfig.cloneNew();
      }
      paramBitmapDisplayConfig = paramBitmapLoadCallBack.getBitmapMaxSize();
      paramBitmapLoadCallBack.setBitmapMaxSize(BitmapCommonUtils.optimizeMaxSizeByView(paramT, paramBitmapDisplayConfig.getWidth(), paramBitmapDisplayConfig.getHeight()));
      paramT.clearAnimation();
      if (TextUtils.isEmpty(paramString))
      {
        ((BitmapLoadCallBack)localObject).onLoadFailed(paramT, paramString, paramBitmapLoadCallBack.getLoadFailedDrawable());
        return;
      }
      ((BitmapLoadCallBack)localObject).onPreLoad(paramT, paramString, paramBitmapLoadCallBack);
      paramBitmapDisplayConfig = globalConfig.getBitmapCache().getBitmapFromMemCache(paramString, paramBitmapLoadCallBack);
      if (paramBitmapDisplayConfig != null)
      {
        ((BitmapLoadCallBack)localObject).onLoadStarted(paramT, paramString, paramBitmapLoadCallBack);
        ((BitmapLoadCallBack)localObject).onLoadCompleted(paramT, paramString, paramBitmapDisplayConfig, paramBitmapLoadCallBack, BitmapLoadFrom.MEMORY_CACHE);
        return;
      }
    } while (bitmapLoadTaskExist(paramT, paramString, (BitmapLoadCallBack)localObject));
    BitmapLoadTask localBitmapLoadTask = new BitmapLoadTask(paramT, paramString, paramBitmapLoadCallBack, (BitmapLoadCallBack)localObject);
    paramBitmapDisplayConfig = globalConfig.getBitmapLoadExecutor();
    paramString = getBitmapFileFromDiskCache(paramString);
    if ((paramString != null) && (paramString.exists())) {}
    for (int i = 1;; i = 0)
    {
      paramString = paramBitmapDisplayConfig;
      if (i != 0)
      {
        paramString = paramBitmapDisplayConfig;
        if (paramBitmapDisplayConfig.isBusy()) {
          paramString = globalConfig.getDiskCacheExecutor();
        }
      }
      ((BitmapLoadCallBack)localObject).setDrawable(paramT, new AsyncDrawable(paramBitmapLoadCallBack.getLoadingDrawable(), localBitmapLoadTask));
      localBitmapLoadTask.setPriority(paramBitmapLoadCallBack.getPriority());
      localBitmapLoadTask.executeOnExecutor(paramString, new Object[0]);
      return;
    }
  }
  
  public <T extends View> void display(T paramT, String paramString, BitmapLoadCallBack<T> paramBitmapLoadCallBack)
  {
    display(paramT, paramString, null, paramBitmapLoadCallBack);
  }
  
  public void flushCache()
  {
    globalConfig.flushCache();
  }
  
  public File getBitmapFileFromDiskCache(String paramString)
  {
    return globalConfig.getBitmapCache().getBitmapFileFromDiskCache(paramString);
  }
  
  public Bitmap getBitmapFromMemCache(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig)
  {
    BitmapDisplayConfig localBitmapDisplayConfig = paramBitmapDisplayConfig;
    if (paramBitmapDisplayConfig == null) {
      localBitmapDisplayConfig = defaultDisplayConfig;
    }
    return globalConfig.getBitmapCache().getBitmapFromMemCache(paramString, localBitmapDisplayConfig);
  }
  
  public boolean isCancelled()
  {
    return cancelAllTask;
  }
  
  public boolean isPaused()
  {
    return pauseTask;
  }
  
  public void pause()
  {
    pauseTask = true;
    flushCache();
  }
  
  public void resume()
  {
    pauseTask = false;
    synchronized (pauseTaskLock)
    {
      pauseTaskLock.notifyAll();
      return;
    }
  }
  
  public boolean supportCancel()
  {
    return true;
  }
  
  public boolean supportPause()
  {
    return true;
  }
  
  public boolean supportResume()
  {
    return true;
  }
  
  public class BitmapLoadTask<T extends View>
    extends PriorityAsyncTask<Object, Object, Bitmap>
  {
    private static final int PROGRESS_LOADING = 1;
    private static final int PROGRESS_LOAD_STARTED = 0;
    private final BitmapLoadCallBack<T> callBack;
    private final WeakReference<T> containerReference;
    private final BitmapDisplayConfig displayConfig;
    private BitmapLoadFrom from = BitmapLoadFrom.DISK_CACHE;
    private final String uri;
    
    public BitmapLoadTask(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig, BitmapLoadCallBack<T> paramBitmapLoadCallBack)
    {
      Object localObject;
      if ((paramString == null) || (paramBitmapDisplayConfig == null) || (paramBitmapLoadCallBack == null) || (localObject == null)) {
        throw new IllegalArgumentException("args may not be null");
      }
      containerReference = new WeakReference(paramString);
      callBack = localObject;
      uri = paramBitmapDisplayConfig;
      displayConfig = paramBitmapLoadCallBack;
    }
    
    protected Bitmap doInBackground(Object... arg1)
    {
      for (;;)
      {
        boolean bool;
        synchronized (pauseTaskLock)
        {
          if ((!pauseTask) || (isCancelled()))
          {
            Object localObject1 = null;
            ??? = (Object[])localObject1;
            if (!isCancelled())
            {
              ??? = (Object[])localObject1;
              if (getTargetContainer() != null)
              {
                publishProgress(new Object[] { Integer.valueOf(0) });
                ??? = globalConfig.getBitmapCache().getBitmapFromDiskCache(uri, displayConfig);
              }
            }
            localObject1 = ???;
            if (??? == null)
            {
              localObject1 = ???;
              if (!isCancelled())
              {
                localObject1 = ???;
                if (getTargetContainer() != null)
                {
                  localObject1 = globalConfig.getBitmapCache().downloadBitmap(uri, displayConfig, this);
                  from = BitmapLoadFrom.URI;
                }
              }
            }
            return localObject1;
          }
        }
      }
    }
    
    public T getTargetContainer()
    {
      View localView = (View)containerReference.get();
      if (this == BitmapUtils.getBitmapTaskFromContainer(localView, callBack)) {
        return localView;
      }
      return null;
    }
    
    protected void onCancelled(Bitmap arg1)
    {
      synchronized (pauseTaskLock)
      {
        pauseTaskLock.notifyAll();
        return;
      }
    }
    
    protected void onPostExecute(Bitmap paramBitmap)
    {
      View localView = getTargetContainer();
      if (localView != null)
      {
        if (paramBitmap != null) {
          callBack.onLoadCompleted(localView, uri, paramBitmap, displayConfig, from);
        }
      }
      else {
        return;
      }
      callBack.onLoadFailed(localView, uri, displayConfig.getLoadFailedDrawable());
    }
    
    protected void onProgressUpdate(Object... paramVarArgs)
    {
      if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {}
      View localView;
      do
      {
        do
        {
          return;
          localView = getTargetContainer();
        } while (localView == null);
        switch (((Integer)paramVarArgs[0]).intValue())
        {
        default: 
          return;
        case 0: 
          callBack.onLoadStarted(localView, uri, displayConfig);
          return;
        }
      } while (paramVarArgs.length != 3);
      callBack.onLoading(localView, uri, displayConfig, ((Long)paramVarArgs[1]).longValue(), ((Long)paramVarArgs[2]).longValue());
    }
    
    public void updateProgress(long paramLong1, long paramLong2)
    {
      publishProgress(new Object[] { Integer.valueOf(1), Long.valueOf(paramLong1), Long.valueOf(paramLong2) });
    }
  }
}
