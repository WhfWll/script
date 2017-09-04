import com.arrownock.im.callback.AnIMGetTopicListCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class ae
  implements Runnable
{
  ae(f paramF, String paramString1, String paramString2) {}
  
  public final void run()
  {
    AnIMGetTopicListCallbackData localAnIMGetTopicListCallbackData = f.a(jdField_a_of_type_F, jdField_a_of_type_JavaLangString, b);
    if (f.a(jdField_a_of_type_F) != null) {
      f.a(jdField_a_of_type_F).getTopicList(localAnIMGetTopicListCallbackData);
    }
  }
}
