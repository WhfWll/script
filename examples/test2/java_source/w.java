import com.arrownock.im.callback.AnIMGetSessionInfoCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class w
  implements Runnable
{
  w(f paramF, String paramString1, String paramString2) {}
  
  public final void run()
  {
    AnIMGetSessionInfoCallbackData localAnIMGetSessionInfoCallbackData = jdField_a_of_type_F.a(jdField_a_of_type_JavaLangString, b);
    if (f.a(jdField_a_of_type_F) != null) {
      f.a(jdField_a_of_type_F).getSessionInfo(localAnIMGetSessionInfoCallbackData);
    }
  }
}
