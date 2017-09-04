package com.ta.utdid2.android.utils;

import android.annotation.TargetApi;
import android.content.SharedPreferences.Editor;
import com.bangcle.andjni.JniLib;

public class SharedPreferenceHelper
{
  static
  {
    JniLib.a(SharedPreferenceHelper.class, 1003);
  }
  
  public SharedPreferenceHelper() {}
  
  @TargetApi(9)
  public static native void apply(SharedPreferences.Editor paramEditor);
}
