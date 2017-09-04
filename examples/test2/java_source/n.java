import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.IAnIMTopicCallback;

final class n
  implements Runnable
{
  n(f paramF, String paramString1, String paramString2, String paramString3, IAnIMTopicCallback paramIAnIMTopicCallback) {}
  
  public final void run()
  {
    try
    {
      jdField_a_of_type_F.e(jdField_a_of_type_JavaLangString, b, c);
      if (jdField_a_of_type_ComArrownockImCallbackIAnIMTopicCallback != null) {
        jdField_a_of_type_ComArrownockImCallbackIAnIMTopicCallback.onSuccess(b);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (jdField_a_of_type_ComArrownockImCallbackIAnIMTopicCallback == null) {}
      jdField_a_of_type_ComArrownockImCallbackIAnIMTopicCallback.onError(localArrownockException);
    }
  }
}
