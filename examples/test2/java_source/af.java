import com.arrownock.im.callback.AnIMGetTopicListCallbackData;
import com.arrownock.im.callback.IAnIMGetTopicListCallback;

final class af
  implements Runnable
{
  af(f paramF, String paramString1, String paramString2, IAnIMGetTopicListCallback paramIAnIMGetTopicListCallback) {}
  
  public final void run()
  {
    AnIMGetTopicListCallbackData localAnIMGetTopicListCallbackData = f.a(jdField_a_of_type_F, jdField_a_of_type_JavaLangString, b);
    if (jdField_a_of_type_ComArrownockImCallbackIAnIMGetTopicListCallback != null)
    {
      if (localAnIMGetTopicListCallbackData.isError()) {
        jdField_a_of_type_ComArrownockImCallbackIAnIMGetTopicListCallback.onError(localAnIMGetTopicListCallbackData.getException());
      }
    }
    else {
      return;
    }
    jdField_a_of_type_ComArrownockImCallbackIAnIMGetTopicListCallback.onSuccess(localAnIMGetTopicListCallbackData);
  }
}
