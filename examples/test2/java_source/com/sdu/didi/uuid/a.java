package com.sdu.didi.uuid;

import android.app.Activity;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.GpsSatellite;
import android.location.GpsStatus.Listener;
import android.location.LocationManager;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  private static Activity G;
  private static a a;
  private boolean A;
  private boolean B;
  private boolean C;
  private List<GpsSatellite> D = new ArrayList();
  private Object E = new Object();
  private boolean F = false;
  private SensorEventListener H = new d(this);
  private SensorEventListener I = new e(this);
  private SensorEventListener J = new f(this);
  private SensorEventListener K = new g(this);
  private SensorEventListener L = new h(this);
  private SensorEventListener M = new i(this);
  private SensorEventListener N = new j(this);
  private SensorEventListener O = new k(this);
  private GpsStatus.Listener P = new c(this);
  private SensorManager b;
  private LocationManager c;
  private float d;
  private float e;
  private float f;
  private float g;
  private float h;
  private float i;
  private float j;
  private float k;
  private float l;
  private float m;
  private float n;
  private float o;
  private float p;
  private float q;
  private float r;
  private float s;
  private float t;
  private float u;
  private boolean v;
  private boolean w;
  private boolean x;
  private boolean y;
  private boolean z;
  
  private a(Context paramContext)
  {
    b = ((SensorManager)paramContext.getSystemService("sensor"));
    c = ((LocationManager)paramContext.getSystemService("location"));
  }
  
  public static a a(Activity paramActivity)
  {
    try
    {
      if (a == null) {
        a = new a(paramActivity);
      }
      G = paramActivity;
      paramActivity = a;
      return paramActivity;
    }
    finally {}
  }
  
  void a()
  {
    for (;;)
    {
      try
      {
        boolean bool = F;
        if (bool) {
          return;
        }
        F = true;
        List[] arrayOfList = new List[1];
        arrayOfList[0] = null;
        Sensor localSensor;
        if (!v)
        {
          arrayOfList[0] = b.getSensorList(1);
          if ((arrayOfList[0] != null) && (arrayOfList[0].size() > 0))
          {
            localSensor = (Sensor)arrayOfList[0].get(0);
            v = b.registerListener(H, localSensor, 3);
          }
        }
        else
        {
          if (!w)
          {
            arrayOfList[0] = b.getSensorList(3);
            if ((arrayOfList[0] == null) || (arrayOfList[0].size() <= 0)) {
              break label517;
            }
            localSensor = (Sensor)arrayOfList[0].get(0);
            w = b.registerListener(I, localSensor, 3);
          }
          if (!x)
          {
            arrayOfList[0] = b.getSensorList(9);
            if ((arrayOfList[0] == null) || (arrayOfList[0].size() <= 0)) {
              break label525;
            }
            localSensor = (Sensor)arrayOfList[0].get(0);
            x = b.registerListener(J, localSensor, 3);
          }
          if (!y)
          {
            arrayOfList[0] = b.getSensorList(5);
            if ((arrayOfList[0] == null) || (arrayOfList[0].size() <= 0)) {
              break label533;
            }
            localSensor = (Sensor)arrayOfList[0].get(0);
            y = b.registerListener(K, localSensor, 3);
          }
          if (!z)
          {
            arrayOfList[0] = b.getSensorList(4);
            if ((arrayOfList[0] == null) || (arrayOfList[0].size() <= 0)) {
              break label541;
            }
            localSensor = (Sensor)arrayOfList[0].get(0);
            z = b.registerListener(L, localSensor, 3);
          }
          if (!A)
          {
            arrayOfList[0] = b.getSensorList(8);
            if ((arrayOfList[0] == null) || (arrayOfList[0].size() <= 0)) {
              break label549;
            }
            localSensor = (Sensor)arrayOfList[0].get(0);
            A = b.registerListener(M, localSensor, 3);
          }
          if (!B)
          {
            arrayOfList[0] = b.getSensorList(6);
            if ((arrayOfList[0] == null) || (arrayOfList[0].size() <= 0)) {
              break label557;
            }
            localSensor = (Sensor)arrayOfList[0].get(0);
            B = b.registerListener(N, localSensor, 3);
          }
          G.runOnUiThread(new b(this, arrayOfList));
          continue;
        }
        v = false;
      }
      finally {}
      continue;
      label517:
      w = false;
      continue;
      label525:
      x = false;
      continue;
      label533:
      y = false;
      continue;
      label541:
      z = false;
      continue;
      label549:
      A = false;
      continue;
      label557:
      B = false;
    }
  }
  
  void a(JSONObject paramJSONObject)
  {
    try
    {
      if (v)
      {
        paramJSONObject.putOpt("accelerometerX", d + "");
        paramJSONObject.putOpt("accelerometerY", e + "");
        paramJSONObject.putOpt("accelerometerZ", f + "");
      }
      if (w)
      {
        paramJSONObject.putOpt("orientationYaw", g + "");
        paramJSONObject.putOpt("orientationPitch", h + "");
        paramJSONObject.putOpt("orientationRoll", i + "");
      }
      if (x)
      {
        paramJSONObject.putOpt("gravityX", j + "");
        paramJSONObject.putOpt("gravityY", k + "");
        paramJSONObject.putOpt("gravityZ", l + "");
      }
      if (y) {
        paramJSONObject.putOpt("light", m + "");
      }
      if (z)
      {
        paramJSONObject.putOpt("gyroscopeX", n + "");
        paramJSONObject.putOpt("gyroscopeY", o + "");
        paramJSONObject.putOpt("gyroscopeZ", p + "");
      }
      if (A) {
        paramJSONObject.putOpt("proximity", q + "");
      }
      if (B) {
        paramJSONObject.putOpt("pressValue", r + "");
      }
      if (C)
      {
        paramJSONObject.putOpt("rotationVectorX", s + "");
        paramJSONObject.putOpt("rotationVectorY", t + "");
        paramJSONObject.putOpt("rotationVectorZ", u + "");
      }
      synchronized (E)
      {
        if (D.size() > 0)
        {
          JSONArray localJSONArray = new JSONArray();
          int i2 = D.size();
          int i1 = 0;
          while (i1 < i2)
          {
            GpsSatellite localGpsSatellite = (GpsSatellite)D.get(i1);
            JSONObject localJSONObject = new JSONObject();
            float f1 = localGpsSatellite.getAzimuth();
            float f2 = localGpsSatellite.getElevation();
            int i3 = localGpsSatellite.getPrn();
            float f3 = localGpsSatellite.getSnr();
            localJSONObject.put("az", f1);
            localJSONObject.put("el", f2);
            localJSONObject.put("prn", i3);
            localJSONObject.put("snr", f3);
            localJSONArray.put(i1, localJSONObject);
            i1 += 1;
          }
          paramJSONObject.putOpt("sat", localJSONArray);
        }
        return;
      }
      return;
    }
    catch (JSONException paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  /* Error */
  void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 70	com/sdu/didi/uuid/a:F	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 194	com/sdu/didi/uuid/a:v	Z
    //   18: ifeq +19 -> 37
    //   21: aload_0
    //   22: getfield 129	com/sdu/didi/uuid/a:b	Landroid/hardware/SensorManager;
    //   25: aload_0
    //   26: getfield 77	com/sdu/didi/uuid/a:H	Landroid/hardware/SensorEventListener;
    //   29: invokevirtual 342	android/hardware/SensorManager:unregisterListener	(Landroid/hardware/SensorEventListener;)V
    //   32: aload_0
    //   33: iconst_0
    //   34: putfield 194	com/sdu/didi/uuid/a:v	Z
    //   37: aload_0
    //   38: getfield 214	com/sdu/didi/uuid/a:w	Z
    //   41: ifeq +19 -> 60
    //   44: aload_0
    //   45: getfield 129	com/sdu/didi/uuid/a:b	Landroid/hardware/SensorManager;
    //   48: aload_0
    //   49: getfield 82	com/sdu/didi/uuid/a:I	Landroid/hardware/SensorEventListener;
    //   52: invokevirtual 342	android/hardware/SensorManager:unregisterListener	(Landroid/hardware/SensorEventListener;)V
    //   55: aload_0
    //   56: iconst_0
    //   57: putfield 214	com/sdu/didi/uuid/a:w	Z
    //   60: aload_0
    //   61: getfield 216	com/sdu/didi/uuid/a:x	Z
    //   64: ifeq +19 -> 83
    //   67: aload_0
    //   68: getfield 129	com/sdu/didi/uuid/a:b	Landroid/hardware/SensorManager;
    //   71: aload_0
    //   72: getfield 87	com/sdu/didi/uuid/a:J	Landroid/hardware/SensorEventListener;
    //   75: invokevirtual 342	android/hardware/SensorManager:unregisterListener	(Landroid/hardware/SensorEventListener;)V
    //   78: aload_0
    //   79: iconst_0
    //   80: putfield 216	com/sdu/didi/uuid/a:x	Z
    //   83: aload_0
    //   84: getfield 218	com/sdu/didi/uuid/a:y	Z
    //   87: ifeq +19 -> 106
    //   90: aload_0
    //   91: getfield 129	com/sdu/didi/uuid/a:b	Landroid/hardware/SensorManager;
    //   94: aload_0
    //   95: getfield 92	com/sdu/didi/uuid/a:K	Landroid/hardware/SensorEventListener;
    //   98: invokevirtual 342	android/hardware/SensorManager:unregisterListener	(Landroid/hardware/SensorEventListener;)V
    //   101: aload_0
    //   102: iconst_0
    //   103: putfield 218	com/sdu/didi/uuid/a:y	Z
    //   106: aload_0
    //   107: getfield 220	com/sdu/didi/uuid/a:z	Z
    //   110: ifeq +19 -> 129
    //   113: aload_0
    //   114: getfield 129	com/sdu/didi/uuid/a:b	Landroid/hardware/SensorManager;
    //   117: aload_0
    //   118: getfield 97	com/sdu/didi/uuid/a:L	Landroid/hardware/SensorEventListener;
    //   121: invokevirtual 342	android/hardware/SensorManager:unregisterListener	(Landroid/hardware/SensorEventListener;)V
    //   124: aload_0
    //   125: iconst_0
    //   126: putfield 220	com/sdu/didi/uuid/a:z	Z
    //   129: aload_0
    //   130: getfield 222	com/sdu/didi/uuid/a:A	Z
    //   133: ifeq +19 -> 152
    //   136: aload_0
    //   137: getfield 129	com/sdu/didi/uuid/a:b	Landroid/hardware/SensorManager;
    //   140: aload_0
    //   141: getfield 102	com/sdu/didi/uuid/a:M	Landroid/hardware/SensorEventListener;
    //   144: invokevirtual 342	android/hardware/SensorManager:unregisterListener	(Landroid/hardware/SensorEventListener;)V
    //   147: aload_0
    //   148: iconst_0
    //   149: putfield 222	com/sdu/didi/uuid/a:A	Z
    //   152: aload_0
    //   153: getfield 224	com/sdu/didi/uuid/a:B	Z
    //   156: ifeq +19 -> 175
    //   159: aload_0
    //   160: getfield 129	com/sdu/didi/uuid/a:b	Landroid/hardware/SensorManager;
    //   163: aload_0
    //   164: getfield 107	com/sdu/didi/uuid/a:N	Landroid/hardware/SensorEventListener;
    //   167: invokevirtual 342	android/hardware/SensorManager:unregisterListener	(Landroid/hardware/SensorEventListener;)V
    //   170: aload_0
    //   171: iconst_0
    //   172: putfield 224	com/sdu/didi/uuid/a:B	Z
    //   175: aload_0
    //   176: getfield 149	com/sdu/didi/uuid/a:C	Z
    //   179: ifeq +19 -> 198
    //   182: aload_0
    //   183: getfield 129	com/sdu/didi/uuid/a:b	Landroid/hardware/SensorManager;
    //   186: aload_0
    //   187: getfield 112	com/sdu/didi/uuid/a:O	Landroid/hardware/SensorEventListener;
    //   190: invokevirtual 342	android/hardware/SensorManager:unregisterListener	(Landroid/hardware/SensorEventListener;)V
    //   193: aload_0
    //   194: iconst_0
    //   195: putfield 149	com/sdu/didi/uuid/a:C	Z
    //   198: aload_0
    //   199: getfield 135	com/sdu/didi/uuid/a:c	Landroid/location/LocationManager;
    //   202: aload_0
    //   203: getfield 117	com/sdu/didi/uuid/a:P	Landroid/location/GpsStatus$Listener;
    //   206: invokevirtual 346	android/location/LocationManager:removeGpsStatusListener	(Landroid/location/GpsStatus$Listener;)V
    //   209: aload_0
    //   210: iconst_0
    //   211: putfield 70	com/sdu/didi/uuid/a:F	Z
    //   214: goto -203 -> 11
    //   217: astore_2
    //   218: aload_0
    //   219: monitorexit
    //   220: aload_2
    //   221: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	222	0	this	a
    //   6	2	1	bool	boolean
    //   217	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	217	finally
    //   14	37	217	finally
    //   37	60	217	finally
    //   60	83	217	finally
    //   83	106	217	finally
    //   106	129	217	finally
    //   129	152	217	finally
    //   152	175	217	finally
    //   175	198	217	finally
    //   198	214	217	finally
  }
}
