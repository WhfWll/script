package com.alipay.android.phone.mrpc.core;

import com.bangcle.andjni.JniLib;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

final class t
  extends FutureTask<ab>
{
  static
  {
    JniLib.a(t.class, 58);
  }
  
  t(s paramS, Callable paramCallable, x paramX)
  {
    super(paramCallable);
  }
  
  protected final native void done();
}
