package com.worklight.androidgap.analytics;

import com.bangcle.andjni.JniLib;
import com.worklight.androidgap.WLDroidGap;

public class WLAnalytics
{
  private static final String LOG_TAG = WLAnalytics.class.getName();
  private static final String TEALEAF_CLASS = "com.tl.uic.Tealeaf";
  
  static
  {
    JniLib.a(WLAnalytics.class, 1091);
  }
  
  public WLAnalytics() {}
  
  public static native void initializeTealeaf(WLDroidGap paramWLDroidGap);
}
