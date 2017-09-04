package com.alipay.android.app;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.bangcle.andjni.JniLib;

public abstract interface IRemoteServiceCallback
  extends IInterface
{
  public abstract boolean isHideLoadingScreen()
    throws RemoteException;
  
  public abstract void payEnd(boolean paramBoolean, String paramString)
    throws RemoteException;
  
  public abstract void startActivity(String paramString1, String paramString2, int paramInt, Bundle paramBundle)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IRemoteServiceCallback
  {
    private static final String DESCRIPTOR = "com.alipay.android.app.IRemoteServiceCallback";
    static final int TRANSACTION_isHideLoadingScreen = 3;
    static final int TRANSACTION_payEnd = 2;
    static final int TRANSACTION_startActivity = 1;
    
    public Stub()
    {
      attachInterface(this, "com.alipay.android.app.IRemoteServiceCallback");
    }
    
    public static IRemoteServiceCallback asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.alipay.android.app.IRemoteServiceCallback");
      if ((localIInterface != null) && ((localIInterface instanceof IRemoteServiceCallback))) {
        return (IRemoteServiceCallback)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      int i = 0;
      boolean bool = false;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.alipay.android.app.IRemoteServiceCallback");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.alipay.android.app.IRemoteServiceCallback");
        String str1 = paramParcel1.readString();
        String str2 = paramParcel1.readString();
        paramInt1 = paramParcel1.readInt();
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          startActivity(str1, str2, paramInt1, paramParcel1);
          paramParcel2.writeNoException();
          return true;
        }
      case 2: 
        paramParcel1.enforceInterface("com.alipay.android.app.IRemoteServiceCallback");
        if (paramParcel1.readInt() != 0) {
          bool = true;
        }
        payEnd(bool, paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("com.alipay.android.app.IRemoteServiceCallback");
      bool = isHideLoadingScreen();
      paramParcel2.writeNoException();
      paramInt1 = i;
      if (bool) {
        paramInt1 = 1;
      }
      paramParcel2.writeInt(paramInt1);
      return true;
    }
    
    private static final class a
      implements IRemoteServiceCallback
    {
      private IBinder a;
      
      static
      {
        JniLib.a(a.class, 35);
      }
      
      a(IBinder paramIBinder)
      {
        a = paramIBinder;
      }
      
      private static native String a();
      
      public final native IBinder asBinder();
      
      public final native boolean isHideLoadingScreen()
        throws RemoteException;
      
      public final native void payEnd(boolean paramBoolean, String paramString)
        throws RemoteException;
      
      public final native void startActivity(String paramString1, String paramString2, int paramInt, Bundle paramBundle)
        throws RemoteException;
    }
  }
}
