package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.LinkedHashMap;

@GwtCompatible(emulated=true, serializable=true)
public final class LinkedHashMultiset<E>
  extends AbstractMapBasedMultiset<E>
{
  @GwtIncompatible("not needed in emulated source")
  private static final long serialVersionUID = 0L;
  
  static
  {
    JniLib.a(LinkedHashMultiset.class, 604);
  }
  
  private LinkedHashMultiset()
  {
    super(new LinkedHashMap());
  }
  
  private LinkedHashMultiset(int paramInt)
  {
    super(new LinkedHashMap(Maps.capacity(paramInt)));
  }
  
  public static native <E> LinkedHashMultiset<E> create();
  
  public static native <E> LinkedHashMultiset<E> create(int paramInt);
  
  public static native <E> LinkedHashMultiset<E> create(Iterable<? extends E> paramIterable);
  
  @GwtIncompatible("java.io.ObjectInputStream")
  private native void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException;
  
  @GwtIncompatible("java.io.ObjectOutputStream")
  private native void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException;
}
