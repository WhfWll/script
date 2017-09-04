import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.AnIMUnbindAnPushServiceCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class q
  implements Runnable
{
  q(f paramF, String paramString1, String paramString2) {}
  
  public final void run()
  {
    try
    {
      jdField_a_of_type_F.a(jdField_a_of_type_JavaLangString, b, null, null, null, false);
      if (f.a(jdField_a_of_type_F) != null)
      {
        AnIMUnbindAnPushServiceCallbackData localAnIMUnbindAnPushServiceCallbackData1 = new AnIMUnbindAnPushServiceCallbackData(false, null);
        f.a(jdField_a_of_type_F).unbindAnPushService(localAnIMUnbindAnPushServiceCallbackData1);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (f.a(jdField_a_of_type_F) == null) {}
      AnIMUnbindAnPushServiceCallbackData localAnIMUnbindAnPushServiceCallbackData2 = new AnIMUnbindAnPushServiceCallbackData(true, localArrownockException);
      f.a(jdField_a_of_type_F).unbindAnPushService(localAnIMUnbindAnPushServiceCallbackData2);
    }
  }
}
