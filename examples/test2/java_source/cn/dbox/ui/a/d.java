package cn.dbox.ui.a;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import cn.dbox.ui.b.b;
import java.util.ArrayList;

public class d
  extends PagerAdapter
{
  private ArrayList<b> a;
  
  public d(ArrayList<b> paramArrayList)
  {
    a = paramArrayList;
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup.removeView((View)a.get(paramInt));
  }
  
  public int getCount()
  {
    return a.size();
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.addView((View)a.get(paramInt), 0);
    return a.get(paramInt);
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
}
