import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.AnIMGetClientIdCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class g
  implements Runnable
{
  g(f paramF, String paramString1, String paramString2) {}
  
  public final void run()
  {
    try
    {
      Object localObject = jdField_a_of_type_F.a(jdField_a_of_type_JavaLangString, b);
      if (f.a(jdField_a_of_type_F) != null)
      {
        localObject = new AnIMGetClientIdCallbackData(false, null, (String)localObject);
        f.a(jdField_a_of_type_F).getClientId((AnIMGetClientIdCallbackData)localObject);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (f.a(jdField_a_of_type_F) == null) {}
      AnIMGetClientIdCallbackData localAnIMGetClientIdCallbackData = new AnIMGetClientIdCallbackData(true, localArrownockException, null);
      f.a(jdField_a_of_type_F).getClientId(localAnIMGetClientIdCallbackData);
    }
  }
}
