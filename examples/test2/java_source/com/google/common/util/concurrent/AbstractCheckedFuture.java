package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Beta
public abstract class AbstractCheckedFuture<V, X extends Exception>
  implements CheckedFuture<V, X>
{
  protected final ListenableFuture<V> delegate;
  
  protected AbstractCheckedFuture(ListenableFuture<V> paramListenableFuture)
  {
    delegate = paramListenableFuture;
  }
  
  public void addListener(Runnable paramRunnable, Executor paramExecutor)
  {
    delegate.addListener(paramRunnable, paramExecutor);
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    return delegate.cancel(paramBoolean);
  }
  
  public V checkedGet()
    throws Exception
  {
    try
    {
      Object localObject = get();
      return localObject;
    }
    catch (InterruptedException localInterruptedException)
    {
      Thread.currentThread().interrupt();
      throw mapException(localInterruptedException);
    }
    catch (CancellationException localCancellationException)
    {
      throw mapException(localCancellationException);
    }
    catch (ExecutionException localExecutionException)
    {
      throw mapException(localExecutionException);
    }
  }
  
  public V checkedGet(long paramLong, TimeUnit paramTimeUnit)
    throws TimeoutException, Exception
  {
    try
    {
      paramTimeUnit = get(paramLong, paramTimeUnit);
      return paramTimeUnit;
    }
    catch (InterruptedException paramTimeUnit)
    {
      Thread.currentThread().interrupt();
      throw mapException(paramTimeUnit);
    }
    catch (CancellationException paramTimeUnit)
    {
      throw mapException(paramTimeUnit);
    }
    catch (ExecutionException paramTimeUnit)
    {
      throw mapException(paramTimeUnit);
    }
  }
  
  public V get()
    throws InterruptedException, ExecutionException
  {
    return delegate.get();
  }
  
  public V get(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    return delegate.get(paramLong, paramTimeUnit);
  }
  
  public boolean isCancelled()
  {
    return delegate.isCancelled();
  }
  
  public boolean isDone()
  {
    return delegate.isDone();
  }
  
  protected abstract X mapException(Exception paramException);
}
