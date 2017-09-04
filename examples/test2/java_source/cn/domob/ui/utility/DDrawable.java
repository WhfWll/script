package cn.domob.ui.utility;

import android.content.Context;

public class DDrawable
{
  public DDrawable() {}
  
  public static int getDrawableInt(Context paramContext, String paramString)
  {
    return DRes.initGetRes(paramContext).getDrawable(paramString);
  }
}
