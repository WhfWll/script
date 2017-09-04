import android.content.Context;
import android.content.SharedPreferences;
import com.arrownock.exception.ArrownockException;
import com.arrownock.push.AnPush;
import com.arrownock.push.AnPushStatus;
import com.arrownock.push.IAnPushCallback;
import com.arrownock.push.IAnPushRegisterAnIdCallback;
import com.arrownock.push.PushService;

public final class de
  implements IAnPushRegisterAnIdCallback
{
  public de(AnPush paramAnPush, boolean paramBoolean) {}
  
  public final void onError(ArrownockException paramArrownockException, int paramInt, String paramString)
  {
    if (paramInt >= 5)
    {
      bk.a().d(AnPush.a(), "registerInEnable failed. reason: over limit");
      if (jdField_a_of_type_ComArrownockPushAnPush.getCallback() != null) {
        jdField_a_of_type_ComArrownockPushAnPush.getCallback().statusChanged(AnPushStatus.DISABLE, new ArrownockException("registerInEnable failed.", 2002));
      }
      return;
    }
    AnPush.a(jdField_a_of_type_ComArrownockPushAnPush).a(AnPush.a(jdField_a_of_type_ComArrownockPushAnPush), AnPush.a(jdField_a_of_type_ComArrownockPushAnPush), paramString, paramInt + 1, AnPush.b(jdField_a_of_type_ComArrownockPushAnPush), this);
  }
  
  public final void onSuccess()
  {
    bk.a().a(AnPush.a(), "registerInEnable successful in android-arrownock");
    String str = AnPush.a(jdField_a_of_type_ComArrownockPushAnPush).getSharedPreferences(PushService.LOG_TAG, 0).getString("deviceToken", null);
    if (((str == null) || ("".equals(str.trim()))) && (jdField_a_of_type_ComArrownockPushAnPush.getCallback() != null)) {
      jdField_a_of_type_ComArrownockPushAnPush.getCallback().statusChanged(AnPushStatus.DISABLE, new ArrownockException("Device is not registered yet", 2002));
    }
    bk.a().a("Call push service start");
    if (jdField_a_of_type_Boolean)
    {
      PushService.actionStartNotificationFetcher(AnPush.a(jdField_a_of_type_ComArrownockPushAnPush));
      PushService.actionStartCommandFetcher(AnPush.a(jdField_a_of_type_ComArrownockPushAnPush));
      return;
    }
    PushService.actionStart(AnPush.a(jdField_a_of_type_ComArrownockPushAnPush));
  }
}
