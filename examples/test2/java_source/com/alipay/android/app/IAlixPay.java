package com.alipay.android.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.bangcle.andjni.JniLib;

public abstract interface IAlixPay
  extends IInterface
{
  public abstract String Pay(String paramString)
    throws RemoteException;
  
  public abstract String prePay(String paramString)
    throws RemoteException;
  
  public abstract void registerCallback(IRemoteServiceCallback paramIRemoteServiceCallback)
    throws RemoteException;
  
  public abstract String test()
    throws RemoteException;
  
  public abstract void unregisterCallback(IRemoteServiceCallback paramIRemoteServiceCallback)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IAlixPay
  {
    private static final String DESCRIPTOR = "com.alipay.android.app.IAlixPay";
    static final int TRANSACTION_Pay = 1;
    static final int TRANSACTION_prePay = 5;
    static final int TRANSACTION_registerCallback = 3;
    static final int TRANSACTION_test = 2;
    static final int TRANSACTION_unregisterCallback = 4;
    
    public Stub()
    {
      attachInterface(this, "com.alipay.android.app.IAlixPay");
    }
    
    public static IAlixPay asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.alipay.android.app.IAlixPay");
      if ((localIInterface != null) && ((localIInterface instanceof IAlixPay))) {
        return (IAlixPay)localIInterface;
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
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.alipay.android.app.IAlixPay");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.alipay.android.app.IAlixPay");
        paramParcel1 = Pay(paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.alipay.android.app.IAlixPay");
        paramParcel1 = test();
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.alipay.android.app.IAlixPay");
        registerCallback(IRemoteServiceCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.alipay.android.app.IAlixPay");
        unregisterCallback(IRemoteServiceCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("com.alipay.android.app.IAlixPay");
      paramParcel1 = prePay(paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeString(paramParcel1);
      return true;
    }
    
    private static final class a
      implements IAlixPay
    {
      private IBinder a;
      
      static
      {
        JniLib.a(a.class, 34);
      }
      
      a(IBinder paramIBinder)
      {
        a = paramIBinder;
      }
      
      private static native String a();
      
      public final native String Pay(String paramString)
        throws RemoteException;
      
      public final native IBinder asBinder();
      
      public final native String prePay(String paramString)
        throws RemoteException;
      
      public final native void registerCallback(IRemoteServiceCallback paramIRemoteServiceCallback)
        throws RemoteException;
      
      public final native String test()
        throws RemoteException;
      
      public final native void unregisterCallback(IRemoteServiceCallback paramIRemoteServiceCallback)
        throws RemoteException;
    }
  }
}
