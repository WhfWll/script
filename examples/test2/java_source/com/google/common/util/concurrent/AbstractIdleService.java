package com.google.common.util.concurrent;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import java.util.concurrent.Executor;

@Beta
public abstract class AbstractIdleService
  implements Service
{
  private final Service delegate = new AbstractService()
  {
    static
    {
      JniLib.a(1.class, 935);
    }
    
    protected final native void doStart();
    
    protected final native void doStop();
  };
  
  public AbstractIdleService() {}
  
  private String getServiceName()
  {
    return getClass().getSimpleName();
  }
  
  protected Executor executor(final Service.State paramState)
  {
    new Executor()
    {
      static
      {
        JniLib.a(2.class, 936);
      }
      
      public native void execute(Runnable paramAnonymousRunnable);
    };
  }
  
  public final boolean isRunning()
  {
    return delegate.isRunning();
  }
  
  protected abstract void shutDown()
    throws Exception;
  
  public final ListenableFuture<Service.State> start()
  {
    return delegate.start();
  }
  
  public final Service.State startAndWait()
  {
    return delegate.startAndWait();
  }
  
  protected abstract void startUp()
    throws Exception;
  
  public final Service.State state()
  {
    return delegate.state();
  }
  
  public final ListenableFuture<Service.State> stop()
  {
    return delegate.stop();
  }
  
  public final Service.State stopAndWait()
  {
    return delegate.stopAndWait();
  }
  
  public String toString()
  {
    return getServiceName() + " [" + state() + "]";
  }
}
