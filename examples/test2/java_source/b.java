import com.arrownock.exception.ArrownockException;
import com.arrownock.im.AnIM;
import com.arrownock.im.callback.AnIMMessageSentCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

public final class b
  implements Runnable
{
  public b(AnIM paramAnIM, String paramString) {}
  
  public final void run()
  {
    AnIMMessageSentCallbackData localAnIMMessageSentCallbackData = new AnIMMessageSentCallbackData(true, new ArrownockException("Failed to send message, client is offline.", 3104), jdField_a_of_type_JavaLangString, -1L);
    AnIM.a(jdField_a_of_type_ComArrownockImAnIM).messageSent(localAnIMMessageSentCallbackData);
  }
}
