package com.google.common.io;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import java.io.OutputStream;

@Beta
public final class NullOutputStream
  extends OutputStream
{
  static
  {
    JniLib.a(NullOutputStream.class, 900);
  }
  
  public NullOutputStream() {}
  
  public native void write(int paramInt);
  
  public native void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
}
