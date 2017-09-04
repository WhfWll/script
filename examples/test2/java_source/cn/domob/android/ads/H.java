package cn.domob.android.ads;

import android.content.Context;
import android.widget.ViewFlipper;

class H
  extends ViewFlipper
{
  H(Context paramContext)
  {
    super(paramContext);
  }
  
  protected void onDetachedFromWindow()
  {
    try
    {
      super.onDetachedFromWindow();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      stopFlipping();
    }
  }
}
