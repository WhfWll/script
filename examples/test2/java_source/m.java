import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.AnIMRemoveClientsCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class m
  implements Runnable
{
  m(f paramF, String paramString1, String paramString2, String paramString3) {}
  
  public final void run()
  {
    try
    {
      jdField_a_of_type_F.e(jdField_a_of_type_JavaLangString, b, c);
      if (f.a(jdField_a_of_type_F) != null)
      {
        AnIMRemoveClientsCallbackData localAnIMRemoveClientsCallbackData1 = new AnIMRemoveClientsCallbackData(false, null);
        f.a(jdField_a_of_type_F).removeClientsFromTopic(localAnIMRemoveClientsCallbackData1);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (f.a(jdField_a_of_type_F) == null) {}
      AnIMRemoveClientsCallbackData localAnIMRemoveClientsCallbackData2 = new AnIMRemoveClientsCallbackData(true, localArrownockException);
      f.a(jdField_a_of_type_F).removeClientsFromTopic(localAnIMRemoveClientsCallbackData2);
    }
  }
}
