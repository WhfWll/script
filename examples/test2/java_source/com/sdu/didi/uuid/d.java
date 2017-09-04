package com.sdu.didi.uuid;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

class d
  implements SensorEventListener
{
  d(a paramA) {}
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    a.a(a, values[0]);
    a.b(a, values[1]);
    a.c(a, values[2]);
  }
}
