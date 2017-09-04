package cn.dbox.ui.common;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.dbox.ui.d.e;
import cn.dbox.ui.e.c;
import cn.dbox.ui.e.d;

public class i
  extends RelativeLayout
{
  public final int a = 45;
  e b;
  private Context c;
  private View d;
  private ImageView e;
  private TextView f;
  private RelativeLayout g;
  private RelativeLayout h;
  
  public i(Context paramContext)
  {
    super(paramContext);
    c = paramContext;
    a();
    if (d != null)
    {
      paramContext = new RelativeLayout.LayoutParams(-1, k.a(paramContext, 45));
      addView(d, paramContext);
    }
  }
  
  public void a()
  {
    d = LayoutInflater.from(c).inflate(d.a(c, "dbox_home_titlebar"), null);
    g = ((RelativeLayout)d.findViewById(c.a(c, "home_back_rl")));
    g.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (b != null) {
          b.c();
        }
      }
    });
    h = ((RelativeLayout)d.findViewById(c.a(c, "home_set_rl")));
    h.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (b != null) {
          b.b();
        }
      }
    });
    e = ((ImageView)d.findViewById(c.a(c, "home_title")));
    f = ((TextView)d.findViewById(c.a(c, "home_title_text")));
    f.setVisibility(0);
    f.setText("旅行休闲");
    e.setVisibility(8);
    e.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (b != null) {
          b.a();
        }
      }
    });
  }
  
  public void a(e paramE)
  {
    b = paramE;
  }
}
