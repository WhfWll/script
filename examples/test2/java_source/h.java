import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.IAnIMTopicCallback;

final class h
  implements Runnable
{
  h(f paramF, String paramString1, String paramString2, String paramString3, String paramString4, IAnIMTopicCallback paramIAnIMTopicCallback) {}
  
  public final void run()
  {
    try
    {
      String str = jdField_a_of_type_F.a(jdField_a_of_type_JavaLangString, b, c, d);
      if (jdField_a_of_type_ComArrownockImCallbackIAnIMTopicCallback != null) {
        jdField_a_of_type_ComArrownockImCallbackIAnIMTopicCallback.onSuccess(str);
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
