package com.lidroid.xutils.task;

public class PriorityRunnable
  extends PriorityObject<Runnable>
  implements Runnable
{
  public PriorityRunnable(Priority paramPriority, Runnable paramRunnable)
  {
    super(paramPriority, paramRunnable);
  }
  
  public void run()
  {
    ((Runnable)obj).run();
  }
}
