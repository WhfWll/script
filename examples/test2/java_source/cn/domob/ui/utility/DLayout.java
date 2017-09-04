package cn.domob.ui.utility;

import android.content.Context;

public class DLayout
{
  public DLayout() {}
  
  public static int getLayoutInt(Context paramContext, String paramString)
  {
    return DRes.initGetRes(paramContext).getLayout(paramString);
  }
}
