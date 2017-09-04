public final class cp<K, V>
{
  public K a;
  public V b;
  
  public cp() {}
  
  public cp(K paramK, V paramV)
  {
    a = paramK;
    b = paramV;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (cp)paramObject;
      if (a == null) {
        break;
      }
    } while (a.equals(a));
    for (;;)
    {
      return false;
      if (a == null) {
        break;
      }
    }
  }
  
  public final int hashCode()
  {
    if (a != null) {
      return a.hashCode();
    }
    return 0;
  }
  
  public final String toString()
  {
    return "{" + a + "," + b + "}";
  }
}
