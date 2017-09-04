package cn.domob.android.ads;

import android.content.Context;
import android.view.View;
import java.util.HashMap;

public abstract class n
{
  protected Context a;
  protected k b;
  protected j c;
  protected g d;
  protected a e;
  protected View f;
  
  public n(Context paramContext, k paramK, j paramJ, g paramG)
  {
    a = paramContext;
    b = paramK;
    c = paramJ;
    d = paramG;
  }
  
  public abstract void a();
  
  public abstract void a(int paramInt1, int paramInt2);
  
  protected void a(DomobAdManager.ErrorCode paramErrorCode, String paramString)
  {
    if (e != null) {
      e.a(paramErrorCode, paramString);
    }
  }
  
  public void a(a paramA)
  {
    e = paramA;
  }
  
  protected void a(String paramString)
  {
    if (e != null) {
      e.a(paramString);
    }
  }
  
  public abstract void a(HashMap<String, String> paramHashMap, String paramString, long paramLong);
  
  public View b()
  {
    return f;
  }
  
  public j c()
  {
    return c;
  }
  
  public abstract void d();
  
  public abstract void e();
  
  public abstract void f();
  
  protected void g()
  {
    if (e != null) {
      e.a(this);
    }
  }
  
  protected void h()
  {
    if (e != null) {
      e.a();
    }
  }
  
  protected Context i()
  {
    if (e != null) {
      return e.b();
    }
    return a;
  }
  
  protected void j()
  {
    if (e != null) {
      e.c();
    }
  }
  
  protected void k()
  {
    if (e != null) {
      e.d();
    }
  }
  
  protected void l()
  {
    if (e != null) {
      e.e();
    }
  }
  
  protected void m()
  {
    if (e != null) {
      e.f();
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(DomobAdManager.ErrorCode paramErrorCode, String paramString);
    
    public abstract void a(n paramN);
    
    public abstract void a(String paramString);
    
    public abstract Context b();
    
    public abstract void c();
    
    public abstract void d();
    
    public abstract void e();
    
    public abstract void f();
  }
}
