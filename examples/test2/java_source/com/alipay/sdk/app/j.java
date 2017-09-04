package com.alipay.sdk.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.bangcle.andjni.JniLib;

final class j
  implements DialogInterface.OnClickListener
{
  static
  {
    JniLib.a(j.class, 125);
  }
  
  j(h paramH) {}
  
  public final native void onClick(DialogInterface paramDialogInterface, int paramInt);
}
