import com.arrownock.push.PushService;

public final class eo
{
  public eo(PushService paramPushService) {}
  
  public final void a(Throwable paramThrowable)
  {
    bk.a().a(PushService.LOGGER_TAG, "Failed to find push server. Will retry later.", paramThrowable);
    a.scheduleReconnect(PushService.a(a));
  }
}
