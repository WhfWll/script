package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

@GwtCompatible(emulated=true, serializable=true)
final class ImmutableAsList<E>
  extends RegularImmutableList<E>
{
  private final transient ImmutableCollection<E> collection;
  
  static
  {
    JniLib.a(ImmutableAsList.class, 509);
  }
  
  ImmutableAsList(Object[] paramArrayOfObject, ImmutableCollection<E> paramImmutableCollection)
  {
    super(paramArrayOfObject, 0, paramArrayOfObject.length);
    collection = paramImmutableCollection;
  }
  
  private native void readObject(ObjectInputStream paramObjectInputStream)
    throws InvalidObjectException;
  
  public native boolean contains(Object paramObject);
  
  native Object writeReplace();
  
  static class SerializedForm
    implements Serializable
  {
    private static final long serialVersionUID = 0L;
    final ImmutableCollection<?> collection;
    
    static
    {
      JniLib.a(SerializedForm.class, 507);
    }
    
    SerializedForm(ImmutableCollection<?> paramImmutableCollection)
    {
      collection = paramImmutableCollection;
    }
    
    native Object readResolve();
  }
}
