import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.Log;
import com.arrownock.push.PushService;

public final class ek
  implements Runnable
{
  public ek(PushService paramPushService) {}
  
  public final void run()
  {
    PowerManager.WakeLock localWakeLock = ((PowerManager)a.getSystemService("power")).newWakeLock(1, "anPush");
    localWakeLock.acquire();
    Log.d(PushService.LOGGER_TAG, "start to send keepAlive");
    ji localJi = PushService.a();
    localJi.a("keepalive", "keepalive/" + a, "keepalive", false, 2);
    Log.d(PushService.LOGGER_TAG, "finish send keepAlive. releasing wakelock");
    localWakeLock.release();
  }
}
