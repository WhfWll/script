package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.GwtCompatible;

@GwtCompatible
final class Hashing
{
  static
  {
    JniLib.a(Hashing.class, 506);
  }
  
  private Hashing() {}
  
  static native int smear(int paramInt);
}
