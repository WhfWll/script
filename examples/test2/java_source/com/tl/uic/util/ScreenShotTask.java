package com.tl.uic.util;

import android.os.AsyncTask;
import android.view.View;
import com.tl.uic.Tealeaf;

public class ScreenShotTask
  extends AsyncTask<View, Void, Boolean>
{
  public ScreenShotTask() {}
  
  protected final Boolean doInBackground(View... paramVarArgs)
  {
    try
    {
      paramVarArgs = Tealeaf.takeScreenShot(paramVarArgs[0], paramVarArgs[0].getClass().getName());
      return paramVarArgs;
    }
    catch (Exception paramVarArgs)
    {
      LogInternal.logException(paramVarArgs);
    }
    return Boolean.valueOf(false);
  }
}
