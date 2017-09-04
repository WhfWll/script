package cn.dbox.ui.common;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.dbox.ui.d.g;
import cn.dbox.ui.e.c;
import cn.dbox.ui.e.d;

public class j
  extends RelativeLayout
{
  private View a;
  private EditText b;
  private EditText c;
  private RelativeLayout d;
  private RelativeLayout e;
  private RelativeLayout f;
  private TextView g;
  private TextView h;
  private Dialog i;
  private Context j;
  private g k;
  
  public j(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public void a()
  {
    a localA = new a(j);
    localA.a(new a.a()
    {
      public void a()
      {
        if (j.d(j.this) != null) {
          j.d(j.this).dismiss();
        }
      }
    });
    i.setContentView(localA);
    i.show();
  }
  
  public void a(Context paramContext)
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    a = LayoutInflater.from(paramContext).inflate(d.a(paramContext, "dbox_set"), null);
    a.setLayoutParams(localLayoutParams);
    j = paramContext;
    i = new Dialog(paramContext, 16973840);
    b = ((EditText)a.findViewById(c.a(paramContext, "about_suggest")));
    c = ((EditText)a.findViewById(c.a(paramContext, "about_suggest_tel")));
    d = ((RelativeLayout)a.findViewById(c.a(paramContext, "set_about")));
    d.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (j.a(j.this) != null) {
          j.a(j.this).b();
        }
        a();
      }
    });
    e = ((RelativeLayout)a.findViewById(c.a(paramContext, "set_contact")));
    e.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (j.a(j.this) != null) {
          j.a(j.this).c();
        }
      }
    });
    f = ((RelativeLayout)a.findViewById(c.a(paramContext, "about_back_rl")));
    f.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (j.a(j.this) != null) {
          j.a(j.this).a();
        }
      }
    });
    g = ((TextView)a.findViewById(c.a(paramContext, "about_send")));
    g.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (j.a(j.this) != null) {
          j.a(j.this).a(j.b(j.this).getText().toString().trim(), j.c(j.this).getText().toString().trim());
        }
      }
    });
    h = ((TextView)a.findViewById(c.a(paramContext, "about_set")));
    h.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView) {}
    });
    setLayoutParams(localLayoutParams);
    addView(a);
  }
  
  public void a(g paramG)
  {
    k = paramG;
  }
}
