package ss;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

public abstract interface t
{
  public static final t a = new u();
  
  public abstract List<InetAddress> a(String paramString)
    throws UnknownHostException;
}
