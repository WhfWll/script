package com.bangcle.everisk.utils_l;

import com.bangcle.everisk.shell.LibProc;

final class a
{
  public int T = 0;
  byte[] U = null;
  
  a() {}
  
  public final a b(Exception paramException)
  {
    if ((paramException != null) && (LibProc.z)) {
      LibProc.a(paramException);
    }
    T = 2;
    return this;
  }
  
  public final a c(Exception paramException)
  {
    if ((paramException != null) && (LibProc.z)) {
      LibProc.a(paramException);
    }
    T = 0;
    return this;
  }
  
  public final boolean z()
  {
    return T == 0;
  }
}
