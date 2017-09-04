package com.tencent.mm.sdk.diffdev.a;

import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Looper;
import android.util.Log;
import com.tencent.mm.sdk.diffdev.IDiffDevOAuth;
import com.tencent.mm.sdk.diffdev.OAuthListener;
import java.util.ArrayList;
import java.util.List;

public final class a
  implements IDiffDevOAuth
{
  private com.tencent.mm.sdk.b.d ac = null;
  private List<OAuthListener> ad = new ArrayList();
  private d ae;
  private OAuthListener af = new b(this);
  
  public a() {}
  
  public final void addListener(OAuthListener paramOAuthListener)
  {
    if (!ad.contains(paramOAuthListener)) {
      ad.add(paramOAuthListener);
    }
  }
  
  public final boolean auth(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, OAuthListener paramOAuthListener)
  {
    Log.i("MicroMsg.SDK.DiffDevOAuth", "start auth, appId = " + paramString1);
    if ((paramString1 == null) || (paramString1.length() <= 0) || (paramString2 == null) || (paramString2.length() <= 0))
    {
      Log.d("MicroMsg.SDK.DiffDevOAuth", String.format("auth fail, invalid argument, appId = %s, scope = %s", new Object[] { paramString1, paramString2 }));
      return false;
    }
    if (ac == null) {
      ac = new com.tencent.mm.sdk.b.d(Looper.getMainLooper());
    }
    addListener(paramOAuthListener);
    if (ae != null)
    {
      Log.d("MicroMsg.SDK.DiffDevOAuth", "auth, already running, no need to start auth again");
      return true;
    }
    ae = new d(paramString1, paramString2, paramString3, paramString4, paramString5, af);
    paramString1 = ae;
    if (Build.VERSION.SDK_INT >= 11) {
      paramString1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
    for (;;)
    {
      return true;
      paramString1.execute(new Void[0]);
    }
  }
  
  public final void detach()
  {
    Log.i("MicroMsg.SDK.DiffDevOAuth", "detach");
    ad.clear();
    stopAuth();
  }
  
  public final void removeAllListeners()
  {
    ad.clear();
  }
  
  public final void removeListener(OAuthListener paramOAuthListener)
  {
    ad.remove(paramOAuthListener);
  }
  
  public final boolean stopAuth()
  {
    Log.i("MicroMsg.SDK.DiffDevOAuth", "stopAuth");
    for (;;)
    {
      try
      {
        d localD = ae;
        if (localD != null) {
          continue;
        }
        bool = true;
      }
      catch (Exception localException)
      {
        Log.w("MicroMsg.SDK.DiffDevOAuth", "stopAuth fail, ex = " + localException.getMessage());
        boolean bool = false;
        continue;
      }
      ae = null;
      return bool;
      bool = ae.q();
    }
  }
}
