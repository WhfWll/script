import com.arrownock.im.callback.AnIMGetTopicInfoCallbackData;
import com.arrownock.im.callback.IAnIMGetTopicInfoCallback;

final class v
  implements Runnable
{
  v(f paramF, String paramString1, String paramString2, IAnIMGetTopicInfoCallback paramIAnIMGetTopicInfoCallback) {}
  
  public final void run()
  {
    AnIMGetTopicInfoCallbackData localAnIMGetTopicInfoCallbackData = f.a(jdField_a_of_type_F, jdField_a_of_type_JavaLangString, b);
    if (jdField_a_of_type_ComArrownockImCallbackIAnIMGetTopicInfoCallback != null)
    {
      if (localAnIMGetTopicInfoCallbackData.isError()) {
        jdField_a_of_type_ComArrownockImCallbackIAnIMGetTopicInfoCallback.onError(localAnIMGetTopicInfoCallbackData.getException());
      }
    }
    else {
      return;
    }
    jdField_a_of_type_ComArrownockImCallbackIAnIMGetTopicInfoCallback.onSuccess(localAnIMGetTopicInfoCallbackData);
  }
}
