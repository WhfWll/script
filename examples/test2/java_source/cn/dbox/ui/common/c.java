package cn.dbox.ui.common;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.dbox.ui.e.d;

public class c
  extends RelativeLayout
{
  public final int a = 50;
  cn.dbox.ui.d.c b;
  private Context c;
  private String d;
  private View e;
  private ImageView f;
  private TextView g;
  private RelativeLayout h;
  private RelativeLayout i;
  
  public c(Context paramContext, String paramString)
  {
    super(paramContext);
    c = paramContext;
    d = paramString;
    a();
    if (e != null)
    {
      paramContext = new RelativeLayout.LayoutParams(-1, k.a(paramContext, 50));
      addView(e, paramContext);
    }
  }
  
  public void a()
  {
    e = LayoutInflater.from(c).inflate(d.a(c, "dbox_home_titlebar"), null);
    h = ((RelativeLayout)e.findViewById(cn.dbox.ui.e.c.a(c, "home_back_rl")));
    h.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (b != null) {
          b.b();
        }
      }
    });
    i = ((RelativeLayout)e.findViewById(cn.dbox.ui.e.c.a(c, "home_set_rl")));
    i.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (b != null) {
          b.a();
        }
      }
    });
    g = ((TextView)e.findViewById(cn.dbox.ui.e.c.a(c, "home_title_text")));
    f = ((ImageView)e.findViewById(cn.dbox.ui.e.c.a(c, "home_title")));
    f.setVisibility(8);
    g.setVisibility(0);
    if (d != null) {
      if (d.length() == 3) {
        g.setText(" " + d + " ");
      }
    }
    for (;;)
    {
      g.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView) {}
      });
      return;
      g.setText(d);
      continue;
      g.setText("");
    }
  }
  
  public void a(cn.dbox.ui.d.c paramC)
  {
    b = paramC;
  }
  
  public void a(String paramString)
  {
    if (g != null) {
      g.setText(paramString);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (g != null)
    {
      if (paramBoolean) {
        g.setVisibility(0);
      }
    }
    else {
      return;
    }
    g.setVisibility(4);
  }
  
  public void b(boolean paramBoolean)
  {
    if (i != null)
    {
      if (paramBoolean) {
        i.setVisibility(0);
      }
    }
    else {
      return;
    }
    i.setVisibility(4);
  }
}
