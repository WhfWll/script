import com.arrownock.exception.ArrownockException;
import com.arrownock.push.IAnPushCallback;

final class dh
  implements Runnable
{
  dh(df paramDf, String paramString1, String paramString2, IAnPushCallback paramIAnPushCallback) {}
  
  public final void run()
  {
    try
    {
      df.a(jdField_a_of_type_Df, jdField_a_of_type_JavaLangString, b, false);
      if (jdField_a_of_type_ComArrownockPushIAnPushCallback != null) {
        jdField_a_of_type_ComArrownockPushIAnPushCallback.clearMute(false, null);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (jdField_a_of_type_ComArrownockPushIAnPushCallback == null) {}
      jdField_a_of_type_ComArrownockPushIAnPushCallback.clearMute(true, localArrownockException);
    }
  }
}
