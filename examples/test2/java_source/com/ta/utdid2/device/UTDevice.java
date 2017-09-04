package com.ta.utdid2.device;

import android.content.Context;
import com.bangcle.andjni.JniLib;

public class UTDevice
{
  static
  {
    JniLib.a(UTDevice.class, 1015);
  }
  
  public UTDevice() {}
  
  public static native String getUtdid(Context paramContext);
}
