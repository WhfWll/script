package cn.domob.android.ads.b;

class k
  extends j
{
  private final int a;
  private final int b;
  
  k(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public static k a(int paramInt1, int paramInt2)
  {
    return new k(paramInt1, paramInt2);
  }
  
  public String a()
  {
    return "screenSize: { width: " + a + ", height: " + b + " }";
  }
}
