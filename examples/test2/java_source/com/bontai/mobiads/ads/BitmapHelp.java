package com.bontai.mobiads.ads;

import android.content.Context;
import com.bangcle.andjni.JniLib;
import com.lidroid.xutils.BitmapUtils;

public class BitmapHelp
{
  private static BitmapUtils bitmapUtils;
  
  static
  {
    JniLib.a(BitmapHelp.class, 227);
  }
  
  private BitmapHelp() {}
  
  public static native BitmapUtils getBitmapUtils(Context paramContext);
}
