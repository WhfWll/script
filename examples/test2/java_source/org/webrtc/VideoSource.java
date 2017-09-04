package org.webrtc;

public class VideoSource
  extends MediaSource
{
  private long nativeVideoFormatAtStop;
  
  public VideoSource(long paramLong)
  {
    super(paramLong);
  }
  
  private static native void freeNativeVideoFormat(long paramLong);
  
  private static native void restart(long paramLong1, long paramLong2);
  
  private static native long stop(long paramLong);
  
  public void dispose()
  {
    if (nativeVideoFormatAtStop != 0L)
    {
      freeNativeVideoFormat(nativeVideoFormatAtStop);
      nativeVideoFormatAtStop = 0L;
    }
    super.dispose();
  }
  
  public void restart()
  {
    restart(nativeSource, nativeVideoFormatAtStop);
    nativeVideoFormatAtStop = 0L;
  }
  
  public void stop()
  {
    nativeVideoFormatAtStop = stop(nativeSource);
  }
}
