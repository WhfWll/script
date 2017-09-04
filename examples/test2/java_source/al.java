import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.AnIMRemoveTopicCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class al
  implements Runnable
{
  al(f paramF, String paramString1, String paramString2) {}
  
  public final void run()
  {
    try
    {
      Object localObject = jdField_a_of_type_F.b(jdField_a_of_type_JavaLangString, b);
      if (f.a(jdField_a_of_type_F) != null)
      {
        localObject = new AnIMRemoveTopicCallbackData(false, null, (String)localObject);
        f.a(jdField_a_of_type_F).removeTopic((AnIMRemoveTopicCallbackData)localObject);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (f.a(jdField_a_of_type_F) == null) {}
      AnIMRemoveTopicCallbackData localAnIMRemoveTopicCallbackData = new AnIMRemoveTopicCallbackData(true, localArrownockException, null);
      f.a(jdField_a_of_type_F).removeTopic(localAnIMRemoveTopicCallbackData);
    }
  }
}
