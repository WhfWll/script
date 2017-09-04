package com.bangcle.everisk.utils_l;

import java.io.File;
import java.io.IOException;

public final class c
{
  private b W;
  private d X;
  
  public c(File paramFile)
  {
    try
    {
      W = new b(paramFile, "r");
      X = new d(W);
      paramFile.getName();
      return;
    }
    finally
    {
      if (X == null) {
        D();
      }
    }
  }
  
  private void D()
  {
    try
    {
      if (W != null)
      {
        W.close();
        W = null;
      }
      return;
    }
    catch (IOException localIOException) {}
  }
  
  static long a(b paramB)
  {
    long l = paramB.B();
    if (l < 0L) {
      throw new IOException("Maximal file offset is " + Long.toHexString(Long.MAX_VALUE) + " given offset is " + Long.toHexString(l));
    }
    return l;
  }
  
  public final d E()
  {
    return X;
  }
  
  protected final void finalize()
  {
    try
    {
      D();
      return;
    }
    finally
    {
      super.finalize();
    }
  }
}
