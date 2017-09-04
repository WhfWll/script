package ss.ss.ss;

import gK.g;
import gK.h;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;

public abstract interface b
  extends Closeable
{
  public abstract void a()
    throws IOException;
  
  public abstract boolean a(a paramA)
    throws IOException;
  
  public static abstract interface a
  {
    public abstract void a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean);
    
    public abstract void a(int paramInt1, int paramInt2, List<r> paramList)
      throws IOException;
    
    public abstract void a(int paramInt, long paramLong);
    
    public abstract void a(int paramInt, a paramA);
    
    public abstract void a(int paramInt, a paramA, h paramH);
    
    public abstract void a(boolean paramBoolean, int paramInt1, int paramInt2);
    
    public abstract void a(boolean paramBoolean, int paramInt1, g paramG, int paramInt2)
      throws IOException;
    
    public abstract void a(boolean paramBoolean, ac paramAc);
    
    public abstract void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<r> paramList, s paramS);
    
    public abstract void b();
  }
}
