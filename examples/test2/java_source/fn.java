public abstract class fn
  extends fv
{
  public fn() {}
  
  final boolean a(fv paramFv)
  {
    return (paramFv instanceof fn);
  }
  
  public int hashCode()
  {
    return -1;
  }
  
  public String toString()
  {
    return "NULL";
  }
}
