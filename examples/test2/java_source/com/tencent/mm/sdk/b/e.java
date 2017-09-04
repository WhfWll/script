package com.tencent.mm.sdk.b;

import android.os.Debug;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import junit.framework.Assert;

final class e
  extends Handler
  implements g.a
{
  private Looper aN = getLooper();
  private Handler.Callback aO;
  a aP;
  
  e(Looper paramLooper, a paramA)
  {
    super(paramLooper);
    aP = paramA;
  }
  
  e(a paramA)
  {
    aP = paramA;
  }
  
  public final void c(Runnable paramRunnable, g paramG)
  {
    if (aP != null) {
      aP.b(paramRunnable, paramG);
    }
  }
  
  public final void dispatchMessage(Message paramMessage)
  {
    if ((paramMessage.getCallback() != null) || (aO != null)) {
      super.dispatchMessage(paramMessage);
    }
    do
    {
      return;
      System.currentTimeMillis();
      Debug.threadCpuTimeNanos();
      handleMessage(paramMessage);
    } while (aP == null);
    aN.getThread();
    System.currentTimeMillis();
    Debug.threadCpuTimeNanos();
  }
  
  public final void handleMessage(Message paramMessage) {}
  
  public final boolean sendMessageAtTime(Message paramMessage, long paramLong)
  {
    if (paramMessage != null) {}
    Runnable localRunnable;
    for (boolean bool = true;; bool = false)
    {
      Assert.assertTrue("msg is null", bool);
      localRunnable = paramMessage.getCallback();
      if (localRunnable != null) {
        break;
      }
      return super.sendMessageAtTime(paramMessage, paramLong);
    }
    long l = paramLong - SystemClock.uptimeMillis();
    if (paramMessage.getTarget() == null) {}
    for (Object localObject = this;; localObject = paramMessage.getTarget())
    {
      localObject = new g(aN.getThread(), (Handler)localObject, localRunnable, obj, this);
      if (l > 0L) {
        aY = l;
      }
      Message localMessage = Message.obtain(paramMessage.getTarget(), (Runnable)localObject);
      what = what;
      arg1 = arg1;
      arg2 = arg2;
      obj = obj;
      replyTo = replyTo;
      localMessage.setData(paramMessage.getData());
      paramMessage.recycle();
      if (aP != null) {
        aP.a(localRunnable, (g)localObject);
      }
      bool = super.sendMessageAtTime(localMessage, paramLong);
      if ((!bool) && (aP != null)) {
        aP.b(localRunnable, (g)localObject);
      }
      return bool;
    }
  }
  
  public final String toString()
  {
    return "MMInnerHandler{listener = " + aP + "}";
  }
  
  public static abstract interface a
  {
    public abstract void a(Runnable paramRunnable, g paramG);
    
    public abstract void b(Runnable paramRunnable, g paramG);
  }
}
