import com.arrownock.exception.ArrownockException;
import com.arrownock.push.AnPush;
import com.arrownock.push.AnPushStatus;
import com.arrownock.push.IAnPushCallback;
import com.arrownock.push.IAnPushRegisterAnIdCallback;
import com.xiaomi.mipush.sdk.MiPushClient;

public final class dd
  implements IAnPushRegisterAnIdCallback
{
  public dd(AnPush paramAnPush) {}
  
  public final void onError(ArrownockException paramArrownockException, int paramInt, String paramString)
  {
    if (paramInt >= 5)
    {
      bk.a().d(AnPush.a(), "registerInEnable failed. reason: over limit");
      if (a.getCallback() != null) {
        a.getCallback().statusChanged(AnPushStatus.DISABLE, new ArrownockException("registerInEnable failed.", 2003));
      }
      return;
    }
    AnPush.a(a).a(AnPush.a(a), AnPush.a(a), paramString, paramInt + 1, AnPush.b(a), this);
  }
  
  public final void onSuccess()
  {
    bk.a().a(AnPush.a(), "registerInEnable successful in android-mipush");
    MiPushClient.resumePush(AnPush.a(a), null);
  }
}
