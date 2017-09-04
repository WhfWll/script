package gK;

import java.io.EOFException;
import java.io.IOException;

final class s
  implements g
{
  public final e a = new e();
  public final w b;
  boolean c;
  
  s(w paramW)
  {
    if (paramW == null) {
      throw new IllegalArgumentException("source == null");
    }
    b = paramW;
  }
  
  public long a(byte paramByte)
    throws IOException
  {
    return a(paramByte, 0L);
  }
  
  public long a(byte paramByte, long paramLong)
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    long l;
    do
    {
      l = paramLong;
      if (paramLong < a.b) {
        break;
      }
    } while (b.a(a, 8192L) != -1L);
    return -1L;
    do
    {
      paramLong = a.a(paramByte, l);
      if (paramLong != -1L) {
        break;
      }
      l = a.b;
    } while (b.a(a, 8192L) != -1L);
    return -1L;
    return paramLong;
  }
  
  public long a(e paramE, long paramLong)
    throws IOException
  {
    if (paramE == null) {
      throw new IllegalArgumentException("sink == null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (c) {
      throw new IllegalStateException("closed");
    }
    if ((a.b == 0L) && (b.a(a, 8192L) == -1L)) {
      return -1L;
    }
    paramLong = Math.min(paramLong, a.b);
    return a.a(paramE, paramLong);
  }
  
  public x a()
  {
    return b.a();
  }
  
  public void a(long paramLong)
    throws IOException
  {
    if (!b(paramLong)) {
      throw new EOFException();
    }
  }
  
  public boolean b(long paramLong)
    throws IOException
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (c) {
      throw new IllegalStateException("closed");
    }
    while (a.b < paramLong) {
      if (b.a(a, 8192L) == -1L) {
        return false;
      }
    }
    return true;
  }
  
  public e c()
  {
    return a;
  }
  
  public h c(long paramLong)
    throws IOException
  {
    a(paramLong);
    return a.c(paramLong);
  }
  
  public void close()
    throws IOException
  {
    if (c) {
      return;
    }
    c = true;
    b.close();
    a.r();
  }
  
  public boolean f()
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    return (a.f()) && (b.a(a, 8192L) == -1L);
  }
  
  public byte[] f(long paramLong)
    throws IOException
  {
    a(paramLong);
    return a.f(paramLong);
  }
  
  public void g(long paramLong)
    throws IOException
  {
    if (c) {
      throw new IllegalStateException("closed");
    }
    do
    {
      long l = Math.min(paramLong, a.b());
      a.g(l);
      paramLong -= l;
      if (paramLong <= 0L) {
        break;
      }
    } while ((a.b != 0L) || (b.a(a, 8192L) != -1L));
    throw new EOFException();
  }
  
  public byte h()
    throws IOException
  {
    a(1L);
    return a.h();
  }
  
  public short i()
    throws IOException
  {
    a(2L);
    return a.i();
  }
  
  public int j()
    throws IOException
  {
    a(4L);
    return a.j();
  }
  
  public short k()
    throws IOException
  {
    a(2L);
    return a.k();
  }
  
  public int l()
    throws IOException
  {
    a(4L);
    return a.l();
  }
  
  public long m()
    throws IOException
  {
    a(1L);
    int i = 0;
    while (b(i + 1))
    {
      byte b1 = a.b(i);
      if (((b1 < 48) || (b1 > 57)) && ((b1 < 97) || (b1 > 102)) && ((b1 < 65) || (b1 > 70)))
      {
        if (i != 0) {
          break;
        }
        throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", new Object[] { Byte.valueOf(b1) }));
      }
      i += 1;
    }
    return a.m();
  }
  
  public String p()
    throws IOException
  {
    long l = a((byte)10);
    if (l == -1L)
    {
      e localE = new e();
      a.a(localE, 0L, Math.min(32L, a.b()));
      throw new EOFException("\\n not found: size=" + a.b() + " content=" + localE.n().d() + "...");
    }
    return a.e(l);
  }
  
  public byte[] q()
    throws IOException
  {
    a.a(b);
    return a.q();
  }
  
  public String toString()
  {
    return "buffer(" + b + ")";
  }
}
