package ss;

import java.util.ArrayDeque;
import java.util.Deque;

public final class s
{
  private int a = 64;
  private int b = 5;
  private final Deque<Object> c = new ArrayDeque();
  private final Deque<Object> d = new ArrayDeque();
  private final Deque<af> e = new ArrayDeque();
  
  public s() {}
  
  void a(af paramAf)
  {
    try
    {
      e.add(paramAf);
      return;
    }
    finally
    {
      paramAf = finally;
      throw paramAf;
    }
  }
  
  void a(g paramG)
  {
    try
    {
      if (!e.remove(paramG)) {
        throw new AssertionError("Call wasn't in-flight!");
      }
    }
    finally {}
  }
}
