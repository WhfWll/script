import com.arrownock.im.callback.AnIMGetClientsStatusCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class z
  implements Runnable
{
  z(f paramF, String paramString1, String paramString2) {}
  
  public final void run()
  {
    AnIMGetClientsStatusCallbackData localAnIMGetClientsStatusCallbackData = f.a(jdField_a_of_type_F, jdField_a_of_type_JavaLangString, b);
    if (f.a(jdField_a_of_type_F) != null) {
      f.a(jdField_a_of_type_F).getClientsStatus(localAnIMGetClientsStatusCallbackData);
    }
  }
}
