package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.EnumMap;

@GwtCompatible(emulated=true)
public final class EnumMultiset<E extends Enum<E>>
  extends AbstractMapBasedMultiset<E>
{
  @GwtIncompatible("Not needed in emulated source")
  private static final long serialVersionUID = 0L;
  private transient Class<E> type;
  
  static
  {
    JniLib.a(EnumMultiset.class, 493);
  }
  
  private EnumMultiset(Class<E> paramClass)
  {
    super(WellBehavedMap.wrap(new EnumMap(paramClass)));
    type = paramClass;
  }
  
  public static native <E extends Enum<E>> EnumMultiset<E> create(Class<E> paramClass);
  
  public static native <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> paramIterable);
  
  @GwtIncompatible("java.io.ObjectInputStream")
  private native void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException;
  
  @GwtIncompatible("java.io.ObjectOutputStream")
  private native void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException;
}
