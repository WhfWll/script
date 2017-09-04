package cn.domob.ui.utility;

import android.content.Context;

public class DId
{
  public DId() {}
  
  public static int getIdInt(Context paramContext, String paramString)
  {
    return DRes.initGetRes(paramContext).getId(paramString);
  }
}
