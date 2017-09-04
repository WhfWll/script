package cn.dbox.core;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import cn.dbox.core.bean.Entrance.EntryReportType;
import cn.dbox.core.bean.d;
import cn.dbox.core.bean.g;
import cn.dbox.core.d.l;
import java.util.ArrayList;

public class b
{
  private static String e = "online";
  private c a;
  private a b;
  private l c;
  private j d;
  
  public b(Context paramContext, String paramString1, String paramString2)
  {
    a = new c(paramContext, paramString1, paramString2);
    b = new a(paramContext, a);
    c = l.a(paramContext);
  }
  
  private void a(String paramString1, int paramInt, String paramString2)
  {
    a.a(paramString1, paramInt, paramString2);
  }
  
  public static String c()
  {
    return e;
  }
  
  public static void c(String paramString)
  {
    e = paramString;
  }
  
  public void a()
  {
    a.a(null, 0, null);
  }
  
  public void a(f paramF, d paramD, e paramE)
  {
    b.a(paramF, paramD, paramE);
  }
  
  public void a(j paramJ)
  {
    d = paramJ;
    if (b != null) {
      b.a(paramJ);
    }
  }
  
  public void a(l paramL)
  {
    a.a(paramL);
  }
  
  public void a(m paramM)
  {
    a.a(paramM);
  }
  
  public void a(o paramO, String paramString1, String paramString2)
  {
    b.a(paramO, paramString1, paramString2);
  }
  
  public void a(Entrance.EntryReportType paramEntryReportType)
  {
    b.a(paramEntryReportType);
  }
  
  public void a(cn.dbox.core.bean.a paramA)
  {
    b.a(paramA);
  }
  
  public void a(cn.dbox.core.bean.a paramA, a paramA1, d paramD)
  {
    b.a(paramA, paramA1, paramD);
  }
  
  public void a(cn.dbox.core.bean.a paramA, b paramB)
  {
    b.a(paramA, paramB);
  }
  
  public void a(d paramD, b paramB)
  {
    b.a(paramD, paramB);
  }
  
  public void a(String paramString)
  {
    a(null, 0, paramString);
  }
  
  public void a(String paramString, int paramInt)
  {
    a.a(paramString, paramInt, null);
  }
  
  public void a(String paramString, ImageView paramImageView, k paramK)
  {
    c.a(paramString, paramImageView, paramK);
  }
  
  public void a(String paramString1, b paramB, String paramString2)
  {
    b.a(paramString1, paramB, paramString2);
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (a != null) {
      a.a(paramString1, paramString2);
    }
  }
  
  public void a(ArrayList<cn.dbox.core.bean.a> paramArrayList, String paramString)
  {
    b.a(paramArrayList, paramString);
  }
  
  public void b()
  {
    a(null, 0, null);
  }
  
  public void b(Entrance.EntryReportType paramEntryReportType)
  {
    b.b(paramEntryReportType);
  }
  
  public void b(String paramString)
  {
    b.a(paramString);
  }
  
  public void d()
  {
    c.b();
  }
  
  public void d(String paramString)
    throws Exception
  {
    b.a(null, paramString);
  }
  
  public void e()
  {
    c.c();
  }
  
  public void e(String paramString)
  {
    a.a(paramString);
  }
  
  public String f()
  {
    return a.q();
  }
  
  public void g()
  {
    a.s();
  }
  
  public static enum a
  {
    private a() {}
  }
  
  public static enum b
  {
    private b() {}
  }
  
  public static enum c
  {
    private c() {}
  }
  
  public static enum d
  {
    private d() {}
  }
  
  public static enum e
  {
    private e() {}
  }
  
  public static enum f
  {
    private f() {}
  }
  
  public static enum g
  {
    private g() {}
  }
  
  public static enum h
  {
    private h() {}
  }
  
  public static enum i
  {
    private i() {}
  }
  
  public static abstract interface j
  {
    public abstract void a();
  }
  
  public static abstract interface k
  {
    public abstract void a(Bitmap paramBitmap, String paramString, ImageView paramImageView);
    
    public abstract void a(String paramString, ImageView paramImageView);
  }
  
  public static abstract interface l
  {
    public abstract void a(b.h paramH, String paramString1, String paramString2, int paramInt);
    
    public abstract void a(g paramG, ArrayList<cn.dbox.core.bean.c> paramArrayList, ArrayList<cn.dbox.core.bean.a> paramArrayList1, String paramString, int paramInt);
  }
  
  public static abstract interface m
  {
    public abstract void a(b.h paramH, String paramString1, String paramString2, int paramInt);
    
    public abstract void a(g paramG, ArrayList<cn.dbox.core.bean.c> paramArrayList, ArrayList<cn.dbox.core.bean.a> paramArrayList1, String paramString, int paramInt);
  }
  
  public static enum n
  {
    private n() {}
  }
  
  public static enum o
  {
    private o() {}
  }
}
