package com.tl.uic.model;

import java.io.Serializable;

public enum ScreenviewType
  implements Serializable
{
  LOAD(0),  UNLOAD(1);
  
  private int value;
  
  private ScreenviewType(int paramInt)
  {
    value = paramInt;
  }
  
  public int getValue()
  {
    return value;
  }
}
