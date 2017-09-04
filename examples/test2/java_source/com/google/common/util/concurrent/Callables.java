package com.google.common.util.concurrent;

import com.bangcle.andjni.JniLib;
import java.util.concurrent.Callable;
import javax.annotation.Nullable;

public final class Callables
{
  static
  {
    JniLib.a(Callables.class, 939);
  }
  
  private Callables() {}
  
  public static native <T> Callable<T> returning(@Nullable T paramT);
}
