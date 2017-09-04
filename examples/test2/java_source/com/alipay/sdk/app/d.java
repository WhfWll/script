package com.alipay.sdk.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.bangcle.andjni.JniLib;

final class d
  implements DialogInterface.OnClickListener
{
  static
  {
    JniLib.a(d.class, 119);
  }
  
  d(c paramC) {}
  
  public final native void onClick(DialogInterface paramDialogInterface, int paramInt);
}
