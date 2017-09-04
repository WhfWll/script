import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.location.Location;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

final class bg
  implements Runnable
{
  bg(be paramBe, Location paramLocation) {}
  
  public final void run()
  {
    Object localObject = new ArrayList();
    String str = jdField_a_of_type_Be.a();
    if ("".equals(str)) {
      return;
    }
    ((List)localObject).add(new BasicNameValuePair("device_id", str));
    ((List)localObject).add(new BasicNameValuePair("device_type", "android"));
    ((List)localObject).add(new BasicNameValuePair("an_sdk", "2.25.3"));
    ((List)localObject).add(new BasicNameValuePair("lat", String.valueOf(jdField_a_of_type_AndroidLocationLocation.getLatitude())));
    ((List)localObject).add(new BasicNameValuePair("lng", String.valueOf(jdField_a_of_type_AndroidLocationLocation.getLongitude())));
    ((List)localObject).add(new BasicNameValuePair("acc", String.valueOf(jdField_a_of_type_AndroidLocationLocation.getAccuracy())));
    ((List)localObject).add(new BasicNameValuePair("provider", String.valueOf(jdField_a_of_type_AndroidLocationLocation.getProvider())));
    ((List)localObject).add(new BasicNameValuePair("alt", String.valueOf(jdField_a_of_type_AndroidLocationLocation.getAltitude())));
    be.a(jdField_a_of_type_Be, be.c(jdField_a_of_type_Be) + "?key=" + be.b(jdField_a_of_type_Be), "POST", (List)localObject);
    localObject = be.a(jdField_a_of_type_Be).getSharedPreferences(be.b(), 0).edit();
    ((SharedPreferences.Editor)localObject).putLong("com.arrownock.internal.device.LAST_LOCATION_REPORT", Calendar.getInstance().getTimeInMillis());
    ((SharedPreferences.Editor)localObject).commit();
  }
}
