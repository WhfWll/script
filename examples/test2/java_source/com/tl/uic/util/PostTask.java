package com.tl.uic.util;

import android.os.AsyncTask;
import com.bangcle.andjni.JniLib;
import com.tl.uic.TLFCache;

public class PostTask
  extends AsyncTask<Void, Void, Boolean>
{
  private static final int BUFFER_SIZE = 40;
  
  static
  {
    JniLib.a(PostTask.class, 1063);
  }
  
  public PostTask() {}
  
  private native void logResult(String paramString1, String paramString2, Boolean paramBoolean);
  
  private native Boolean sendMessageFormat();
  
  protected final Boolean doInBackground(Void... paramVarArgs)
  {
    paramVarArgs = Boolean.valueOf(false);
    try
    {
      Boolean localBoolean = sendMessageFormat();
      paramVarArgs = localBoolean;
      TLFCache.closePostTask();
      return Boolean.valueOf(true);
    }
    catch (Exception localException)
    {
      LogInternal.logException(localException);
    }
    return paramVarArgs;
  }
  
  public final native Boolean flush();
}
