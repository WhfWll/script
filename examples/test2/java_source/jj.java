import java.util.Hashtable;

public final class jj
{
  public Hashtable a;
  
  public jj() {}
  
  public final jo a(String paramString)
    throws jp
  {
    return (jo)a.get(paramString);
  }
  
  public final void a()
    throws jp
  {
    a = new Hashtable();
  }
  
  public final void a(String paramString)
    throws jp
  {
    a.remove(paramString);
  }
  
  public final void a(String paramString, jo paramJo)
    throws jp
  {
    a.put(paramString, paramJo);
  }
  
  public final boolean a(String paramString)
    throws jp
  {
    return a.containsKey(paramString);
  }
}
