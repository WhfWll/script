import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.AnIMCreateTopicCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class as
  implements Runnable
{
  as(f paramF, String paramString1, String paramString2, String paramString3, String paramString4) {}
  
  public final void run()
  {
    try
    {
      Object localObject = jdField_a_of_type_F.a(jdField_a_of_type_JavaLangString, b, c, d);
      if (f.a(jdField_a_of_type_F) != null)
      {
        localObject = new AnIMCreateTopicCallbackData(false, null, (String)localObject);
        f.a(jdField_a_of_type_F).createTopic((AnIMCreateTopicCallbackData)localObject);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (f.a(jdField_a_of_type_F) == null) {}
      AnIMCreateTopicCallbackData localAnIMCreateTopicCallbackData = new AnIMCreateTopicCallbackData(true, localArrownockException, null);
      f.a(jdField_a_of_type_F).createTopic(localAnIMCreateTopicCallbackData);
    }
  }
}
