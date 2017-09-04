package com.tl.uic.util;

import android.os.AsyncTask;
import com.tl.uic.EnvironmentalData;
import com.tl.uic.TLFCache;
import com.tl.uic.Tealeaf;

public class ClientStateTask
  extends AsyncTask<Void, Void, Boolean>
{
  public ClientStateTask() {}
  
  protected final Boolean doInBackground(Void... paramVarArgs)
  {
    paramVarArgs = Boolean.valueOf(false);
    Void[] arrayOfVoid1 = paramVarArgs;
    try
    {
      if (TLFCache.getEnvironmentalData() == null) {
        arrayOfVoid1 = paramVarArgs;
      }
      Void[] arrayOfVoid2;
      for (paramVarArgs = Boolean.valueOf(false);; paramVarArgs = TLFCache.getEnvironmentalData().hasClientStateChanged())
      {
        arrayOfVoid1 = paramVarArgs;
        LogInternal.log("Did Client State change?: " + paramVarArgs);
        arrayOfVoid1 = paramVarArgs;
        arrayOfVoid2 = paramVarArgs;
        if (!Tealeaf.isApplicationInBackground().booleanValue()) {
          break;
        }
        arrayOfVoid1 = paramVarArgs;
        Tealeaf.onPauseNoActivityInForeground();
        return paramVarArgs;
        arrayOfVoid1 = paramVarArgs;
        TLFCache.getEnvironmentalData().onResume();
        arrayOfVoid1 = paramVarArgs;
      }
      return arrayOfVoid2;
    }
    catch (Exception paramVarArgs)
    {
      LogInternal.logException(paramVarArgs);
      arrayOfVoid2 = arrayOfVoid1;
    }
  }
}
