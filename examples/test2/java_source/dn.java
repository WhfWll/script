import com.arrownock.exception.ArrownockException;
import com.arrownock.push.IAnPushCallback;

final class dn
  implements Runnable
{
  dn(df paramDf, String paramString1, String paramString2, int paramInt, IAnPushCallback paramIAnPushCallback) {}
  
  public final void run()
  {
    try
    {
      df.a(jdField_a_of_type_Df, jdField_a_of_type_JavaLangString, b, jdField_a_of_type_Int);
      if (jdField_a_of_type_ComArrownockPushIAnPushCallback != null) {
        jdField_a_of_type_ComArrownockPushIAnPushCallback.setBadge(false, null);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (jdField_a_of_type_ComArrownockPushIAnPushCallback == null) {}
      jdField_a_of_type_ComArrownockPushIAnPushCallback.setBadge(true, localArrownockException);
    }
  }
}
