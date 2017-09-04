import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import java.util.Timer;

final class bb
  implements LocationListener
{
  bb(az paramAz) {}
  
  public final void onLocationChanged(Location paramLocation)
  {
    a.jdField_a_of_type_JavaUtilTimer.cancel();
    a.jdField_a_of_type_Bd.a(paramLocation);
    a.jdField_a_of_type_AndroidLocationLocationManager.removeUpdates(this);
    a.jdField_a_of_type_AndroidLocationLocationManager.removeUpdates(a.jdField_a_of_type_AndroidLocationLocationListener);
  }
  
  public final void onProviderDisabled(String paramString) {}
  
  public final void onProviderEnabled(String paramString) {}
  
  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}
