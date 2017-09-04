package com.google.common.io;

import com.bangcle.andjni.JniLib;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;

class MultiReader
  extends Reader
{
  private Reader current;
  private final Iterator<? extends InputSupplier<? extends Reader>> it;
  
  static
  {
    JniLib.a(MultiReader.class, 899);
  }
  
  MultiReader(Iterator<? extends InputSupplier<? extends Reader>> paramIterator)
    throws IOException
  {
    it = paramIterator;
    advance();
  }
  
  private native void advance()
    throws IOException;
  
  public native void close()
    throws IOException;
  
  public native int read(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException;
  
  public native boolean ready()
    throws IOException;
  
  public native long skip(long paramLong)
    throws IOException;
}
