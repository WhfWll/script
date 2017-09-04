package cn.domob.android.g.a;

import android.content.Context;
import cn.domob.android.i.f;
import java.util.Map;

class c
{
  private static final f a = new f(c.class.getSimpleName());
  private static final long b = 86400000L;
  private static final int c = 2;
  private Context d;
  private String[] e;
  private int f = 2;
  private long g = 86400000L;
  private boolean h;
  private boolean i = true;
  private Map<String, String> j;
  private a.b k;
  
  c() {}
  
  public a.b a()
  {
    return k;
  }
  
  protected void a(int paramInt)
  {
    f = paramInt;
  }
  
  protected void a(long paramLong)
  {
    g = paramLong;
  }
  
  protected void a(Context paramContext)
  {
    d = paramContext;
  }
  
  public void a(a.b paramB)
  {
    k = paramB;
  }
  
  protected void a(Map<String, String> paramMap)
  {
    j = paramMap;
  }
  
  public void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  protected void a(String[] paramArrayOfString)
  {
    e = paramArrayOfString;
  }
  
  public void b(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public boolean b()
  {
    return h;
  }
  
  protected String[] c()
  {
    return e;
  }
  
  protected int d()
  {
    return f;
  }
  
  protected long e()
  {
    return g;
  }
  
  protected Map<String, String> f()
  {
    return j;
  }
  
  protected Context g()
  {
    return d;
  }
  
  public boolean h()
  {
    return i;
  }
}
