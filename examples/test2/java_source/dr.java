import com.arrownock.exception.ArrownockException;
import com.arrownock.push.IAnPushCallback;

final class dr
  implements Runnable
{
  dr(df paramDf, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, IAnPushCallback paramIAnPushCallback) {}
  
  public final void run()
  {
    for (;;)
    {
      try
      {
        if ((jdField_a_of_type_JavaLangString == null) || ("".equals(jdField_a_of_type_JavaLangString.trim()))) {
          continue;
        }
        if (!b.equals("android-gcm")) {
          continue;
        }
        String str = jdField_a_of_type_Df.a("ANID");
        if (str == null) {
          continue;
        }
        jdField_a_of_type_Df.a(c, null, d, jdField_a_of_type_Boolean, b, str);
      }
      catch (ArrownockException localArrownockException)
      {
        if (jdField_a_of_type_ComArrownockPushIAnPushCallback == null) {
          return;
        }
        jdField_a_of_type_ComArrownockPushIAnPushCallback.unregister(true, localArrownockException);
        return;
        jdField_a_of_type_Df.a(c, jdField_a_of_type_JavaLangString, d, jdField_a_of_type_Boolean, b, null);
        jdField_a_of_type_Df.a("ANID");
        continue;
        bk.a().c(df.b(), "Device Token is null.");
      }
      if (jdField_a_of_type_ComArrownockPushIAnPushCallback == null) {
        return;
      }
      jdField_a_of_type_ComArrownockPushIAnPushCallback.unregister(false, null);
      return;
      jdField_a_of_type_Df.a(c, jdField_a_of_type_JavaLangString, d, jdField_a_of_type_Boolean, b, null);
    }
  }
}
