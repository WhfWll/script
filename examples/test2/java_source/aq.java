import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.AnIMMessageSentCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class aq
  implements Runnable
{
  aq(f paramF, String paramString) {}
  
  public final void run()
  {
    AnIMMessageSentCallbackData localAnIMMessageSentCallbackData = new AnIMMessageSentCallbackData(true, new ArrownockException("Failed to send message, client is offline.", 3104), jdField_a_of_type_JavaLangString, -1L);
    f.a(jdField_a_of_type_F).messageSent(localAnIMMessageSentCallbackData);
  }
}
