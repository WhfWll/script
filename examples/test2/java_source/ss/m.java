package ss;

class m
  implements Runnable
{
  m(l paramL) {}
  
  public void run()
  {
    long l1;
    do
    {
      l1 = a.a(System.nanoTime());
      if (l1 == -1L) {
        return;
      }
    } while (l1 <= 0L);
    long l2 = l1 / 1000000L;
    try
    {
      synchronized (a)
      {
        a.wait(l2, (int)(l1 - l2 * 1000000L));
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
}
