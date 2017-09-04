package com.google.common.util.concurrent;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import java.util.concurrent.Executor;

@Beta
public abstract class AbstractExecutionThreadService
  implements Service
{
  private final Service delegate = new AbstractService()
  {
    static
    {
      JniLib.a(1.class, 930);
    }
    
    protected final native void doStart();
    
    protected native void doStop();
  };
  
  public AbstractExecutionThreadService() {}
  
  private String getServiceName()
  {
    return getClass().getSimpleName();
  }
  
  protected Executor executor()
  {
    new Executor()
    {
      static
      {
        JniLib.a(2.class, 931);
      }
      
      public native void execute(Runnable paramAnonymousRunnable);
    };
  }
  
  public final boolean isRunning()
  {
    return delegate.isRunning();
  }
  
  protected abstract void run()
    throws Exception;
  
  protected void shutDown()
    throws Exception
  {}
  
  public final ListenableFuture<Service.State> start()
  {
    return delegate.start();
  }
  
  public final Service.State startAndWait()
  {
    return delegate.startAndWait();
  }
  
  protected void startUp()
    throws Exception
  {}
  
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
  
  protected void triggerShutdown() {}
}
