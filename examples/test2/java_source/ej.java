import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.arrownock.push.PushService;

public final class ej
  extends BroadcastReceiver
{
  public ej(PushService paramPushService) {}
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    PushService.a(a);
    PushService.b(a);
  }
}
