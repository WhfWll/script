package cn.dbox.ui.d;

import android.support.v4.view.ViewPager.OnPageChangeListener;

public class d
  implements ViewPager.OnPageChangeListener
{
  a a;
  
  public d(a paramA)
  {
    a = paramA;
  }
  
  public void a(a paramA)
  {
    a = paramA;
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt)
  {
    if (a != null) {
      a.a(paramInt);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt);
  }
}
