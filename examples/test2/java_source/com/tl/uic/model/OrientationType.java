package com.tl.uic.model;

import java.io.Serializable;

public enum OrientationType
  implements Serializable
{
  LANDSCAPE(0),  PORTRAIT(1),  SQUARE(2),  UNDEFINED(3);
  
  private int value;
  
  private OrientationType(int paramInt)
  {
    value = paramInt;
  }
  
  public int getValue()
  {
    return value;
  }
}
