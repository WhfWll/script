package org.webrtc;

import java.util.LinkedList;

public class VideoTrack
  extends MediaStreamTrack
{
  private final LinkedList<VideoRenderer> renderers = new LinkedList();
  
  public VideoTrack(long paramLong)
  {
    super(paramLong);
  }
  
  private static native void free(long paramLong);
  
  private static native void nativeAddRenderer(long paramLong1, long paramLong2);
  
  private static native void nativeRemoveRenderer(long paramLong1, long paramLong2);
  
  public void addRenderer(VideoRenderer paramVideoRenderer)
  {
    renderers.add(paramVideoRenderer);
    nativeAddRenderer(nativeTrack, nativeVideoRenderer);
  }
  
  public void dispose()
  {
    while (!renderers.isEmpty()) {
      removeRenderer((VideoRenderer)renderers.getFirst());
    }
    super.dispose();
  }
  
  public void removeRenderer(VideoRenderer paramVideoRenderer)
  {
    if (!renderers.remove(paramVideoRenderer)) {
      return;
    }
    nativeRemoveRenderer(nativeTrack, nativeVideoRenderer);
    paramVideoRenderer.dispose();
  }
}
