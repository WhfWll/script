package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;

@GwtCompatible(serializable=true)
class EmptyImmutableSetMultimap
  extends ImmutableSetMultimap<Object, Object>
{
  static final EmptyImmutableSetMultimap INSTANCE = new EmptyImmutableSetMultimap();
  private static final long serialVersionUID = 0L;
  
  static
  {
    JniLib.a(EmptyImmutableSetMultimap.class, 489);
  }
  
  private EmptyImmutableSetMultimap()
  {
    super(ImmutableMap.of(), 0, null);
  }
  
  private native Object readResolve();
}
