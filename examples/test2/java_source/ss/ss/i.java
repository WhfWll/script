package ss.ss;

import java.util.LinkedHashSet;
import java.util.Set;
import ss.an;

public final class i
{
  private final Set<an> a = new LinkedHashSet();
  
  public i() {}
  
  public void a(an paramAn)
  {
    try
    {
      a.add(paramAn);
      return;
    }
    finally
    {
      paramAn = finally;
      throw paramAn;
    }
  }
  
  public void b(an paramAn)
  {
    try
    {
      a.remove(paramAn);
      return;
    }
    finally
    {
      paramAn = finally;
      throw paramAn;
    }
  }
  
  public boolean c(an paramAn)
  {
    try
    {
      boolean bool = a.contains(paramAn);
      return bool;
    }
    finally
    {
      paramAn = finally;
      throw paramAn;
    }
  }
}
