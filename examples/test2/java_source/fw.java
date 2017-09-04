import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

public abstract class fw
  extends fv
{
  protected Vector a = new Vector();
  
  protected fw() {}
  
  protected fw(fh paramFh)
  {
    int i = 0;
    while (i != a.size())
    {
      a.addElement(paramFh.a(i));
      i += 1;
    }
  }
  
  private static fg a(Enumeration paramEnumeration)
  {
    return (fg)paramEnumeration.nextElement();
  }
  
  public static fw a(Object paramObject)
  {
    for (;;)
    {
      if ((paramObject == null) || ((paramObject instanceof fw))) {
        return (fw)paramObject;
      }
      if (!(paramObject instanceof fx)) {
        break;
      }
      paramObject = ((fx)paramObject).b();
    }
    if ((paramObject instanceof byte[])) {
      try
      {
        paramObject = a(a((byte[])paramObject));
        return paramObject;
      }
      catch (IOException paramObject)
      {
        throw new IllegalArgumentException("failed to construct sequence from byte[]: " + paramObject.getMessage());
      }
    }
    if ((paramObject instanceof fg))
    {
      fv localFv = ((fg)paramObject).b();
      if ((localFv instanceof fw)) {
        return (fw)localFv;
      }
    }
    throw new IllegalArgumentException("unknown object in getInstance: " + paramObject.getClass().getName());
  }
  
  public Enumeration a()
  {
    return a.elements();
  }
  
  final boolean a()
  {
    return true;
  }
  
  final boolean a(fv paramFv)
  {
    if (!(paramFv instanceof fw)) {}
    do
    {
      return false;
      localObject1 = (fw)paramFv;
    } while (b() != ((fw)localObject1).b());
    paramFv = a();
    Object localObject1 = ((fw)localObject1).a();
    while (paramFv.hasMoreElements())
    {
      Object localObject3 = a(paramFv);
      Object localObject2 = a((Enumeration)localObject1);
      localObject3 = ((fg)localObject3).b();
      localObject2 = ((fg)localObject2).b();
      if ((localObject3 != localObject2) && (!((fv)localObject3).equals(localObject2))) {
        return false;
      }
    }
    return true;
  }
  
  public int b()
  {
    return a.size();
  }
  
  fv c()
  {
    hi localHi = new hi();
    a = a;
    return localHi;
  }
  
  fv d()
  {
    ht localHt = new ht();
    a = a;
    return localHt;
  }
  
  public int hashCode()
  {
    Enumeration localEnumeration = a();
    for (int i = b(); localEnumeration.hasMoreElements(); i = i * 17 ^ a(localEnumeration).hashCode()) {}
    return i;
  }
  
  public String toString()
  {
    return a.toString();
  }
}
