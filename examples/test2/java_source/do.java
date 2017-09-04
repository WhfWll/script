import com.arrownock.exception.ArrownockException;
import com.arrownock.push.IAnPushSettingsCallback;

final class do
  implements Runnable
{
  do(df paramDf, String paramString1, String paramString2, int paramInt, IAnPushSettingsCallback paramIAnPushSettingsCallback) {}
  
  public final void run()
  {
    try
    {
      df.a(jdField_a_of_type_Df, jdField_a_of_type_JavaLangString, b, jdField_a_of_type_Int);
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
