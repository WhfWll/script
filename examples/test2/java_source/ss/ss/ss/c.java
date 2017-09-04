package ss.ss.ss;

import gK.e;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;

public abstract interface c
  extends Closeable
{
  public abstract void a()
    throws IOException;
  
  public abstract void a(int paramInt1, int paramInt2, List<r> paramList)
    throws IOException;
  
  public abstract void a(int paramInt, long paramLong)
    throws IOException;
  
  public abstract void a(int paramInt, a paramA)
    throws IOException;
  
  public abstract void a(int paramInt, a paramA, byte[] paramArrayOfByte)
    throws IOException;
  
  public abstract void a(ac paramAc)
    throws IOException;
  
  public abstract void a(boolean paramBoolean, int paramInt1, int paramInt2)
    throws IOException;
  
  public abstract void a(boolean paramBoolean, int paramInt1, e paramE, int paramInt2)
    throws IOException;
  
  public abstract void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<r> paramList)
    throws IOException;
  
  public abstract void b()
    throws IOException;
  
  public abstract void b(ac paramAc)
    throws IOException;
  
  public abstract int c();
}
