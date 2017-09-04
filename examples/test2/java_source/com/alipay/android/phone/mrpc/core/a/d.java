package com.alipay.android.phone.mrpc.core.a;

import com.bangcle.andjni.JniLib;
import java.lang.reflect.Type;

public final class d
  extends a
{
  static
  {
    JniLib.a(d.class, 36);
  }
  
  public d(Type paramType, byte[] paramArrayOfByte)
  {
    super(paramType, paramArrayOfByte);
  }
  
  public final native Object a();
}
