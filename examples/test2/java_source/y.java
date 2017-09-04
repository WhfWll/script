import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.IAnIMHistoryCallback;
import java.util.Set;

final class y
  implements Runnable
{
  y(f paramF, String paramString1, Set paramSet, String paramString2, int paramInt, long paramLong, boolean paramBoolean, IAnIMHistoryCallback paramIAnIMHistoryCallback) {}
  
  public final void run()
  {
    try
    {
      jdField_a_of_type_F.b(jdField_a_of_type_JavaLangString, jdField_a_of_type_JavaUtilSet, b, jdField_a_of_type_Int, jdField_a_of_type_Long, jdField_a_of_type_Boolean, jdField_a_of_type_ComArrownockImCallbackIAnIMHistoryCallback);
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (jdField_a_of_type_ComArrownockImCallbackIAnIMHistoryCallback == null) {}
      jdField_a_of_type_ComArrownockImCallbackIAnIMHistoryCallback.onError(localArrownockException);
    }
  }
}
