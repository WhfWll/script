package com.alipay.sdk.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.bangcle.andjni.JniLib;

final class e
  implements DialogInterface.OnClickListener
{
  static
  {
    JniLib.a(e.class, 120);
  }
  
  e(c paramC) {}
  
  public final native void onClick(DialogInterface paramDialogInterface, int paramInt);
}
