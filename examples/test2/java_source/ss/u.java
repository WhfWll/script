package ss;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

final class u
  implements t
{
  u() {}
  
  public List<InetAddress> a(String paramString)
    throws UnknownHostException
  {
    if (paramString == null) {
      throw new UnknownHostException("hostname == null");
    }
    return Arrays.asList(InetAddress.getAllByName(paramString));
  }
}
