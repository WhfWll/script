package com.bontai.mobiads.ads.gif;

import com.bangcle.andjni.JniLib;
import java.nio.ByteBuffer;

public class GifHeaderParser
{
  static final int DEFAULT_FRAME_DELAY = 10;
  private static final int MAX_BLOCK_SIZE = 256;
  static final int MIN_FRAME_DELAY = 2;
  public static final String TAG = "GifHeaderParser";
  private final byte[] block = new byte['Ā'];
  private int blockSize = 0;
  private GifHeader header;
  private ByteBuffer rawData;
  
  static
  {
    JniLib.a(GifHeaderParser.class, 245);
  }
  
  public GifHeaderParser() {}
  
  private native boolean err();
  
  private native int read();
  
  private native void readBitmap();
  
  private native int readBlock();
  
  private native int[] readColorTable(int paramInt);
  
  private native void readContents();
  
  private native void readContents(int paramInt);
  
  private native void readGraphicControlExt();
  
  private native void readHeader();
  
  private native void readLSD();
  
  private native void readNetscapeExt();
  
  private native int readShort();
  
  private native void reset();
  
  private native void skip();
  
  private native void skipImageData();
  
  public native void clear();
  
  public native boolean isAnimated();
  
  public native GifHeader parseHeader();
  
  public native GifHeaderParser setData(ByteBuffer paramByteBuffer);
  
  public native GifHeaderParser setData(byte[] paramArrayOfByte);
}
