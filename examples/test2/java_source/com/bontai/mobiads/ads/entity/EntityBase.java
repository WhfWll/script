package com.bontai.mobiads.ads.entity;

public abstract class EntityBase
{
  private int id;
  
  public EntityBase() {}
  
  public int getId()
  {
    return id;
  }
  
  public void setId(int paramInt)
  {
    id = paramInt;
  }
}
