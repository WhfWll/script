package com.tl.uic.model;

import java.io.Serializable;

public enum KeyboardStateType
  implements Serializable
{
  HIDDEN_FALSE(0),  HIDDEN_TRUE(1),  UNDEFINED(2);
  
  private int value;
  
  private KeyboardStateType(int paramInt)
  {
    value = paramInt;
  }
  
  public int getValue()
  {
    return value;
  }
}
