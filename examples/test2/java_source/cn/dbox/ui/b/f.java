package cn.dbox.ui.b;

import android.content.Context;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.dbox.core.bean.d;
import cn.dbox.ui.common.e;
import cn.dbox.ui.common.e.a;
import cn.dbox.ui.common.e.b;

public class f
  extends RelativeLayout
{
  e a;
  e.b b;
  private String c = null;
  
  public f(Context paramContext, d paramD)
  {
    super(paramContext);
    a(paramContext, paramD);
  }
  
  public void a()
  {
    if ((a != null) && (c != null)) {
      a.loadUrl(c);
    }
  }
  
  public void a(Context paramContext, d paramD)
  {
    c = paramD.g();
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    setLayoutParams(localLayoutParams);
    setBackgroundColor(-789000);
    a = new e(paramContext, paramD);
    a.setLayoutParams(localLayoutParams);
    a.a(new e.a()
    {
      public void a(e paramAnonymousE, String paramAnonymousString)
      {
        a.loadUrl(paramAnonymousString);
      }
    });
    addView(a);
  }
  
  public void a(e.b paramB)
  {
    b = paramB;
    if (a != null) {
      a.a(paramB);
    }
  }
}
