package cn.domob.android.ads.b;

import android.app.Activity;
import android.app.Dialog;
import cn.domob.android.ads.a.d;
import cn.domob.android.i.f;
import java.util.Map;

class e
  extends b
{
  private static f c = new f(e.class.getSimpleName());
  
  e(Map<String, String> paramMap, m paramM)
  {
    super(paramMap, paramM);
  }
  
  void a()
  {
    Activity localActivity = null;
    String str = b("url");
    c.a("Open MRAID browser with URL:" + str);
    try
    {
      if ((b.getContext() instanceof Activity)) {
        localActivity = (Activity)b.getContext();
      }
      if ((localActivity == null) || (!localActivity.isFinishing())) {
        new d(b.getContext(), str, null, b.k()).a().show();
      }
      while (b.j() != null)
      {
        b.j().a();
        return;
        c.b("can not build with activity finishing");
      }
      return;
    }
    catch (Exception localException)
    {
      c.a(localException);
    }
  }
}
