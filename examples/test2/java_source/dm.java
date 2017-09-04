import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.arrownock.exception.ArrownockException;
import com.arrownock.push.IAnPushSettingsCallback;
import com.arrownock.push.PushService;

final class dm
  implements Runnable
{
  dm(df paramDf, String paramString1, String paramString2, IAnPushSettingsCallback paramIAnPushSettingsCallback) {}
  
  public final void run()
  {
    try
    {
      df.a(jdField_a_of_type_Df, jdField_a_of_type_JavaLangString, b);
      if (jdField_a_of_type_ComArrownockPushIAnPushSettingsCallback != null) {
        jdField_a_of_type_ComArrownockPushIAnPushSettingsCallback.onSuccess();
      }
      SharedPreferences.Editor localEditor = df.a(jdField_a_of_type_Df).getSharedPreferences(PushService.LOG_TAG, 0).edit();
      localEditor.remove("pushScheduledHour");
      localEditor.remove("pushScheduledMinue");
      localEditor.remove("pushScheduledDuration");
      localEditor.commit();
      df.a(jdField_a_of_type_Df);
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (jdField_a_of_type_ComArrownockPushIAnPushSettingsCallback == null) {}
      jdField_a_of_type_ComArrownockPushIAnPushSettingsCallback.onError(localArrownockException);
    }
  }
}
