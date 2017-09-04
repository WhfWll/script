package com.tencent.wxop.stat.common;

import android.net.wifi.ScanResult;
import java.util.Comparator;

final class r
  implements Comparator<ScanResult>
{
  r() {}
  
  public final int a(ScanResult paramScanResult1, ScanResult paramScanResult2)
  {
    int i = Math.abs(level);
    int j = Math.abs(level);
    if (i > j) {
      return 1;
    }
    if (i == j) {
      return 0;
    }
    return -1;
  }
}
