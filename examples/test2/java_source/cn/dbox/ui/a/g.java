package cn.dbox.ui.a;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;

public abstract class g
  extends BaseAdapter
{
  private final int a = 3;
  private Context b;
  private a c;
  
  public g(Context paramContext)
  {
    b = paramContext;
  }
  
  private LinearLayout a(int paramInt1, ViewGroup paramViewGroup, int paramInt2)
  {
    LinearLayout localLinearLayout = new LinearLayout(b);
    localLinearLayout.setOrientation(0);
    int i = 0;
    if (i < 3)
    {
      int j = paramInt1 * 3 + i;
      View localView;
      if (j < a())
      {
        localView = a(j, null, paramViewGroup);
        localView.setVisibility(0);
        a(j, localView, paramViewGroup).setOnClickListener(new b(j));
      }
      for (;;)
      {
        localLinearLayout.addView(localView);
        ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
        width = paramInt2;
        localView.setLayoutParams(localLayoutParams);
        i += 1;
        break;
        localView = new View(b);
        localView.setVisibility(4);
      }
    }
    return localLinearLayout;
  }
  
  private void a(int paramInt1, ViewGroup paramViewGroup, LinearLayout paramLinearLayout, int paramInt2)
  {
    int i = 0;
    if (i < 3)
    {
      int j = paramInt1 * 3 + i;
      Object localObject2 = paramLinearLayout.getChildAt(i);
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new View(b);
        paramLinearLayout.addView((View)localObject1);
      }
      localObject2 = ((View)localObject1).getLayoutParams();
      width = paramInt2;
      ((View)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
      if (j < a())
      {
        ((View)localObject1).setVisibility(0);
        localObject2 = a(j, (View)localObject1, paramViewGroup);
        ((View)localObject2).setOnClickListener(new b(j));
        if (localObject2.equals(localObject1)) {}
      }
      for (;;)
      {
        i += 1;
        break;
        ((View)localObject1).setVisibility(4);
      }
    }
  }
  
  public abstract int a();
  
  protected abstract View a(int paramInt, View paramView, ViewGroup paramViewGroup);
  
  public final void a(a paramA)
  {
    c = paramA;
  }
  
  public final int getCount()
  {
    return (int)Math.ceil(a() * 1.0F / 3.0F);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = 0;
    if (paramViewGroup != null) {
      i = (paramViewGroup.getWidth() - paramViewGroup.getPaddingLeft() - paramViewGroup.getPaddingRight()) / 3;
    }
    while (paramView == null)
    {
      return a(paramInt, paramViewGroup, i);
      if (paramView != null) {
        i = (paramView.getWidth() - paramView.getPaddingLeft() - paramView.getPaddingRight()) / 3;
      }
    }
    paramView = (LinearLayout)paramView;
    a(paramInt, paramViewGroup, paramView, i);
    return paramView;
  }
  
  public static abstract interface a
  {
    public abstract void a(View paramView, int paramInt, long paramLong);
  }
  
  private class b
    implements View.OnClickListener
  {
    private int b;
    
    public b(int paramInt)
    {
      b = paramInt;
    }
    
    public void onClick(View paramView)
    {
      if (g.a(g.this) != null) {
        g.a(g.this).a(paramView, b, getItemId(b));
      }
    }
  }
}
