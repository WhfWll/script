package com.alipay.b.a.a.b;

import com.bangcle.andjni.JniLib;
import java.io.File;
import java.io.FileFilter;

final class c
  implements FileFilter
{
  static
  {
    JniLib.a(c.class, 95);
  }
  
  c(b paramB) {}
  
  public final native boolean accept(File paramFile);
}
