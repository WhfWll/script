package com.google.common.base.internal;

import com.bangcle.andjni.JniLib;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Finalizer
  extends Thread
{
  private static final String FINALIZABLE_REFERENCE = "com.google.common.base.FinalizableReference";
  private static final Field inheritableThreadLocals = getInheritableThreadLocalsField();
  private static final Logger logger;
  private final WeakReference<Class<?>> finalizableReferenceClassReference;
  private final PhantomReference<Object> frqReference;
  private final ReferenceQueue<Object> queue = new ReferenceQueue();
  
  static
  {
    JniLib.a(Finalizer.class, 379);
    logger = Logger.getLogger(Finalizer.class.getName());
  }
  
  private Finalizer(Class<?> paramClass, Object paramObject)
  {
    super(Finalizer.class.getName());
    finalizableReferenceClassReference = new WeakReference(paramClass);
    frqReference = new PhantomReference(paramObject, queue);
    setDaemon(true);
    try
    {
      if (inheritableThreadLocals != null) {
        inheritableThreadLocals.set(this, null);
      }
      return;
    }
    catch (Throwable paramClass)
    {
      logger.log(Level.INFO, "Failed to clear thread local values inherited by reference finalizer thread.", paramClass);
    }
  }
  
  private native void cleanUp(Reference<?> paramReference)
    throws Finalizer.ShutDown;
  
  private native Method getFinalizeReferentMethod()
    throws Finalizer.ShutDown;
  
  public static native Field getInheritableThreadLocalsField();
  
  public static native ReferenceQueue<Object> startFinalizer(Class<?> paramClass, Object paramObject);
  
  public native void run();
  
  private static class ShutDown
    extends Exception
  {
    private ShutDown() {}
  }
}
