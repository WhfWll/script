import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.AnIMUpdateTopicCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class i
  implements Runnable
{
  i(f paramF, String paramString1, String paramString2, String paramString3, String paramString4) {}
  
  public final void run()
  {
    try
    {
      Object localObject = jdField_a_of_type_F.b(jdField_a_of_type_JavaLangString, b, c, d);
      if (f.a(jdField_a_of_type_F) != null)
      {
        localObject = new AnIMUpdateTopicCallbackData(false, null, (String)localObject);
        f.a(jdField_a_of_type_F).updateTopic((AnIMUpdateTopicCallbackData)localObject);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (f.a(jdField_a_of_type_F) == null) {}
      AnIMUpdateTopicCallbackData localAnIMUpdateTopicCallbackData = new AnIMUpdateTopicCallbackData(true, localArrownockException, null);
      f.a(jdField_a_of_type_F).updateTopic(localAnIMUpdateTopicCallbackData);
    }
  }
}
