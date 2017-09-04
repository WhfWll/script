package com.bontai.mobiads.ads.gif;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bangcle.andjni.JniLib;
import java.io.InputStream;
import java.nio.ByteBuffer;

class GifDecoder
{
  private static final int BYTES_PER_INTEGER = 4;
  private static final int DISPOSAL_BACKGROUND = 2;
  private static final int DISPOSAL_NONE = 1;
  private static final int DISPOSAL_PREVIOUS = 3;
  private static final int DISPOSAL_UNSPECIFIED = 0;
  private static final int INITIAL_FRAME_POINTER = -1;
  static final int LOOP_FOREVER = -1;
  private static final int MAX_STACK_SIZE = 4096;
  private static final int NULL_CODE = -1;
  static final int STATUS_FORMAT_ERROR = 1;
  static final int STATUS_OK = 0;
  static final int STATUS_OPEN_ERROR = 2;
  static final int STATUS_PARTIAL_DECODE = 3;
  private static final String TAG = GifDecoder.class.getSimpleName();
  private static final int WORK_BUFFER_SIZE = 16384;
  private int[] act;
  private BitmapProvider bitmapProvider;
  private byte[] block;
  private int downsampledHeight;
  private int downsampledWidth;
  private int framePointer;
  private GifHeader header;
  private boolean isFirstFrameTransparent;
  private int loopIndex;
  private byte[] mainPixels;
  private int[] mainScratch;
  private GifHeaderParser parser;
  private byte[] pixelStack;
  private short[] prefix;
  private Bitmap previousImage;
  private ByteBuffer rawData;
  private int sampleSize;
  private boolean savePrevious;
  private int status;
  private byte[] suffix;
  @Nullable
  private byte[] workBuffer;
  private int workBufferPosition = 0;
  private int workBufferSize = 0;
  
  static
  {
    JniLib.a(GifDecoder.class, 243);
  }
  
  GifDecoder()
  {
    this(new SimpleBitmapProvider());
  }
  
  GifDecoder(BitmapProvider paramBitmapProvider)
  {
    bitmapProvider = paramBitmapProvider;
    header = new GifHeader();
  }
  
  GifDecoder(BitmapProvider paramBitmapProvider, GifHeader paramGifHeader, ByteBuffer paramByteBuffer)
  {
    this(paramBitmapProvider, paramGifHeader, paramByteBuffer, 1);
  }
  
  GifDecoder(BitmapProvider paramBitmapProvider, GifHeader paramGifHeader, ByteBuffer paramByteBuffer, int paramInt)
  {
    this(paramBitmapProvider);
    setData(paramGifHeader, paramByteBuffer, paramInt);
  }
  
  private native int averageColorsNear(int paramInt1, int paramInt2, int paramInt3);
  
  private native void decodeBitmapData(GifFrame paramGifFrame);
  
  private native GifHeaderParser getHeaderParser();
  
  private native Bitmap getNextBitmap();
  
  private native int readBlock();
  
  private native int readByte();
  
  private native void readChunkIfNeeded();
  
  @TargetApi(12)
  private static native void setAlpha(Bitmap paramBitmap);
  
  private native Bitmap setPixels(GifFrame paramGifFrame1, GifFrame paramGifFrame2);
  
  native boolean advance();
  
  native void clear();
  
  native int getByteSize();
  
  native int getCurrentFrameIndex();
  
  native ByteBuffer getData();
  
  native int getDelay(int paramInt);
  
  native int getFrameCount();
  
  native int getHeight();
  
  native int getLoopCount();
  
  native int getLoopIndex();
  
  native int getNextDelay();
  
  native Bitmap getNextFrame();
  
  native int getStatus();
  
  native int getWidth();
  
  native int read(InputStream paramInputStream, int paramInt);
  
  native int read(byte[] paramArrayOfByte);
  
  native void resetFrameIndex();
  
  native void resetLoopIndex();
  
  native void setData(GifHeader paramGifHeader, ByteBuffer paramByteBuffer);
  
  native void setData(GifHeader paramGifHeader, ByteBuffer paramByteBuffer, int paramInt);
  
  native void setData(GifHeader paramGifHeader, byte[] paramArrayOfByte);
  
  native boolean setFrameIndex(int paramInt);
  
  static abstract interface BitmapProvider
  {
    @NonNull
    public abstract Bitmap obtain(int paramInt1, int paramInt2, Bitmap.Config paramConfig);
    
    public abstract byte[] obtainByteArray(int paramInt);
    
    public abstract int[] obtainIntArray(int paramInt);
    
    public abstract void release(Bitmap paramBitmap);
    
    public abstract void release(byte[] paramArrayOfByte);
    
    public abstract void release(int[] paramArrayOfInt);
  }
}
