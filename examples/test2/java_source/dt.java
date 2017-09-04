import com.arrownock.exception.ArrownockException;
import com.arrownock.push.IAnPushCallback;

final class dt
  implements Runnable
{
  dt(df paramDf, String paramString1, String paramString2, IAnPushCallback paramIAnPushCallback) {}
  
  public final void run()
  {
    try
    {
      df.a(jdField_a_of_type_Df, jdField_a_of_type_JavaLangString, b, true);
      if (jdField_a_of_type_ComArrownockPushIAnPushCallback != null) {
        jdField_a_of_type_ComArrownockPushIAnPushCallback.setMute(false, null);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (jdField_a_of_type_ComArrownockPushIAnPushCallback == null) {}
      jdField_a_of_type_ComArrownockPushIAnPushCallback.setMute(true, localArrownockException);
    }
  }
}
