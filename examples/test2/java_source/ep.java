import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.Log;
import com.arrownock.exception.ArrownockException;
import com.arrownock.push.AnPush;
import com.arrownock.push.AnPushStatus;
import com.arrownock.push.IAnPushCallback;
import com.arrownock.push.PushService;
import org.json.JSONException;
import org.json.JSONObject;

public final class ep
  implements dz
{
  private ep(PushService paramPushService) {}
  
  private static AnPushStatus a()
  {
    if ((PushService.a() != null) && (ea.d.equals(aa))) {
      return AnPushStatus.ENABLE;
    }
    return AnPushStatus.DISABLE;
  }
  
  public final void a()
  {
    bk.a().b(PushService.LOGGER_TAG, "Push service connected");
    SharedPreferences.Editor localEditor = PushService.a(a).edit();
    localEditor.putLong("retryInterval", 2500L);
    localEditor.putInt("pushHostRetrytime", 0);
    localEditor.commit();
    PushService.a(a, System.currentTimeMillis());
    PushService.c(a);
    PushService.b(a);
  }
  
  public final void a(String paramString)
  {
    if ((paramString == null) || (paramString.equals(""))) {
      return;
    }
    Log.d(PushService.LOGGER_TAG, "New message arrived. Creating wakelock.");
    PowerManager.WakeLock localWakeLock = ((PowerManager)a.getSystemService("power")).newWakeLock(1, "anPush");
    localWakeLock.acquire();
    try
    {
      JSONObject localJSONObject1 = new JSONObject(paramString);
      paramString = localJSONObject1;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        JSONObject localJSONObject2 = new JSONObject();
        JSONObject localJSONObject3 = new JSONObject();
        try
        {
          localJSONObject3.put("alert", paramString);
          localJSONObject2.put("android", localJSONObject3);
          paramString = localJSONObject2;
        }
        catch (JSONException paramString)
        {
          paramString = localJSONObject2;
        }
      }
    }
    PushService.a(a, paramString);
    PushService.b(a);
    localWakeLock.release();
    Log.d(PushService.LOGGER_TAG, "Releasing wakelock.");
  }
  
  public final void a(String paramString1, String paramString2)
  {
    if ("keepalive".equals(paramString1)) {
      Log.d(PushService.LOGGER_TAG, "send keepalive complete");
    }
  }
  
  public final void a(String paramString, Throwable paramThrowable)
  {
    if ("keepalive".equals(paramString)) {
      Log.d(PushService.LOGGER_TAG, "send keepalive failed");
    }
  }
  
  public final void a(Throwable paramThrowable)
  {
    bk.a().a(PushService.LOGGER_TAG, "General Problem occured. Exception Type: " + paramThrowable.getClass().getName() + "; Exception Message: " + paramThrowable.getMessage(), paramThrowable);
  }
  
  public final void b()
  {
    try
    {
      AnPush localAnPush = AnPush.getInstance(a.getApplicationContext());
      if ((localAnPush != null) && (localAnPush.getCallback() != null)) {
        localAnPush.getCallback().statusChanged(AnPushStatus.ENABLE, null);
      }
      return;
    }
    catch (ArrownockException localArrownockException) {}
  }
  
  public final void b(Throwable paramThrowable)
  {
    try
    {
      paramThrowable = AnPush.getInstance(a.getApplicationContext());
      if ((paramThrowable != null) && (paramThrowable.getCallback() != null)) {
        paramThrowable.getCallback().statusChanged(a(), null);
      }
    }
    catch (ArrownockException paramThrowable)
    {
      for (;;) {}
    }
    bk.a().b(PushService.LOGGER_TAG, "Push service disonnected");
    if (PushService.a(a)) {
      Log.w(PushService.LOGGER_TAG, "Push Service status:" + PushService.a(a));
    }
    PushService.d(a);
  }
  
  public final void c(Throwable paramThrowable)
  {
    try
    {
      AnPush localAnPush = AnPush.getInstance(a.getApplicationContext());
      if ((localAnPush != null) && (localAnPush.getCallback() != null)) {
        localAnPush.getCallback().statusChanged(a(), new ArrownockException(paramThrowable.getMessage(), 3002));
      }
    }
    catch (ArrownockException localArrownockException)
    {
      for (;;) {}
    }
    bk.a().a(PushService.LOGGER_TAG, "Failed to connect to push server. Exception Type: " + paramThrowable.getClass().getName() + "; Exception Message: " + paramThrowable.getMessage(), paramThrowable);
    if ((PushService.b(a)) && (PushService.c(a))) {
      a.scheduleReconnect(PushService.a(a));
    }
  }
  
  public final void d(Throwable paramThrowable)
  {
    try
    {
      AnPush localAnPush = AnPush.getInstance(a.getApplicationContext());
      if ((localAnPush != null) && (localAnPush.getCallback() != null)) {
        localAnPush.getCallback().statusChanged(a(), new ArrownockException(paramThrowable.getMessage(), 3003));
      }
    }
    catch (ArrownockException localArrownockException)
    {
      for (;;) {}
    }
    bk.a().a(PushService.LOGGER_TAG, "Failed to disconnect from push server. Exception Type: " + paramThrowable.getClass().getName() + "; Exception Message: " + paramThrowable.getMessage(), paramThrowable);
  }
  
  public final void e(Throwable paramThrowable)
  {
    try
    {
      AnPush localAnPush = AnPush.getInstance(a.getApplicationContext());
      if ((localAnPush != null) && (localAnPush.getCallback() != null)) {
        localAnPush.getCallback().statusChanged(a(), new ArrownockException(paramThrowable.getMessage(), 3002));
      }
      return;
    }
    catch (ArrownockException paramThrowable) {}
  }
}
