package cn.domob.ui.utility;

import android.content.Context;

public class DColor
{
  public DColor() {}
  
  public static int getColorInt(Context paramContext, String paramString)
  {
    return DRes.initGetRes(paramContext).getColor(paramString);
  }
}
