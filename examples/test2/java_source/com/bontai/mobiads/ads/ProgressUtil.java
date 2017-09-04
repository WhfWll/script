package com.bontai.mobiads.ads;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import com.bangcle.andjni.JniLib;

public class ProgressUtil
{
  static
  {
    JniLib.a(ProgressUtil.class, 231);
  }
  
  public ProgressUtil() {}
  
  public static native ProgressDialog getProgressDialog(Activity paramActivity);
  
  public static native ProgressDialog getProgressDialogContext(Context paramContext);
}
