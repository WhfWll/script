package cn.dbox.ui.card;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import cn.dbox.core.bean.a;
import cn.dbox.core.bean.c;
import cn.dbox.ui.common.h;
import cn.dbox.ui.common.k;
import java.util.ArrayList;

public class b
  extends h
{
  private ScrollView n;
  
  public b(Context paramContext, ArrayList<c> paramArrayList, ArrayList<a> paramArrayList1, cn.dbox.core.b paramB)
  {
    super(paramContext, paramArrayList, paramArrayList1, paramB);
    setLayoutParams(m);
    setBackgroundColor(-789000);
    n = a(paramContext);
    addView(n);
  }
  
  public ScrollView a(Context paramContext)
  {
    ScrollView localScrollView = new ScrollView(paramContext);
    localScrollView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    localScrollView.setVerticalScrollBarEnabled(false);
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setOrientation(1);
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    int i = 0;
    while (i < b.size())
    {
      e localE = new e(paramContext, (c)b.get(i), d);
      localE.a(g);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      if (i != 0) {
        topMargin = k.a(paramContext, 25);
      }
      if (i == b.size() - 1) {
        bottomMargin = k.a(paramContext, 15);
      }
      localLinearLayout.addView(localE, localLayoutParams);
      f.add(localE);
      i += 1;
    }
    localScrollView.addView(localLinearLayout);
    return localScrollView;
  }
}
