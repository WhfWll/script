package org.webrtc;

public class VideoCapturer
{
  private long nativeVideoCapturer;
  
  private VideoCapturer(long paramLong)
  {
    nativeVideoCapturer = paramLong;
  }
  
  public static VideoCapturer create(String paramString)
  {
    long l = nativeCreateVideoCapturer(paramString);
    if (l == 0L) {
      return null;
    }
    return new VideoCapturer(l);
  }
  
  private static native void free(long paramLong);
  
  private static native long nativeCreateVideoCapturer(String paramString);
  
  public void dispose()
  {
    if (nativeVideoCapturer != 0L) {
      free(nativeVideoCapturer);
    }
  }
  
  long takeNativeVideoCapturer()
  {
    if (nativeVideoCapturer == 0L) {
      throw new RuntimeException("Capturer can only be taken once!");
    }
    long l = nativeVideoCapturer;
    nativeVideoCapturer = 0L;
    return l;
  }
}
