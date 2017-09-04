import com.arrownock.exception.ArrownockException;
import com.arrownock.push.IAnPushSettingsCallback;

final class di
  implements Runnable
{
  di(df paramDf, String paramString1, String paramString2, IAnPushSettingsCallback paramIAnPushSettingsCallback) {}
  
  public final void run()
  {
    try
    {
      df.a(jdField_a_of_type_Df, jdField_a_of_type_JavaLangString, b, false);
      if (jdField_a_of_type_ComArrownockPushIAnPushSettingsCallback != null) {
        jdField_a_of_type_ComArrownockPushIAnPushSettingsCallback.onSuccess();
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (jdField_a_of_type_ComArrownockPushIAnPushSettingsCallback == null) {}
      jdField_a_of_type_ComArrownockPushIAnPushSettingsCallback.onError(localArrownockException);
    }
  }
}
