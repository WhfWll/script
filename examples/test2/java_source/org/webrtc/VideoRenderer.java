package org.webrtc;

public class VideoRenderer
{
  private final VideoRenderer.Callbacks callbacks;
  final long nativeVideoRenderer;
  
  private VideoRenderer(long paramLong)
  {
    nativeVideoRenderer = paramLong;
    callbacks = null;
  }
  
  public VideoRenderer(VideoRenderer.Callbacks paramCallbacks)
  {
    nativeVideoRenderer = nativeWrapVideoRenderer(paramCallbacks);
    callbacks = paramCallbacks;
  }
  
  public static VideoRenderer createGui(int paramInt1, int paramInt2)
  {
    long l = nativeCreateGuiVideoRenderer(paramInt1, paramInt2);
    if (l == 0L) {
      return null;
    }
    return new VideoRenderer(l);
  }
  
  private static native void freeGuiVideoRenderer(long paramLong);
  
  private static native void freeWrappedVideoRenderer(long paramLong);
  
  private static native long nativeCreateGuiVideoRenderer(int paramInt1, int paramInt2);
  
  private static native long nativeWrapVideoRenderer(VideoRenderer.Callbacks paramCallbacks);
  
  public void dispose()
  {
    if (callbacks == null)
    {
      freeGuiVideoRenderer(nativeVideoRenderer);
      return;
    }
    freeWrappedVideoRenderer(nativeVideoRenderer);
  }
}
