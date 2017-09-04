package com.lidroid.xutils.task;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class PriorityExecutor
  implements Executor
{
  private static final int CORE_POOL_SIZE = 5;
  private static final int KEEP_ALIVE = 1;
  private static final int MAXIMUM_POOL_SIZE = 256;
  private static final ThreadFactory sThreadFactory = new ThreadFactory()
  {
    private final AtomicInteger mCount = new AtomicInteger(1);
    
    public Thread newThread(Runnable paramAnonymousRunnable)
    {
      return new Thread(paramAnonymousRunnable, "PriorityExecutor #" + mCount.getAndIncrement());
    }
  };
  private final BlockingQueue<Runnable> mPoolWorkQueue = new PriorityObjectBlockingQueue();
  private final ThreadPoolExecutor mThreadPoolExecutor;
  
  public PriorityExecutor()
  {
    this(5);
  }
  
  public PriorityExecutor(int paramInt)
  {
    mThreadPoolExecutor = new ThreadPoolExecutor(paramInt, 256, 1L, TimeUnit.SECONDS, mPoolWorkQueue, sThreadFactory);
  }
  
  public void execute(Runnable paramRunnable)
  {
    mThreadPoolExecutor.execute(paramRunnable);
  }
  
  public int getPoolSize()
  {
    return mThreadPoolExecutor.getCorePoolSize();
  }
  
  public boolean isBusy()
  {
    return mThreadPoolExecutor.getActiveCount() >= mThreadPoolExecutor.getCorePoolSize();
  }
  
  public void setPoolSize(int paramInt)
  {
    if (paramInt > 0) {
      mThreadPoolExecutor.setCorePoolSize(paramInt);
    }
  }
}
