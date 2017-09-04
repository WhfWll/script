package com.alipay.sdk.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import com.bangcle.andjni.JniLib;

final class e
  implements DialogInterface.OnKeyListener
{
  static
  {
    JniLib.a(e.class, 186);
  }
  
  e() {}
  
  public final native boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent);
}
