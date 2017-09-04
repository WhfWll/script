package cn.dbox.ui.c;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.dbox.core.bean.d;
import cn.dbox.ui.common.k;
import cn.dbox.ui.e.b;
import java.util.ArrayList;

public class a
  extends HorizontalScrollView
{
  b a;
  private Context b;
  private ArrayList<TextView> c;
  private ArrayList<RelativeLayout> d;
  private int e = 0;
  private a f;
  
  public a(Context paramContext, ArrayList<d> paramArrayList)
  {
    super(paramContext);
    b = paramContext;
    a(paramContext, paramArrayList);
  }
  
  public int a()
  {
    return e;
  }
  
  public int a(View paramView)
  {
    int i = 0;
    int j = 0;
    while (i < c.size())
    {
      if (((TextView)c.get(i)).equals(paramView)) {
        j = i;
      }
      i += 1;
    }
    return j;
  }
  
  public LinearLayout a(ArrayList<d> paramArrayList, Context paramContext)
  {
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setOrientation(0);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, k.a(paramContext, 70));
    localLinearLayout.setBackgroundColor(-1);
    localLinearLayout.setLayoutParams(localLayoutParams);
    localLayoutParams = new LinearLayout.LayoutParams(-1, k.a(paramContext, 40));
    weight = 1.0F;
    d = new ArrayList();
    c = new ArrayList();
    int i = 0;
    if (i < paramArrayList.size())
    {
      RelativeLayout localRelativeLayout = new RelativeLayout(paramContext);
      Object localObject2 = new LinearLayout.LayoutParams(k.a(paramContext, 90), k.a(paramContext, 50));
      Object localObject3 = ((d)paramArrayList.get(i)).d();
      Object localObject1 = ((d)paramArrayList.get(i)).f();
      TextView localTextView = new TextView(paramContext);
      localTextView.setLayoutParams(localLayoutParams);
      if ((localObject1 != null) && (((ArrayList)localObject1).size() >= 1) && (localObject3 != null) && (((String)localObject3).length() >= 5))
      {
        localTextView.setGravity(19);
        label208:
        localTextView.setTag(((d)paramArrayList.get(i)).c());
        localTextView.setText((CharSequence)localObject3);
        localTextView.setTextColor(-16777216);
        localTextView.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            int i = a(paramAnonymousView);
            if (a.a(a.this) != null) {
              a.a(a.this).a(i, paramAnonymousView, paramAnonymousView.getTag());
            }
            b(i);
          }
        });
        if (i == 0)
        {
          localTextView.setBackgroundResource(b.a(b, "dbox_flat_container_bg"));
          localTextView.setTextColor(-1);
        }
        localRelativeLayout.setPadding(k.a(paramContext, 5), k.a(paramContext, 10), k.a(paramContext, 5), k.a(paramContext, 10));
        c.add(localTextView);
        localRelativeLayout.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        localRelativeLayout.addView(localTextView);
        localObject2 = new ImageView(paramContext);
        localObject3 = new RelativeLayout.LayoutParams(k.a(paramContext, 15), k.a(paramContext, 15));
        ((RelativeLayout.LayoutParams)localObject3).addRule(10);
        ((RelativeLayout.LayoutParams)localObject3).addRule(11);
        if ((localObject1 != null) && (((ArrayList)localObject1).size() >= 1))
        {
          localObject1 = (String)((ArrayList)localObject1).get(0);
          if (!"new".equals(localObject1)) {
            break label460;
          }
          ((ImageView)localObject2).setBackgroundResource(b.a(paramContext, "dbox_flat_tag_new"));
          localRelativeLayout.addView((View)localObject2, (ViewGroup.LayoutParams)localObject3);
        }
      }
      for (;;)
      {
        d.add(localRelativeLayout);
        localLinearLayout.addView(localRelativeLayout);
        i += 1;
        break;
        localTextView.setGravity(17);
        break label208;
        label460:
        if ("hot".equals(localObject1))
        {
          ((ImageView)localObject2).setBackgroundResource(b.a(paramContext, "dbox_flat_tag_hot"));
          localRelativeLayout.addView((View)localObject2, (ViewGroup.LayoutParams)localObject3);
        }
        else if ("red".equals(localObject1))
        {
          ((ImageView)localObject2).setBackgroundResource(b.a(paramContext, "dbox_flat_tag_red"));
          localRelativeLayout.addView((View)localObject2, (ViewGroup.LayoutParams)localObject3);
        }
      }
    }
    return localLinearLayout;
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void a(Context paramContext, ArrayList<d> paramArrayList)
  {
    setLayoutParams(new RelativeLayout.LayoutParams(-1, k.a(paramContext, 50)));
    setHorizontalScrollBarEnabled(false);
    paramArrayList = a(paramArrayList, paramContext);
    paramArrayList.setLayoutParams(new LinearLayout.LayoutParams(-2, k.a(paramContext, 50)));
    addView(paramArrayList);
  }
  
  public void a(a paramA)
  {
    f = paramA;
  }
  
  public void a(b paramB)
  {
    a = paramB;
  }
  
  public void b(int paramInt)
  {
    ((TextView)c.get(e)).setTextColor(-16777216);
    ((TextView)c.get(e)).setBackgroundColor(16777215);
    ((TextView)c.get(paramInt)).setBackgroundResource(b.a(b, "dbox_flat_container_bg"));
    ((TextView)c.get(paramInt)).setTextColor(-1);
    e = paramInt;
  }
  
  public int computeVerticalScrollRange()
  {
    return super.computeVerticalScrollRange();
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (a != null) {
      a.a(paramInt2);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt, View paramView, Object paramObject);
  }
  
  public static abstract interface b
  {
    public abstract void a(int paramInt);
  }
}
