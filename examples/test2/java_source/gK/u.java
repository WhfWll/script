package gK;

final class u
{
  static t a;
  static long b;
  
  private u() {}
  
  static t a()
  {
    try
    {
      if (a != null)
      {
        t localT = a;
        a = f;
        f = null;
        b -= 8192L;
        return localT;
      }
      return new t();
    }
    finally {}
  }
  
  static void a(t paramT)
  {
    if ((f != null) || (g != null)) {
      throw new IllegalArgumentException();
    }
    if (d) {
      return;
    }
    try
    {
      if (b + 8192L > 65536L) {
        return;
      }
    }
    finally {}
    b += 8192L;
    f = a;
    c = 0;
    b = 0;
    a = paramT;
  }
}
