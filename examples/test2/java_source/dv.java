import com.arrownock.exception.ArrownockException;
import com.arrownock.push.IAnPushCallback;

final class dv
  implements Runnable
{
  dv(df paramDf, String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, IAnPushCallback paramIAnPushCallback) {}
  
  public final void run()
  {
    try
    {
      df.a(jdField_a_of_type_Df, jdField_a_of_type_JavaLangString, jdField_b_of_type_JavaLangString, jdField_a_of_type_Int, jdField_b_of_type_Int, c);
      if (jdField_a_of_type_ComArrownockPushIAnPushCallback != null) {
        jdField_a_of_type_ComArrownockPushIAnPushCallback.setScheduledMute(false, null);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (jdField_a_of_type_ComArrownockPushIAnPushCallback == null) {}
      jdField_a_of_type_ComArrownockPushIAnPushCallback.setScheduledMute(true, localArrownockException);
    }
  }
}
