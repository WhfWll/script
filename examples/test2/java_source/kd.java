import java.util.MissingResourceException;
import java.util.ResourceBundle;

public class kd
  extends ka
{
  private ResourceBundle a = ResourceBundle.getBundle("org.eclipse.paho.client.mqttv3.internal.nls.messages");
  
  public kd()
    throws MissingResourceException
  {}
  
  protected final String b(int paramInt)
  {
    try
    {
      String str = a.getString(Integer.toString(paramInt));
      return str;
    }
    catch (MissingResourceException localMissingResourceException) {}
    return "MqttException";
  }
}
