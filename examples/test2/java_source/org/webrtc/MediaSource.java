package org.webrtc;

public class MediaSource
{
  final long nativeSource;
  
  public MediaSource(long paramLong)
  {
    nativeSource = paramLong;
  }
  
  private static native void free(long paramLong);
  
  private static native MediaSource.State nativeState(long paramLong);
  
  public void dispose()
  {
    free(nativeSource);
  }
  
  public MediaSource.State state()
  {
    return nativeState(nativeSource);
  }
}
