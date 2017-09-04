package com.alipay.sdk.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.bangcle.andjni.JniLib;

final class i
  implements DialogInterface.OnClickListener
{
  static
  {
    JniLib.a(i.class, 124);
  }
  
  i(h paramH) {}
  
  public final native void onClick(DialogInterface paramDialogInterface, int paramInt);
}
