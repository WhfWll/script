package cn.domob.android.c;

import android.content.Context;
import cn.domob.android.i.f;

public class e
{
  f a = new f(e.class.getSimpleName());
  private Context b;
  private Context c;
  private Object d;
  private String e;
  private String f;
  private a g;
  
  public e(Context paramContext, Object paramObject, String paramString1, String paramString2, a paramA)
  {
    b = paramContext;
    c = paramContext.getApplicationContext();
    d = paramObject;
    e = paramString1;
    f = paramString2;
    g = paramA;
  }
  
  public static void b()
  {
    a.a(3);
  }
  
  public void a()
  {
    new Thread(new Runnable()
    {
      public void run()
      {
        a.a(e.a(e.this), null, null, e.b(e.this), new b()
        {
          public void a() {}
          
          public void a(int paramAnonymous2Int, String paramAnonymous2String)
          {
            a.d(String.format("cache download failed errCode: %d, errInfo: %s", new Object[] { Integer.valueOf(paramAnonymous2Int), paramAnonymous2String }));
            if (e.c(e.this) != null)
            {
              if (paramAnonymous2Int != 1) {
                break label87;
              }
              e.c(e.this).a(e.d(e.this), e.e(e.this));
            }
            label87:
            do
            {
              return;
              if (paramAnonymous2Int == 5)
              {
                e.c(e.this).c(e.d(e.this), e.e(e.this));
                return;
              }
              if (paramAnonymous2Int == 6)
              {
                e.c(e.this).d(e.d(e.this), e.e(e.this));
                return;
              }
            } while (paramAnonymous2Int != 7);
            e.c(e.this).b(e.d(e.this), e.e(e.this));
          }
          
          public void a(String paramAnonymous2String) {}
          
          public void a(String paramAnonymous2String, long paramAnonymous2Long)
          {
            if (e.c(e.this) != null) {
              e.c(e.this).a(e.d(e.this), e.e(e.this), paramAnonymous2String, paramAnonymous2Long);
            }
          }
          
          public void b() {}
          
          public void b(String paramAnonymous2String, long paramAnonymous2Long)
          {
            if (e.c(e.this) != null) {
              e.c(e.this).b(e.d(e.this), e.e(e.this), paramAnonymous2String, paramAnonymous2Long);
            }
          }
        }, null, false, e.f(e.this), 3);
      }
    }).start();
  }
  
  public static abstract interface a
  {
    public abstract void a(Context paramContext, Object paramObject);
    
    public abstract void a(Context paramContext, Object paramObject, String paramString, long paramLong);
    
    public abstract void b(Context paramContext, Object paramObject);
    
    public abstract void b(Context paramContext, Object paramObject, String paramString, long paramLong);
    
    public abstract void c(Context paramContext, Object paramObject);
    
    public abstract void d(Context paramContext, Object paramObject);
  }
}