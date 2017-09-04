import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.AnIMAddClientsCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class k
  implements Runnable
{
  k(f paramF, String paramString1, String paramString2, String paramString3) {}
  
  public final void run()
  {
    try
    {
      jdField_a_of_type_F.c(jdField_a_of_type_JavaLangString, b, c);
      if (f.a(jdField_a_of_type_F) != null)
      {
        AnIMAddClientsCallbackData localAnIMAddClientsCallbackData1 = new AnIMAddClientsCallbackData(false, null);
        f.a(jdField_a_of_type_F).addClientsToTopic(localAnIMAddClientsCallbackData1);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (f.a(jdField_a_of_type_F) == null) {}
      AnIMAddClientsCallbackData localAnIMAddClientsCallbackData2 = new AnIMAddClientsCallbackData(true, localArrownockException);
      f.a(jdField_a_of_type_F).addClientsToTopic(localAnIMAddClientsCallbackData2);
    }
  }
}
