import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

final class bf
  implements Runnable
{
  bf(be paramBe, SharedPreferences paramSharedPreferences) {}
  
  public final void run()
  {
    Object localObject = be.a(jdField_a_of_type_Be);
    if (localObject == null) {}
    do
    {
      String str;
      do
      {
        return;
        str = jdField_a_of_type_Be.a();
      } while ("".equals(str));
      ((List)localObject).add(new BasicNameValuePair("device_id", str));
      ((List)localObject).add(new BasicNameValuePair("device_type", "android"));
      ((List)localObject).add(new BasicNameValuePair("an_sdk", "2.25.3"));
    } while (be.a(jdField_a_of_type_Be, be.a(jdField_a_of_type_Be) + "?key=" + be.b(jdField_a_of_type_Be), "POST", (List)localObject) != 200);
    localObject = jdField_a_of_type_AndroidContentSharedPreferences.edit();
    ((SharedPreferences.Editor)localObject).putBoolean("com.arrownock.internal.device.IS_REPORTED", true);
    ((SharedPreferences.Editor)localObject).putString("com.arrownock.internal.device.SDK_VERSION", "2.25.3");
    ((SharedPreferences.Editor)localObject).commit();
  }
}
