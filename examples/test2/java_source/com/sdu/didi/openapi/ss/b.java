package com.sdu.didi.openapi.ss;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.sdu.didi.openapi.utils.Utils;

public class b
{
  private Context a;
  private a b;
  
  public b(Context paramContext)
  {
    a = paramContext;
  }
  
  public void a(String paramString)
  {
    if (b == null) {
      b = new a(a, paramString);
    }
    b.show();
  }
  
  public class a
    extends Dialog
  {
    protected a(Context paramContext, String paramString)
    {
      super();
      a(paramString);
    }
    
    private void a(String paramString)
    {
      requestWindowFeature(1);
      Object localObject2 = new e(getContext());
      Object localObject1 = new GradientDrawable();
      ((GradientDrawable)localObject1).setCornerRadius(Utils.a(getContext(), 6.0F));
      ((GradientDrawable)localObject1).setColor(-1);
      getWindow().setBackgroundDrawable((Drawable)localObject1);
      localObject1 = new RelativeLayout(getContext());
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(Utils.a(getContext(), 300.0F), Utils.a(getContext(), 260.0F));
      ImageView localImageView = new ImageView(getContext());
      localImageView.setImageResource(((e)localObject2).b("didi_info_icon"));
      localObject2 = new RelativeLayout.LayoutParams(Utils.a(getContext(), 60.0F), Utils.a(getContext(), 60.0F));
      ((RelativeLayout.LayoutParams)localObject2).addRule(14, 1);
      topMargin = Utils.a(getContext(), 30.0F);
      ((RelativeLayout)localObject1).addView(localImageView, (ViewGroup.LayoutParams)localObject2);
      localObject2 = new TextView(getContext());
      ((TextView)localObject2).setPadding(Utils.a(getContext(), 20.0F), 0, Utils.a(getContext(), 20.0F), 0);
      ((TextView)localObject2).setGravity(1);
      ((TextView)localObject2).setTextColor(Color.parseColor("#ff878787"));
      ((TextView)localObject2).setTextSize(2, 19.0F);
      ((TextView)localObject2).setText(paramString);
      paramString = new RelativeLayout.LayoutParams(-1, -1);
      topMargin = Utils.a(getContext(), 100.0F);
      ((RelativeLayout)localObject1).addView((View)localObject2, paramString);
      paramString = new Button(getContext());
      paramString.setTextSize(2, 16.0F);
      paramString.setTextColor(-1);
      paramString.setGravity(17);
      paramString.setText("我知道了");
      localObject2 = new GradientDrawable();
      ((GradientDrawable)localObject2).setCornerRadius(Utils.a(getContext(), 6.0F));
      ((GradientDrawable)localObject2).setColor(Color.parseColor("#ffff8903"));
      paramString.setBackground((Drawable)localObject2);
      localObject2 = new RelativeLayout.LayoutParams(Utils.a(getContext(), 200.0F), Utils.a(getContext(), 50.0F));
      ((RelativeLayout.LayoutParams)localObject2).addRule(14, 1);
      topMargin = Utils.a(getContext(), 190.0F);
      ((RelativeLayout)localObject1).addView(paramString, (ViewGroup.LayoutParams)localObject2);
      paramString.setOnClickListener(new c(this));
      setContentView((View)localObject1, localLayoutParams);
    }
  }
}
