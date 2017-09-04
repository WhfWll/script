import com.arrownock.im.callback.AnIMGetTopicInfoCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class u
  implements Runnable
{
  u(f paramF, String paramString1, String paramString2) {}
  
  public final void run()
  {
    AnIMGetTopicInfoCallbackData localAnIMGetTopicInfoCallbackData = f.a(jdField_a_of_type_F, jdField_a_of_type_JavaLangString, b);
    if (f.a(jdField_a_of_type_F) != null) {
      f.a(jdField_a_of_type_F).getTopicInfo(localAnIMGetTopicInfoCallbackData);
    }
  }
}
