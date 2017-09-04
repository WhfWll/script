import com.arrownock.im.callback.AnIMGetClientsStatusCallbackData;
import com.arrownock.im.callback.IAnIMCallback;

final class ab
  implements Runnable
{
  ab(f paramF, String paramString1, String paramString2) {}
  
  public final void run()
  {
    AnIMGetClientsStatusCallbackData localAnIMGetClientsStatusCallbackData = f.b(jdField_a_of_type_F, jdField_a_of_type_JavaLangString, b);
    f.a(jdField_a_of_type_F).getClientsStatus(localAnIMGetClientsStatusCallbackData);
  }
}
