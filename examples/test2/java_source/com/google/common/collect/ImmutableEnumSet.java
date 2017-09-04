package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Collection;
import java.util.EnumSet;

@GwtCompatible(emulated=true, serializable=true)
final class ImmutableEnumSet<E extends Enum<E>>
  extends ImmutableSet<E>
{
  private final transient EnumSet<E> delegate;
  private transient int hashCode;
  
  static
  {
    JniLib.a(ImmutableEnumSet.class, 522);
  }
  
  ImmutableEnumSet(EnumSet<E> paramEnumSet)
  {
    delegate = paramEnumSet;
  }
  
  public native boolean contains(Object paramObject);
  
  public native boolean containsAll(Collection<?> paramCollection);
  
  public native boolean equals(Object paramObject);
  
  public native int hashCode();
  
  public native boolean isEmpty();
  
  native boolean isPartialView();
  
  public native UnmodifiableIterator<E> iterator();
  
  public native int size();
  
  public native Object[] toArray();
  
  public native <T> T[] toArray(T[] paramArrayOfT);
  
  public native String toString();
  
  native Object writeReplace();
  
  private static class EnumSerializedForm<E extends Enum<E>>
    implements Serializable
  {
    private static final long serialVersionUID = 0L;
    final EnumSet<E> delegate;
    
    static
    {
      JniLib.a(EnumSerializedForm.class, 521);
    }
    
    EnumSerializedForm(EnumSet<E> paramEnumSet)
    {
      delegate = paramEnumSet;
    }
    
    native Object readResolve();
  }
}
