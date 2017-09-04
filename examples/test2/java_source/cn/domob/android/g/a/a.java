package cn.domob.android.g.a;

import android.content.Context;
import cn.domob.android.i.f;
import java.util.HashMap;

public class a
{
  private static final f a = new f(a.class.getSimpleName());
  private static final String b = "sdk";
  private static final String c = "ipb";
  private static final String d = "idv";
  private static final String e = "v";
  private static final String f = "sv";
  private static final String g = "dma";
  private static final String h = "ama";
  private static final String i = "an";
  private static final String j = "ppid";
  private c k = new c();
  
  public a(e paramE)
  {
    a(paramE);
    a.b("init " + a.class.getSimpleName());
  }
  
  private void a(e paramE)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("sdk", paramE.a());
    localHashMap.put("v", paramE.b());
    localHashMap.put("sv", paramE.c());
    localHashMap.put("dma", paramE.d());
    localHashMap.put("ama", paramE.e());
    localHashMap.put("an", paramE.f());
    localHashMap.put("idv", paramE.g());
    localHashMap.put("ipb", paramE.i());
    localHashMap.put("ppid", paramE.h());
    k.a(localHashMap);
  }
  
  protected void a(int paramInt)
  {
    k.a(paramInt);
  }
  
  public void a(long paramLong)
  {
    k.a(paramLong);
  }
  
  public void a(boolean paramBoolean)
  {
    k.a(paramBoolean);
  }
  
  public void a(String[] paramArrayOfString, Context paramContext, b paramB)
  {
    k.a(paramArrayOfString);
    k.a(paramContext);
    k.a(paramB);
    if (!b.a()) {
      new Thread(new b(k)).start();
    }
  }
  
  public void b(boolean paramBoolean)
  {
    k.b(paramBoolean);
  }
  
  public static enum a
  {
    private a() {}
  }
  
  public static abstract interface b
  {
    public abstract void a(a.a paramA);
    
    public abstract void a(String paramString);
  }
}
