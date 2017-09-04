import com.arrownock.exception.ArrownockException;
import com.arrownock.push.IAnPushRegistrationCallback;

final class ds
  implements Runnable
{
  ds(df paramDf, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, IAnPushRegistrationCallback paramIAnPushRegistrationCallback) {}
  
  public final void run()
  {
    for (;;)
    {
      try
      {
        if ((jdField_a_of_type_JavaLangString == null) || ("".equals(jdField_a_of_type_JavaLangString.trim()))) {
          continue;
        }
        str = jdField_a_of_type_Df.a("ANID");
        if (!b.equals("android-gcm")) {
          continue;
        }
        if (str == null) {
          continue;
        }
        jdField_a_of_type_Df.a(c, null, d, jdField_a_of_type_Boolean, b, str);
      }
      catch (ArrownockException localArrownockException)
      {
        String str;
        if (jdField_a_of_type_ComArrownockPushIAnPushRegistrationCallback == null) {
          return;
        }
        jdField_a_of_type_ComArrownockPushIAnPushRegistrationCallback.onError(localArrownockException);
        return;
        jdField_a_of_type_Df.a(c, jdField_a_of_type_JavaLangString, d, jdField_a_of_type_Boolean, b, null);
        jdField_a_of_type_Df.a("ANID");
        continue;
        bk.a().c(df.b(), "Device Token is null.");
      }
      if (jdField_a_of_type_ComArrownockPushIAnPushRegistrationCallback == null) {
        return;
      }
      jdField_a_of_type_ComArrownockPushIAnPushRegistrationCallback.onSuccess(str);
      return;
      jdField_a_of_type_Df.a(c, jdField_a_of_type_JavaLangString, d, jdField_a_of_type_Boolean, b, null);
    }
  }
}
