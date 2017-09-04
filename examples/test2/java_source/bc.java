import android.location.Location;
import android.location.LocationManager;
import java.util.TimerTask;

final class bc
  extends TimerTask
{
  bc(az paramAz) {}
  
  public final void run()
  {
    a.jdField_a_of_type_AndroidLocationLocationManager.removeUpdates(a.jdField_a_of_type_AndroidLocationLocationListener);
    a.jdField_a_of_type_AndroidLocationLocationManager.removeUpdates(a.jdField_b_of_type_AndroidLocationLocationListener);
    if (a.jdField_a_of_type_Boolean) {}
    for (Location localLocation1 = a.jdField_a_of_type_AndroidLocationLocationManager.getLastKnownLocation("gps");; localLocation1 = null)
    {
      if (a.jdField_b_of_type_Boolean) {}
      for (Location localLocation2 = a.jdField_a_of_type_AndroidLocationLocationManager.getLastKnownLocation("network");; localLocation2 = null)
      {
        if ((localLocation1 != null) && (localLocation2 != null))
        {
          if (localLocation1.getTime() > localLocation2.getTime())
          {
            a.jdField_a_of_type_Bd.a(localLocation1);
            return;
          }
          a.jdField_a_of_type_Bd.a(localLocation2);
          return;
        }
        if (localLocation1 != null)
        {
          a.jdField_a_of_type_Bd.a(localLocation1);
          return;
        }
        if (localLocation2 != null)
        {
          a.jdField_a_of_type_Bd.a(localLocation2);
          return;
        }
        a.jdField_a_of_type_Bd.a(null);
        return;
      }
    }
  }
}
