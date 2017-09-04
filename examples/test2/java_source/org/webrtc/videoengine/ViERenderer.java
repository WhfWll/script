package org.webrtc.videoengine;

import android.content.Context;
import android.view.SurfaceView;

public class ViERenderer
{
  public ViERenderer() {}
  
  public static SurfaceView CreateRenderer(Context paramContext)
  {
    return CreateRenderer(paramContext, false);
  }
  
  public static SurfaceView CreateRenderer(Context paramContext, boolean paramBoolean)
  {
    if ((paramBoolean == true) && (ViEAndroidGLES20.IsSupported(paramContext))) {
      return new ViEAndroidGLES20(paramContext);
    }
    return new SurfaceView(paramContext);
  }
}
