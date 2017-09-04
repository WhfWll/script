package com.google.common.collect;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

@Beta
public final class EvictionListeners
{
  static
  {
    JniLib.a(EvictionListeners.class, 496);
  }
  
  private EvictionListeners() {}
  
  public static native <K, V> MapEvictionListener<K, V> asynchronous(MapEvictionListener<K, V> paramMapEvictionListener, Executor paramExecutor);
}
