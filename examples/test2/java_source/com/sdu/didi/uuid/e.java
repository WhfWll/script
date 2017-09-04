package com.sdu.didi.uuid;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

class e
  implements SensorEventListener
{
  e(a paramA) {}
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    a.d(a, values[0]);
    a.e(a, values[1]);
    a.f(a, values[2]);
  }
}
