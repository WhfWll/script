import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.IAnIMGetClientIdCallback;

final class r
  implements Runnable
{
  r(f paramF, String paramString1, String paramString2, IAnIMGetClientIdCallback paramIAnIMGetClientIdCallback) {}
  
  public final void run()
  {
    try
    {
      String str = jdField_a_of_type_F.a(jdField_a_of_type_JavaLangString, b);
      if (jdField_a_of_type_ComArrownockImCallbackIAnIMGetClientIdCallback != null) {
        jdField_a_of_type_ComArrownockImCallbackIAnIMGetClientIdCallback.onSuccess(str);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (jdField_a_of_type_ComArrownockImCallbackIAnIMGetClientIdCallback == null) {}
      jdField_a_of_type_ComArrownockImCallbackIAnIMGetClientIdCallback.onError(localArrownockException);
    }
  }
}
