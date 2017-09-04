package com.alipay.sdk.auth;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.bangcle.andjni.JniLib;

final class f
  implements DialogInterface.OnClickListener
{
  static
  {
    JniLib.a(f.class, 138);
  }
  
  f(e paramE) {}
  
  public final native void onClick(DialogInterface paramDialogInterface, int paramInt);
}
