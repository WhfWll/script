package com.lidroid.xutils.bitmap.factory;

import android.graphics.Bitmap;

public abstract interface BitmapFactory
{
  public abstract BitmapFactory cloneNew();
  
  public abstract Bitmap createBitmap(Bitmap paramBitmap);
}
