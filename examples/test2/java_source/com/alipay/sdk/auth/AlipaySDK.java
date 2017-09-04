package com.alipay.sdk.auth;

import android.app.Activity;
import com.bangcle.andjni.JniLib;

public class AlipaySDK
{
  static
  {
    JniLib.a(AlipaySDK.class, 129);
  }
  
  public AlipaySDK() {}
  
  public static native void auth(Activity paramActivity, APAuthInfo paramAPAuthInfo);
}
