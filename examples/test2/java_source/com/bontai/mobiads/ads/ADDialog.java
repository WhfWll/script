package com.bontai.mobiads.ads;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.KeyEvent;
import com.bangcle.andjni.JniLib;

public class ADDialog
  extends Dialog
{
  private boolean backKeyEnabled = false;
  
  static
  {
    JniLib.a(ADDialog.class, 223);
  }
  
  public ADDialog(Context paramContext, int paramInt)
  {
    super(paramContext, 16973829);
    requestWindowFeature(1);
    setOwnerActivity((Activity)paramContext);
  }
  
  public native boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent);
  
  public native void setBackKeyEnabled(boolean paramBoolean);
}
