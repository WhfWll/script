package com.bontai.mobiads.ads.gif;

import com.bangcle.andjni.JniLib;
import java.util.ArrayList;
import java.util.List;

public class GifHeader
{
  int bgColor;
  int bgIndex;
  GifFrame currentFrame;
  int frameCount = 0;
  List<GifFrame> frames = new ArrayList();
  int[] gct = null;
  boolean gctFlag;
  int gctSize;
  int height;
  int loopCount = 0;
  int pixelAspect;
  int status = 0;
  int width;
  
  static
  {
    JniLib.a(GifHeader.class, 244);
  }
  
  public GifHeader() {}
  
  public native int getHeight();
  
  public native int getNumFrames();
  
  public native int getStatus();
  
  public native int getWidth();
}
