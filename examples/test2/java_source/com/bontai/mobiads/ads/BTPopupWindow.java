package com.bontai.mobiads.ads;

import android.view.View;
import android.widget.PopupWindow;
import com.bangcle.andjni.JniLib;

public class BTPopupWindow
  extends PopupWindow
{
  static
  {
    JniLib.a(BTPopupWindow.class, 226);
  }
  
  public BTPopupWindow(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(paramView, paramInt1, paramInt2, paramBoolean);
  }
  
  public native void btDismiss();
  
  public native void dismiss();
}
