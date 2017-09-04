package cn.domob.ui.utility;

import android.content.Context;

public class DString
{
  public DString() {}
  
  public static int getStringInt(Context paramContext, String paramString)
  {
    return DRes.initGetRes(paramContext).getString(paramString);
  }
}
