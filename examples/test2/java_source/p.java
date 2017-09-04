import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.IAnIMPushBindingCallback;

final class p
  implements Runnable
{
  p(f paramF, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, IAnIMPushBindingCallback paramIAnIMPushBindingCallback) {}
  
  public final void run()
  {
    try
    {
      jdField_a_of_type_F.a(jdField_a_of_type_JavaLangString, b, c, d, e, true);
      if (jdField_a_of_type_ComArrownockImCallbackIAnIMPushBindingCallback != null) {
        jdField_a_of_type_ComArrownockImCallbackIAnIMPushBindingCallback.onSuccess();
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (jdField_a_of_type_ComArrownockImCallbackIAnIMPushBindingCallback == null) {}
      jdField_a_of_type_ComArrownockImCallbackIAnIMPushBindingCallback.onError(localArrownockException);
    }
  }
}
