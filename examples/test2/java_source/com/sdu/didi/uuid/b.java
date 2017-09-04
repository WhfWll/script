package com.sdu.didi.uuid;

import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.location.LocationManager;
import java.util.List;

class b
  implements Runnable
{
  b(a paramA, List[] paramArrayOfList) {}
  
  public void run()
  {
    if (!a.a(b))
    {
      a[0] = a.b(b).getSensorList(11);
      if ((a[0] == null) || (a[0].size() <= 0)) {
        break label113;
      }
      Sensor localSensor = (Sensor)a[0].get(0);
      a.a(b, a.b(b).registerListener(a.c(b), localSensor, 3));
    }
    for (;;)
    {
      a.e(b).addGpsStatusListener(a.d(b));
      return;
      label113:
      a.a(b, false);
    }
  }
}
