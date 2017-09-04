package com.lidroid.xutils.task;

public class PriorityObject<E>
{
  public final E obj;
  public final Priority priority;
  
  public PriorityObject(Priority paramPriority, E paramE)
  {
    Priority localPriority = paramPriority;
    if (paramPriority == null) {
      localPriority = Priority.DEFAULT;
    }
    priority = localPriority;
    obj = paramE;
  }
}
