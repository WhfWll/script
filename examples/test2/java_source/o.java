import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.AnIMBindAnPushServiceCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class o
  implements Runnable
{
  o(f paramF, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {}
  
  public final void run()
  {
    try
    {
      jdField_a_of_type_F.a(jdField_a_of_type_JavaLangString, b, c, d, e, true);
      if (f.a(jdField_a_of_type_F) != null)
      {
        AnIMBindAnPushServiceCallbackData localAnIMBindAnPushServiceCallbackData1 = new AnIMBindAnPushServiceCallbackData(false, null);
        f.a(jdField_a_of_type_F).bindAnPushService(localAnIMBindAnPushServiceCallbackData1);
      }
      return;
    }
    catch (ArrownockException localArrownockException)
    {
      while (f.a(jdField_a_of_type_F) == null) {}
      AnIMBindAnPushServiceCallbackData localAnIMBindAnPushServiceCallbackData2 = new AnIMBindAnPushServiceCallbackData(true, localArrownockException);
      f.a(jdField_a_of_type_F).bindAnPushService(localAnIMBindAnPushServiceCallbackData2);
    }
  }
}
