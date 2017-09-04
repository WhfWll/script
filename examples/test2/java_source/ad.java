import com.arrownock.im.callback.AnIMGetClientsStatusCallbackData;
import com.arrownock.im.callback.IAnIMGetClientsStatusCallback;

final class ad
  implements Runnable
{
  ad(f paramF, String paramString1, String paramString2, IAnIMGetClientsStatusCallback paramIAnIMGetClientsStatusCallback) {}
  
  public final void run()
  {
    AnIMGetClientsStatusCallbackData localAnIMGetClientsStatusCallbackData = f.b(jdField_a_of_type_F, jdField_a_of_type_JavaLangString, b);
    if (jdField_a_of_type_ComArrownockImCallbackIAnIMGetClientsStatusCallback != null)
    {
      if (localAnIMGetClientsStatusCallbackData.isError()) {
        jdField_a_of_type_ComArrownockImCallbackIAnIMGetClientsStatusCallback.onError(localAnIMGetClientsStatusCallbackData.getException());
      }
    }
    else {
      return;
    }
    jdField_a_of_type_ComArrownockImCallbackIAnIMGetClientsStatusCallback.onSuccess(localAnIMGetClientsStatusCallbackData);
  }
}
