package gK;

final class t
{
  final byte[] a;
  int b;
  int c;
  boolean d;
  boolean e;
  t f;
  t g;
  
  t()
  {
    a = new byte[' '];
    e = true;
    d = false;
  }
  
  t(t paramT)
  {
    this(a, b, c);
    d = true;
  }
  
  t(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a = paramArrayOfByte;
    b = paramInt1;
    c = paramInt2;
    e = false;
    d = true;
  }
  
  public t a()
  {
    if (f != this) {}
    for (t localT = f;; localT = null)
    {
      g.f = f;
      f.g = g;
      f = null;
      g = null;
      return localT;
    }
  }
  
  public t a(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > c - b)) {
      throw new IllegalArgumentException();
    }
    t localT = new t(this);
    c = (b + paramInt);
    b += paramInt;
    g.a(localT);
    return localT;
  }
  
  public t a(t paramT)
  {
    g = this;
    f = f;
    f.g = paramT;
    f = paramT;
    return paramT;
  }
  
  public void a(t paramT, int paramInt)
  {
    if (!e) {
      throw new IllegalArgumentException();
    }
    if (c + paramInt > 8192)
    {
      if (d) {
        throw new IllegalArgumentException();
      }
      if (c + paramInt - b > 8192) {
        throw new IllegalArgumentException();
      }
      System.arraycopy(a, b, a, 0, c - b);
      c -= b;
      b = 0;
    }
    System.arraycopy(a, b, a, c, paramInt);
    c += paramInt;
    b += paramInt;
  }
  
  public void b()
  {
    if (g == this) {
      throw new IllegalStateException();
    }
    if (!g.e) {}
    for (;;)
    {
      return;
      int j = c - b;
      int k = g.c;
      if (g.d) {}
      for (int i = 0; j <= i + (8192 - k); i = g.b)
      {
        a(g, j);
        a();
        u.a(this);
        return;
      }
    }
  }
}
