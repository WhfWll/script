package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;

@GwtCompatible(serializable=true)
final class EmptyImmutableMultiset
  extends ImmutableMultiset<Object>
{
  static final EmptyImmutableMultiset INSTANCE = new EmptyImmutableMultiset();
  private static final long serialVersionUID = 0L;
  
  static
  {
    JniLib.a(EmptyImmutableMultiset.class, 486);
  }
  
  private EmptyImmutableMultiset()
  {
    super(ImmutableMap.of(), 0);
  }
  
  native Object readResolve();
}
