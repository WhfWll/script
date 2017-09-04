package com.google.common.base;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import java.io.Serializable;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

@GwtCompatible
public final class Suppliers
{
  static
  {
    JniLib.a(Suppliers.class, 377);
  }
  
  private Suppliers() {}
  
  public static native <F, T> Supplier<T> compose(Function<? super F, T> paramFunction, Supplier<F> paramSupplier);
  
  public static native <T> Supplier<T> memoize(Supplier<T> paramSupplier);
  
  public static native <T> Supplier<T> memoizeWithExpiration(Supplier<T> paramSupplier, long paramLong, TimeUnit paramTimeUnit);
  
  public static native <T> Supplier<T> ofInstance(@Nullable T paramT);
  
  @Beta
  public static native <T> Function<Supplier<T>, T> supplierFunction();
  
  public static native <T> Supplier<T> synchronizedSupplier(Supplier<T> paramSupplier);
  
  @VisibleForTesting
  static class ExpiringMemoizingSupplier<T>
    implements Supplier<T>, Serializable
  {
    private static final long serialVersionUID = 0L;
    final Supplier<T> delegate;
    final long durationNanos;
    volatile transient long expirationNanos;
    volatile transient T value;
    
    static
    {
      JniLib.a(ExpiringMemoizingSupplier.class, 372);
    }
    
    ExpiringMemoizingSupplier(Supplier<T> paramSupplier, long paramLong, TimeUnit paramTimeUnit)
    {
      delegate = ((Supplier)Preconditions.checkNotNull(paramSupplier));
      durationNanos = paramTimeUnit.toNanos(paramLong);
      if (paramLong > 0L) {}
      for (boolean bool = true;; bool = false)
      {
        Preconditions.checkArgument(bool);
        return;
      }
    }
    
    public native T get();
  }
  
  @VisibleForTesting
  static class MemoizingSupplier<T>
    implements Supplier<T>, Serializable
  {
    private static final long serialVersionUID = 0L;
    final Supplier<T> delegate;
    volatile transient boolean initialized;
    transient T value;
    
    static
    {
      JniLib.a(MemoizingSupplier.class, 373);
    }
    
    MemoizingSupplier(Supplier<T> paramSupplier)
    {
      delegate = paramSupplier;
    }
    
    public native T get();
  }
  
  private static class SupplierComposition<F, T>
    implements Supplier<T>, Serializable
  {
    private static final long serialVersionUID = 0L;
    final Function<? super F, T> function;
    final Supplier<F> supplier;
    
    static
    {
      JniLib.a(SupplierComposition.class, 374);
    }
    
    SupplierComposition(Function<? super F, T> paramFunction, Supplier<F> paramSupplier)
    {
      function = paramFunction;
      supplier = paramSupplier;
    }
    
    public native T get();
  }
  
  private static enum SupplierFunction
    implements Function<Supplier<?>, Object>
  {
    INSTANCE;
    
    private SupplierFunction() {}
    
    public Object apply(Supplier<?> paramSupplier)
    {
      return paramSupplier.get();
    }
  }
  
  private static class SupplierOfInstance<T>
    implements Supplier<T>, Serializable
  {
    private static final long serialVersionUID = 0L;
    final T instance;
    
    static
    {
      JniLib.a(SupplierOfInstance.class, 375);
    }
    
    SupplierOfInstance(@Nullable T paramT)
    {
      instance = paramT;
    }
    
    public native T get();
  }
  
  private static class ThreadSafeSupplier<T>
    implements Supplier<T>, Serializable
  {
    private static final long serialVersionUID = 0L;
    final Supplier<T> delegate;
    
    static
    {
      JniLib.a(ThreadSafeSupplier.class, 376);
    }
    
    ThreadSafeSupplier(Supplier<T> paramSupplier)
    {
      delegate = paramSupplier;
    }
    
    public native T get();
  }
}
