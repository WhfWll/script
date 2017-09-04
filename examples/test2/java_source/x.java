import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.IAnIMHistoryCallback;

final class x
  implements Runnable
{
  x(f paramF, String paramString1, String paramString2, String paramString3, int paramInt, long paramLong, boolean paramBoolean, IAnIMHistoryCallback paramIAnIMHistoryCallback) {}
  
  public final void run()
  {
    try
    {
      jdField_a_of_type_F.b(jdField_a_of_type_JavaLangString, b, c, jdField_a_of_type_Int, jdField_a_of_type_Long, jdField_a_of_type_Boolean, jdField_a_of_type_ComArrownockImCallbackIAnIMHistoryCallback);
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (jdField_a_of_type_ComArrownockImCallbackIAnIMHistoryCallback == null) {}
      jdField_a_of_type_ComArrownockImCallbackIAnIMHistoryCallback.onError(localArrownockException);
    }
  }
}
