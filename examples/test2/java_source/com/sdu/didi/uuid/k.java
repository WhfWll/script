package com.sdu.didi.uuid;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

class k
  implements SensorEventListener
{
  k(a paramA) {}
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    a.p(a, values[0]);
    a.q(a, values[1]);
    a.r(a, values[2]);
  }
}
