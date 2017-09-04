import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.AnIMStatusUpdateCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class ac
  implements Runnable
{
  ac(f paramF, String paramString1, String paramString2) {}
  
  public final void run()
  {
    try
    {
      Object localObject2 = jdField_a_of_type_F.a(jdField_a_of_type_JavaLangString);
      Object localObject1;
      if ((localObject2 != null) && (a != null) && (!"".equals(a)))
      {
        localObject1 = (String)a;
        int i = ((Integer)b).intValue();
        localObject2 = "ANIM/" + jdField_a_of_type_JavaLangString + '/' + b;
        String str = jdField_a_of_type_JavaLangString;
        jdField_a_of_type_F.a((String)localObject1, i, (String)localObject2, str, f.a(jdField_a_of_type_F));
        return;
      }
      if (f.a(jdField_a_of_type_F) != null)
      {
        localObject1 = new AnIMStatusUpdateCallbackData(jdField_a_of_type_F.a(), new ArrownockException("Failed to get server info", 3101));
        f.a(jdField_a_of_type_F).statusUpdate((AnIMStatusUpdateCallbackData)localObject1);
        return;
      }
    }
    catch (ArrownockException localArrownockException)
    {
      AnIMStatusUpdateCallbackData localAnIMStatusUpdateCallbackData = new AnIMStatusUpdateCallbackData(jdField_a_of_type_F.a(), localArrownockException);
      if (f.a(jdField_a_of_type_F) != null) {
        f.a(jdField_a_of_type_F).statusUpdate(localAnIMStatusUpdateCallbackData);
      }
    }
  }
}
