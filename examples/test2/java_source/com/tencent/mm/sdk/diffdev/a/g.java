package com.tencent.mm.sdk.diffdev.a;

public enum g
{
  private int code;
  
  private g(int paramInt)
  {
    code = paramInt;
  }
  
  public final int getCode()
  {
    return code;
  }
  
  public final String toString()
  {
    return "UUIDStatusCode:" + code;
  }
}
