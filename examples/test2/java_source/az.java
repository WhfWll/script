import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.util.Log;
import java.util.Timer;

public final class az
{
  LocationListener jdField_a_of_type_AndroidLocationLocationListener = new ba(this);
  LocationManager jdField_a_of_type_AndroidLocationLocationManager;
  bd jdField_a_of_type_Bd;
  Timer jdField_a_of_type_JavaUtilTimer;
  boolean jdField_a_of_type_Boolean = false;
  LocationListener jdField_b_of_type_AndroidLocationLocationListener = new bb(this);
  boolean jdField_b_of_type_Boolean = false;
  
  public az() {}
  
  public static String a(byte[] paramArrayOfByte)
  {
    int m = 0;
    if (paramArrayOfByte == null) {
      return null;
    }
    byte[] arrayOfByte1 = new byte[paramArrayOfByte.length + 2];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, 0, paramArrayOfByte.length);
    byte[] arrayOfByte2 = new byte[arrayOfByte1.length / 3 << 2];
    int i = 0;
    int j = 0;
    int k;
    for (;;)
    {
      k = m;
      if (j >= paramArrayOfByte.length) {
        break;
      }
      arrayOfByte2[i] = ((byte)(arrayOfByte1[j] >>> 2 & 0x3F));
      arrayOfByte2[(i + 1)] = ((byte)(arrayOfByte1[(j + 1)] >>> 4 & 0xF | arrayOfByte1[j] << 4 & 0x3F));
      arrayOfByte2[(i + 2)] = ((byte)(arrayOfByte1[(j + 2)] >>> 6 & 0x3 | arrayOfByte1[(j + 1)] << 2 & 0x3F));
      arrayOfByte2[(i + 3)] = ((byte)(arrayOfByte1[(j + 2)] & 0x3F));
      j += 3;
      i += 4;
    }
    if (k < arrayOfByte2.length)
    {
      if (arrayOfByte2[k] < 26) {
        arrayOfByte2[k] = ((byte)(arrayOfByte2[k] + 65));
      }
      for (;;)
      {
        k += 1;
        break;
        if (arrayOfByte2[k] < 52) {
          arrayOfByte2[k] = ((byte)(arrayOfByte2[k] + 97 - 26));
        } else if (arrayOfByte2[k] < 62) {
          arrayOfByte2[k] = ((byte)(arrayOfByte2[k] + 48 - 52));
        } else if (arrayOfByte2[k] < 63) {
          arrayOfByte2[k] = 43;
        } else {
          arrayOfByte2[k] = 47;
        }
      }
    }
    i = arrayOfByte2.length - 1;
    while (i > (paramArrayOfByte.length << 2) / 3)
    {
      arrayOfByte2[i] = 61;
      i -= 1;
    }
    return new String(arrayOfByte2);
  }
  
  public static byte[] a(String paramString)
  {
    int j = 0;
    if (paramString == null) {
      return null;
    }
    paramString = paramString.getBytes();
    int i = paramString.length;
    while (paramString[(i - 1)] == 61) {
      i -= 1;
    }
    byte[] arrayOfByte = new byte[i - paramString.length / 4];
    i = 0;
    if (i < paramString.length)
    {
      if (paramString[i] == 61) {
        paramString[i] = 0;
      }
      for (;;)
      {
        i += 1;
        break;
        if (paramString[i] == 47) {
          paramString[i] = 63;
        } else if (paramString[i] == 43) {
          paramString[i] = 62;
        } else if ((paramString[i] >= 48) && (paramString[i] <= 57)) {
          paramString[i] = ((byte)(paramString[i] + 4));
        } else if ((paramString[i] >= 97) && (paramString[i] <= 122)) {
          paramString[i] = ((byte)(paramString[i] - 71));
        } else if ((paramString[i] >= 65) && (paramString[i] <= 90)) {
          paramString[i] = ((byte)(paramString[i] - 65));
        }
      }
    }
    i = 0;
    while (j < arrayOfByte.length - 2)
    {
      arrayOfByte[j] = ((byte)(paramString[i] << 2 & 0xFF | paramString[(i + 1)] >>> 4 & 0x3));
      arrayOfByte[(j + 1)] = ((byte)(paramString[(i + 1)] << 4 & 0xFF | paramString[(i + 2)] >>> 2 & 0xF));
      arrayOfByte[(j + 2)] = ((byte)(paramString[(i + 2)] << 6 & 0xFF | paramString[(i + 3)] & 0x3F));
      i += 4;
      j += 3;
    }
    if (j < arrayOfByte.length) {
      arrayOfByte[j] = ((byte)(paramString[i] << 2 & 0xFF | paramString[(i + 1)] >>> 4 & 0x3));
    }
    j += 1;
    if (j < arrayOfByte.length)
    {
      int k = paramString[(i + 1)];
      arrayOfByte[j] = ((byte)(paramString[(i + 2)] >>> 2 & 0xF | k << 4 & 0xFF));
    }
    return arrayOfByte;
  }
  
  public final boolean a(Context paramContext, bd paramBd)
  {
    jdField_a_of_type_Bd = paramBd;
    if (jdField_a_of_type_AndroidLocationLocationManager == null) {
      jdField_a_of_type_AndroidLocationLocationManager = ((LocationManager)paramContext.getSystemService("location"));
    }
    try
    {
      jdField_a_of_type_Boolean = jdField_a_of_type_AndroidLocationLocationManager.isProviderEnabled("gps");
      try
      {
        jdField_b_of_type_Boolean = jdField_a_of_type_AndroidLocationLocationManager.isProviderEnabled("network");
        if ((!jdField_a_of_type_Boolean) && (!jdField_b_of_type_Boolean))
        {
          try
          {
            Location localLocation = jdField_a_of_type_AndroidLocationLocationManager.getLastKnownLocation("gps");
            paramContext = localLocation;
            if (localLocation == null) {
              paramContext = jdField_a_of_type_AndroidLocationLocationManager.getLastKnownLocation("network");
            }
            if (paramContext != null)
            {
              paramBd.a(paramContext);
              return true;
            }
          }
          catch (Exception paramContext)
          {
            Log.w("DeviceManager", paramContext.getMessage());
            paramContext.printStackTrace();
          }
          return false;
        }
        if (jdField_a_of_type_Boolean) {
          jdField_a_of_type_AndroidLocationLocationManager.requestLocationUpdates("gps", 0L, 0.0F, jdField_a_of_type_AndroidLocationLocationListener);
        }
        if (jdField_b_of_type_Boolean) {
          jdField_a_of_type_AndroidLocationLocationManager.requestLocationUpdates("network", 0L, 0.0F, jdField_b_of_type_AndroidLocationLocationListener);
        }
        jdField_a_of_type_JavaUtilTimer = new Timer();
        jdField_a_of_type_JavaUtilTimer.schedule(new bc(this), 20000L);
        return true;
      }
      catch (Exception paramContext)
      {
        for (;;) {}
      }
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
  }
}
