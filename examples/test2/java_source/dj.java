import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.arrownock.exception.ArrownockException;
import com.arrownock.push.IAnPushCallback;
import com.arrownock.push.PushService;

final class dj
  implements Runnable
{
  dj(df paramDf, String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, IAnPushCallback paramIAnPushCallback) {}
  
  public final void run()
  {
    try
    {
      df.a(jdField_a_of_type_Df, jdField_a_of_type_JavaLangString, jdField_b_of_type_JavaLangString, jdField_a_of_type_Int, jdField_b_of_type_Int, c, jdField_a_of_type_Boolean);
      if (jdField_a_of_type_ComArrownockPushIAnPushCallback != null) {
        jdField_a_of_type_ComArrownockPushIAnPushCallback.setSilentPeriod(false, null);
      }
      SharedPreferences.Editor localEditor = df.a(jdField_a_of_type_Df).getSharedPreferences(PushService.LOG_TAG, 0).edit();
      localEditor.putInt("pushScheduledHour", jdField_a_of_type_Int);
      localEditor.putInt("pushScheduledMinue", jdField_b_of_type_Int);
      localEditor.putLong("pushScheduledDuration", c * 60 * 1000);
      localEditor.commit();
      jdField_a_of_type_Df.a();
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (jdField_a_of_type_ComArrownockPushIAnPushCallback == null) {}
      jdField_a_of_type_ComArrownockPushIAnPushCallback.setSilentPeriod(true, localArrownockException);
    }
  }
}
