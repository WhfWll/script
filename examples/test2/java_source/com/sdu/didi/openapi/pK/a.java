package com.sdu.didi.openapi.pK;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.sdu.didi.openapi.ss.e;
import com.sdu.didi.openapi.utils.Utils;

public class a
  extends Dialog
{
  private Context a;
  private TextView b;
  private ImageView c;
  private LinearLayout d;
  
  public a(Context paramContext)
  {
    super(paramContext);
    a = paramContext;
    a();
  }
  
  private void a()
  {
    Object localObject1 = new e(a);
    Object localObject2 = new GradientDrawable();
    ((GradientDrawable)localObject2).setCornerRadius(Utils.a(a, 4.0F));
    ((GradientDrawable)localObject2).setAlpha(150);
    ((GradientDrawable)localObject2).setColor(-16777216);
    getWindow().setBackgroundDrawable((Drawable)localObject2);
    getWindow().requestFeature(1);
    getWindow().setGravity(17);
    localObject2 = new LinearLayout.LayoutParams(-1, -1);
    gravity = 17;
    d = new LinearLayout(a);
    d.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    d.setGravity(17);
    d.setOrientation(1);
    c = new ImageView(a);
    localObject2 = new LinearLayout.LayoutParams(Utils.a(a, 30.0F), Utils.a(a, 30.0F));
    gravity = 1;
    c.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    c.setImageResource(((e)localObject1).b("didi_loading_icon"));
    b = new TextView(a);
    b.setTextColor(Color.parseColor("#666666"));
    b.setTextSize(2, 13.0F);
    b.setSingleLine(true);
    localObject1 = new LinearLayout.LayoutParams(-2, -2);
    gravity = 1;
    topMargin = Utils.a(a, 10.0F);
    b.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    d.addView(c);
    d.addView(b);
    setContentView(d);
  }
  
  public void dismiss()
  {
    super.dismiss();
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (b != null) {
      b.setText(paramCharSequence);
    }
  }
  
  public void show()
  {
    RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, -360.0F, 1, 0.5F, 1, 0.5F);
    localRotateAnimation.setStartOffset(0L);
    localRotateAnimation.setDuration(1500L);
    localRotateAnimation.setFillAfter(true);
    localRotateAnimation.setRepeatCount(-1);
    localRotateAnimation.setInterpolator(new LinearInterpolator());
    if (c != null) {
      c.startAnimation(localRotateAnimation);
    }
    super.show();
    getWindow().setLayout(Utils.a(a, 150.0F), Utils.a(a, 100.0F));
  }
}
