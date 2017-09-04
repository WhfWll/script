package cn.domob.android.ads;

import android.content.Context;
import cn.domob.android.ads.a.c;
import cn.domob.android.ads.b.a;
import cn.domob.android.i.h;

public class f
{
  public f() {}
  
  protected n a(Context paramContext, g paramG, j paramJ, int paramInt1, int paramInt2)
  {
    String str = paramJ.d().b();
    int i = paramG.o();
    Object localObject2 = null;
    Object localObject1;
    if (i == DomobAdView.a.d.ordinal()) {
      localObject1 = new z(paramContext, new k(paramInt1, paramInt2), paramJ, paramG);
    }
    do
    {
      do
      {
        return localObject1;
        localObject1 = localObject2;
      } while (i == DomobAdView.a.e.ordinal());
      if (h.e(str)) {
        return new c(paramContext, new k(paramInt1, paramInt2), paramJ, paramG);
      }
      if (str.equals("domob")) {
        return new c(paramContext, new k(paramInt1, paramInt2), paramJ, paramG);
      }
      if (str.equals("mraid")) {
        return new a(paramContext, new k(paramInt1, paramInt2), paramJ, paramG);
      }
      localObject1 = localObject2;
    } while (!str.equals("video"));
    return new D(paramContext, new k(paramInt1, paramInt2), paramJ, paramG);
  }
}
