import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.AnIMMessageSentCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class t
  implements Runnable
{
  t(f paramF, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, boolean paramBoolean) {}
  
  public final void run()
  {
    try
    {
      jdField_a_of_type_F.b(jdField_a_of_type_JavaLangString, b, c, d, e, f, g, jdField_a_of_type_Boolean);
      if (f.a(jdField_a_of_type_F) != null)
      {
        AnIMMessageSentCallbackData localAnIMMessageSentCallbackData1 = new AnIMMessageSentCallbackData(false, null, g, -1L);
        f.a(jdField_a_of_type_F).messageSent(localAnIMMessageSentCallbackData1);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (f.a(jdField_a_of_type_F) == null) {}
      AnIMMessageSentCallbackData localAnIMMessageSentCallbackData2 = new AnIMMessageSentCallbackData(true, localArrownockException, null, -1L);
      f.a(jdField_a_of_type_F).messageSent(localAnIMMessageSentCallbackData2);
    }
  }
}
