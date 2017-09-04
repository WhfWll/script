package com.google.common.io;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import java.io.Closeable;
import java.io.IOException;
import java.util.logging.Logger;
import javax.annotation.Nullable;

@Beta
public final class Closeables
{
  private static final Logger logger = Logger.getLogger(Closeables.class.getName());
  
  static
  {
    JniLib.a(Closeables.class, 882);
  }
  
  private Closeables() {}
  
  public static native void close(@Nullable Closeable paramCloseable, boolean paramBoolean)
    throws IOException;
  
  public static native void closeQuietly(@Nullable Closeable paramCloseable);
}
