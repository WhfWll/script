package org.webrtc;

import java.nio.ByteBuffer;

public class DataChannel
{
  private final long nativeDataChannel;
  private long nativeObserver;
  
  public DataChannel(long paramLong)
  {
    nativeDataChannel = paramLong;
  }
  
  private native long registerObserverNative(DataChannel.Observer paramObserver);
  
  private native boolean sendNative(byte[] paramArrayOfByte, boolean paramBoolean);
  
  private native void unregisterObserverNative(long paramLong);
  
  public native long bufferedAmount();
  
  public native void close();
  
  public native void dispose();
  
  public native String label();
  
  public void registerObserver(DataChannel.Observer paramObserver)
  {
    if (nativeObserver != 0L) {
      unregisterObserverNative(nativeObserver);
    }
    nativeObserver = registerObserverNative(paramObserver);
  }
  
  public boolean send(DataChannel.Buffer paramBuffer)
  {
    byte[] arrayOfByte = new byte[data.remaining()];
    data.get(arrayOfByte);
    return sendNative(arrayOfByte, binary);
  }
  
  public native DataChannel.State state();
  
  public void unregisterObserver()
  {
    unregisterObserverNative(nativeObserver);
  }
}
