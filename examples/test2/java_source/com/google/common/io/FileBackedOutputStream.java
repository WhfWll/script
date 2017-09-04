package com.google.common.io;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@Beta
public final class FileBackedOutputStream
  extends OutputStream
{
  private File file;
  private final int fileThreshold;
  private MemoryOutput memory;
  private OutputStream out;
  private final boolean resetOnFinalize;
  private final InputSupplier<InputStream> supplier;
  
  static
  {
    JniLib.a(FileBackedOutputStream.class, 888);
  }
  
  public FileBackedOutputStream(int paramInt)
  {
    this(paramInt, false);
  }
  
  public FileBackedOutputStream(int paramInt, boolean paramBoolean)
  {
    fileThreshold = paramInt;
    resetOnFinalize = paramBoolean;
    memory = new MemoryOutput(null);
    out = memory;
    if (paramBoolean)
    {
      supplier = new InputSupplier()
      {
        static
        {
          JniLib.a(1.class, 885);
        }
        
        protected native void finalize();
        
        public native InputStream getInput()
          throws IOException;
      };
      return;
    }
    supplier = new InputSupplier()
    {
      static
      {
        JniLib.a(2.class, 886);
      }
      
      public native InputStream getInput()
        throws IOException;
    };
  }
  
  private native InputStream openStream()
    throws IOException;
  
  private native void update(int paramInt)
    throws IOException;
  
  public native void close()
    throws IOException;
  
  public native void flush()
    throws IOException;
  
  @VisibleForTesting
  native File getFile();
  
  public native InputSupplier<InputStream> getSupplier();
  
  public native void reset()
    throws IOException;
  
  public native void write(int paramInt)
    throws IOException;
  
  public native void write(byte[] paramArrayOfByte)
    throws IOException;
  
  public native void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException;
  
  private static class MemoryOutput
    extends ByteArrayOutputStream
  {
    static
    {
      JniLib.a(MemoryOutput.class, 887);
    }
    
    private MemoryOutput() {}
    
    native byte[] getBuffer();
    
    native int getCount();
  }
}
