package ss.ss.ss;

public enum s
{
  private s() {}
  
  public boolean a()
  {
    return (this == b) || (this == c);
  }
  
  public boolean b()
  {
    return this == a;
  }
  
  public boolean c()
  {
    return this == c;
  }
  
  public boolean d()
  {
    return this == b;
  }
}
