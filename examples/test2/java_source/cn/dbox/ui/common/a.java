package cn.dbox.ui.common;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import cn.dbox.ui.e.c;
import cn.dbox.ui.e.d;

public class a
  extends RelativeLayout
{
  a a;
  private View b;
  
  public a(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public void a(Context paramContext)
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    b = LayoutInflater.from(paramContext).inflate(d.a(paramContext, "dbox_about_me"), null);
    b.setLayoutParams(localLayoutParams);
    b.findViewById(c.a(paramContext, "about_send")).setVisibility(4);
    b.findViewById(c.a(paramContext, "about_back_rl")).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (a != null) {
          a.a();
        }
      }
    });
    setLayoutParams(localLayoutParams);
    addView(b);
  }
  
  public void a(a paramA)
  {
    a = paramA;
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}
