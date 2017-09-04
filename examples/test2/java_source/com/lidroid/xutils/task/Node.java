package com.lidroid.xutils.task;

class Node<T>
{
  Node<T> next;
  private PriorityObject<?> value;
  private boolean valueAsT = false;
  
  Node(T paramT)
  {
    setValue(paramT);
  }
  
  public Priority getPriority()
  {
    return value.priority;
  }
  
  public T getValue()
  {
    if (value == null) {
      return null;
    }
    if (valueAsT) {
      return value;
    }
    return value.obj;
  }
  
  public void setValue(T paramT)
  {
    if (paramT == null)
    {
      value = null;
      return;
    }
    if ((paramT instanceof PriorityObject))
    {
      value = ((PriorityObject)paramT);
      valueAsT = true;
      return;
    }
    value = new PriorityObject(Priority.DEFAULT, paramT);
  }
}
