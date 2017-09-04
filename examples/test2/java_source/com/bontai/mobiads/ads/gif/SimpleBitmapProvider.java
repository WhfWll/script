package com.bontai.mobiads.ads.gif;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.annotation.NonNull;
import com.bangcle.andjni.JniLib;

final class SimpleBitmapProvider
  implements GifDecoder.BitmapProvider
{
  static
  {
    JniLib.a(SimpleBitmapProvider.class, 249);
  }
  
  SimpleBitmapProvider() {}
  
  @NonNull
  public native Bitmap obtain(int paramInt1, int paramInt2, Bitmap.Config paramConfig);
  
  public native byte[] obtainByteArray(int paramInt);
  
  public native int[] obtainIntArray(int paramInt);
  
  public native void release(Bitmap paramBitmap);
  
  public native void release(byte[] paramArrayOfByte);
  
  public native void release(int[] paramArrayOfInt);
}
