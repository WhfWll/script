package org.webrtc;

public class MediaStreamTrack
{
  final long nativeTrack;
  
  public MediaStreamTrack(long paramLong)
  {
    nativeTrack = paramLong;
  }
  
  private static native void free(long paramLong);
  
  private static native boolean nativeEnabled(long paramLong);
  
  private static native String nativeId(long paramLong);
  
  private static native String nativeKind(long paramLong);
  
  private static native boolean nativeSetEnabled(long paramLong, boolean paramBoolean);
  
  private static native boolean nativeSetState(long paramLong, int paramInt);
  
  private static native MediaStreamTrack.State nativeState(long paramLong);
  
  public void dispose()
  {
    free(nativeTrack);
  }
  
  public boolean enabled()
  {
    return nativeEnabled(nativeTrack);
  }
  
  public String id()
  {
    return nativeId(nativeTrack);
  }
  
  public String kind()
  {
    return nativeKind(nativeTrack);
  }
  
  public boolean setEnabled(boolean paramBoolean)
  {
    return nativeSetEnabled(nativeTrack, paramBoolean);
  }
  
  public boolean setState(MediaStreamTrack.State paramState)
  {
    return nativeSetState(nativeTrack, paramState.ordinal());
  }
  
  public MediaStreamTrack.State state()
  {
    return nativeState(nativeTrack);
  }
}
