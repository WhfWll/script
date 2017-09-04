package com.lidroid.xutils.bitmap.core;

public class BitmapSize
{
  public static final BitmapSize ZERO = new BitmapSize(0, 0);
  private final int height;
  private final int width;
  
  public BitmapSize(int paramInt1, int paramInt2)
  {
    width = paramInt1;
    height = paramInt2;
  }
  
  public int getHeight()
  {
    return height;
  }
  
  public int getWidth()
  {
    return width;
  }
  
  public BitmapSize scale(float paramFloat)
  {
    return new BitmapSize((int)(width * paramFloat), (int)(height * paramFloat));
  }
  
  public BitmapSize scaleDown(int paramInt)
  {
    return new BitmapSize(width / paramInt, height / paramInt);
  }
  
  public String toString()
  {
    return "_" + width + "_" + height;
  }
}
