package com.alipay.sdk.util;

import android.os.Bundle;
import android.os.RemoteException;
import com.alipay.android.app.IRemoteServiceCallback.Stub;
import com.bangcle.andjni.JniLib;

final class j
  extends IRemoteServiceCallback.Stub
{
  static
  {
    JniLib.a(j.class, 180);
  }
  
  j(h paramH) {}
  
  public final native boolean isHideLoadingScreen()
    throws RemoteException;
  
  public final native void payEnd(boolean paramBoolean, String paramString)
    throws RemoteException;
  
  public final native void startActivity(String paramString1, String paramString2, int paramInt, Bundle paramBundle)
    throws RemoteException;
}
