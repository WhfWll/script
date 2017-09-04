package cn.domob.android.h;

import android.content.Context;
import cn.domob.android.ads.j;
import cn.domob.android.ads.j.c;
import cn.domob.android.ads.w;
import cn.domob.android.ads.w.c;
import cn.domob.android.ads.w.h;

public class a
{
  public static final String a = "mogo_load";
  public static final String b = "mogo_imp";
  public static final String c = "mogo_dismiss";
  private Context d;
  private String e;
  
  public a(Context paramContext, String paramString)
  {
    d = paramContext;
    e = paramString;
  }
  
  public void a(String paramString, j paramJ)
  {
    w localW = new w(d, e);
    localW.getClass();
    w.c localC = new w.c(localW);
    if ((paramJ != null) && (paramJ.d() != null))
    {
      paramJ = paramJ.d();
      a = paramJ.r();
    }
    for (paramJ = paramJ.q();; paramJ = null)
    {
      localW.a(paramJ, w.h.s, paramString, localC, null);
      return;
    }
  }
}
