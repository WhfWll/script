import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.IAnIMPushBindingCallback;

final class s
  implements Runnable
{
  s(f paramF, String paramString1, String paramString2, IAnIMPushBindingCallback paramIAnIMPushBindingCallback) {}
  
  public final void run()
  {
    try
    {
      jdField_a_of_type_F.a(jdField_a_of_type_JavaLangString, b, null, null, null, false);
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
