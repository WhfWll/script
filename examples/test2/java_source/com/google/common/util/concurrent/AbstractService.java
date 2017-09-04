package com.google.common.util.concurrent;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import com.google.common.base.Throwables;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;

@Beta
public abstract class AbstractService
  implements Service
{
  private final ReentrantLock lock = new ReentrantLock();
  private final Transition shutdown = new Transition(null);
  private boolean shutdownWhenStartupFinishes = false;
  private final Transition startup = new Transition(null);
  private Service.State state = Service.State.NEW;
  
  public AbstractService() {}
  
  protected abstract void doStart();
  
  protected abstract void doStop();
  
  public final boolean isRunning()
  {
    return state() == Service.State.RUNNING;
  }
  
  /* Error */
  protected final void notifyFailed(Throwable paramThrowable)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 65	com/google/common/base/Preconditions:checkNotNull	(Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: aload_0
    //   6: getfield 30	com/google/common/util/concurrent/AbstractService:lock	Ljava/util/concurrent/locks/ReentrantLock;
    //   9: invokevirtual 67	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   12: aload_0
    //   13: getfield 44	com/google/common/util/concurrent/AbstractService:state	Lcom/google/common/util/concurrent/Service$State;
    //   16: getstatic 70	com/google/common/util/concurrent/Service$State:STARTING	Lcom/google/common/util/concurrent/Service$State;
    //   19: if_acmpne +45 -> 64
    //   22: aload_0
    //   23: getfield 35	com/google/common/util/concurrent/AbstractService:startup	Lcom/google/common/util/concurrent/AbstractService$Transition;
    //   26: aload_1
    //   27: invokevirtual 74	com/google/common/util/concurrent/AbstractService$Transition:setException	(Ljava/lang/Throwable;)Z
    //   30: pop
    //   31: aload_0
    //   32: getfield 37	com/google/common/util/concurrent/AbstractService:shutdown	Lcom/google/common/util/concurrent/AbstractService$Transition;
    //   35: new 76	java/lang/Exception
    //   38: dup
    //   39: ldc 78
    //   41: aload_1
    //   42: invokespecial 81	java/lang/Exception:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   45: invokevirtual 74	com/google/common/util/concurrent/AbstractService$Transition:setException	(Ljava/lang/Throwable;)Z
    //   48: pop
    //   49: aload_0
    //   50: getstatic 84	com/google/common/util/concurrent/Service$State:FAILED	Lcom/google/common/util/concurrent/Service$State;
    //   53: putfield 44	com/google/common/util/concurrent/AbstractService:state	Lcom/google/common/util/concurrent/Service$State;
    //   56: aload_0
    //   57: getfield 30	com/google/common/util/concurrent/AbstractService:lock	Ljava/util/concurrent/locks/ReentrantLock;
    //   60: invokevirtual 87	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   63: return
    //   64: aload_0
    //   65: getfield 44	com/google/common/util/concurrent/AbstractService:state	Lcom/google/common/util/concurrent/Service$State;
    //   68: getstatic 90	com/google/common/util/concurrent/Service$State:STOPPING	Lcom/google/common/util/concurrent/Service$State;
    //   71: if_acmpne -22 -> 49
    //   74: aload_0
    //   75: getfield 37	com/google/common/util/concurrent/AbstractService:shutdown	Lcom/google/common/util/concurrent/AbstractService$Transition;
    //   78: aload_1
    //   79: invokevirtual 74	com/google/common/util/concurrent/AbstractService$Transition:setException	(Ljava/lang/Throwable;)Z
    //   82: pop
    //   83: goto -34 -> 49
    //   86: astore_1
    //   87: aload_0
    //   88: getfield 30	com/google/common/util/concurrent/AbstractService:lock	Ljava/util/concurrent/locks/ReentrantLock;
    //   91: invokevirtual 87	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   94: aload_1
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	AbstractService
    //   0	96	1	paramThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   12	49	86	finally
    //   49	56	86	finally
    //   64	83	86	finally
  }
  
  protected final void notifyStarted()
  {
    lock.lock();
    try
    {
      if (state != Service.State.STARTING)
      {
        IllegalStateException localIllegalStateException = new IllegalStateException("Cannot notifyStarted() when the service is " + state);
        notifyFailed(localIllegalStateException);
        throw localIllegalStateException;
      }
    }
    finally
    {
      lock.unlock();
    }
    state = Service.State.RUNNING;
    if (shutdownWhenStartupFinishes) {
      stop();
    }
    for (;;)
    {
      lock.unlock();
      return;
      startup.set(Service.State.RUNNING);
    }
  }
  
  protected final void notifyStopped()
  {
    lock.lock();
    try
    {
      if ((state != Service.State.STOPPING) && (state != Service.State.RUNNING))
      {
        IllegalStateException localIllegalStateException = new IllegalStateException("Cannot notifyStopped() when the service is " + state);
        notifyFailed(localIllegalStateException);
        throw localIllegalStateException;
      }
    }
    finally
    {
      lock.unlock();
    }
    state = Service.State.TERMINATED;
    shutdown.set(Service.State.TERMINATED);
    lock.unlock();
  }
  
  public final ListenableFuture<Service.State> start()
  {
    lock.lock();
    try
    {
      if (state == Service.State.NEW)
      {
        state = Service.State.STARTING;
        doStart();
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        notifyFailed(localThrowable);
        lock.unlock();
      }
    }
    finally
    {
      lock.unlock();
    }
    return startup;
  }
  
  public Service.State startAndWait()
  {
    try
    {
      Service.State localState = (Service.State)Futures.makeUninterruptible(start()).get();
      return localState;
    }
    catch (ExecutionException localExecutionException)
    {
      throw Throwables.propagate(localExecutionException.getCause());
    }
  }
  
  public final Service.State state()
  {
    lock.lock();
    try
    {
      if ((shutdownWhenStartupFinishes) && (state == Service.State.STARTING))
      {
        localState = Service.State.STOPPING;
        return localState;
      }
      Service.State localState = state;
      return localState;
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public final ListenableFuture<Service.State> stop()
  {
    lock.lock();
    try
    {
      if (state == Service.State.NEW)
      {
        state = Service.State.TERMINATED;
        startup.set(Service.State.TERMINATED);
        shutdown.set(Service.State.TERMINATED);
      }
      for (;;)
      {
        return shutdown;
        if (state != Service.State.STARTING) {
          break;
        }
        shutdownWhenStartupFinishes = true;
        startup.set(Service.State.STOPPING);
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        notifyFailed(localThrowable);
        lock.unlock();
        continue;
        if (state == Service.State.RUNNING)
        {
          state = Service.State.STOPPING;
          doStop();
        }
      }
    }
    finally
    {
      lock.unlock();
    }
  }
  
  public Service.State stopAndWait()
  {
    try
    {
      Service.State localState = (Service.State)Futures.makeUninterruptible(stop()).get();
      return localState;
    }
    catch (ExecutionException localExecutionException)
    {
      throw Throwables.propagate(localExecutionException.getCause());
    }
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + " [" + state() + "]";
  }
  
  private class Transition
    extends AbstractListenableFuture<Service.State>
  {
    static
    {
      JniLib.a(Transition.class, 937);
    }
    
    private Transition() {}
    
    public native Service.State get(long paramLong, TimeUnit paramTimeUnit)
      throws InterruptedException, TimeoutException, ExecutionException;
  }
}
