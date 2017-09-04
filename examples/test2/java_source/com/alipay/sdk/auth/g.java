package com.alipay.sdk.auth;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.bangcle.andjni.JniLib;

final class g
  implements DialogInterface.OnClickListener
{
  static
  {
    JniLib.a(g.class, 139);
  }
  
  g(e paramE) {}
  
  public final native void onClick(DialogInterface paramDialogInterface, int paramInt);
}
