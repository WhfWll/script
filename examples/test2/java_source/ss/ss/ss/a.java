package ss.ss.ss;

public enum a
{
  public final int s;
  public final int t;
  public final int u;
  
  private a(int paramInt1, int paramInt2, int paramInt3)
  {
    s = paramInt1;
    t = paramInt2;
    u = paramInt3;
  }
  
  public static a a(int paramInt)
  {
    a[] arrayOfA = values();
    int i2 = arrayOfA.length;
    int i1 = 0;
    while (i1 < i2)
    {
      a localA = arrayOfA[i1];
      if (t == paramInt) {
        return localA;
      }
      i1 += 1;
    }
    return null;
  }
  
  public static a b(int paramInt)
  {
    a[] arrayOfA = values();
    int i2 = arrayOfA.length;
    int i1 = 0;
    while (i1 < i2)
    {
      a localA = arrayOfA[i1];
      if (s == paramInt) {
        return localA;
      }
      i1 += 1;
    }
    return null;
  }
  
  public static a c(int paramInt)
  {
    a[] arrayOfA = values();
    int i2 = arrayOfA.length;
    int i1 = 0;
    while (i1 < i2)
    {
      a localA = arrayOfA[i1];
      if (u == paramInt) {
        return localA;
      }
      i1 += 1;
    }
    return null;
  }
}
