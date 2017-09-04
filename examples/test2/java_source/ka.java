public abstract class ka
{
  private static ka a = null;
  
  public ka() {}
  
  public static final String a(int paramInt)
  {
    if ((a != null) || (at.b("java.util.ResourceBundle"))) {}
    for (;;)
    {
      try
      {
        a = (ka)Class.forName("kd").newInstance();
        return a.b(paramInt);
      }
      catch (Exception localException1)
      {
        return "";
      }
      if (at.b("org.eclipse.paho.client.mqttv3.internal.MIDPCatalog")) {
        try
        {
          a = (ka)Class.forName("org.eclipse.paho.client.mqttv3.internal.MIDPCatalog").newInstance();
        }
        catch (Exception localException2) {}
      }
    }
    return "";
  }
  
  protected abstract String b(int paramInt);
}
