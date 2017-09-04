package gK;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public final class m
  implements w
{
  private final g a;
  private final Inflater b;
  private int c;
  private boolean d;
  
  m(g paramG, Inflater paramInflater)
  {
    if (paramG == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramInflater == null) {
      throw new IllegalArgumentException("inflater == null");
    }
    a = paramG;
    b = paramInflater;
  }
  
  public m(w paramW, Inflater paramInflater)
  {
    this(n.a(paramW), paramInflater);
  }
  
  private void c()
    throws IOException
  {
    if (c == 0) {
      return;
    }
    int i = c - b.getRemaining();
    c -= i;
    a.g(i);
  }
  
  public long a(e paramE, long paramLong)
    throws IOException
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (d) {
      throw new IllegalStateException("closed");
    }
    if (paramLong == 0L) {
      return 0L;
    }
    for (;;)
    {
      boolean bool = b();
      try
      {
        t localT = paramE.e(1);
        int i = b.inflate(a, c, 8192 - c);
        if (i > 0)
        {
          c += i;
          b += i;
          return i;
        }
        if ((b.finished()) || (b.needsDictionary()))
        {
          c();
          if (b == c)
          {
            a = localT.a();
            u.a(localT);
          }
        }
        else
        {
          if (!bool) {
            continue;
          }
          throw new EOFException("source exhausted prematurely");
        }
      }
      catch (DataFormatException paramE)
      {
        throw new IOException(paramE);
      }
    }
    return -1L;
  }
  
  public x a()
  {
    return a.a();
  }
  
  public boolean b()
    throws IOException
  {
    if (!b.needsInput()) {
      return false;
    }
    c();
    if (b.getRemaining() != 0) {
      throw new IllegalStateException("?");
    }
    if (a.f()) {
      return true;
    }
    t localT = a.c().a;
    c = (c - b);
    b.setInput(a, b, c);
    return false;
  }
  
  public void close()
    throws IOException
  {
    if (d) {
      return;
    }
    b.end();
    d = true;
    a.close();
  }
}
