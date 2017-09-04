package ss.ss.gK;

import java.net.Proxy.Type;
import ss.ag;
import ss.y;

public final class r
{
  static String a(ag paramAg, Proxy.Type paramType)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramAg.b());
    localStringBuilder.append(' ');
    if (b(paramAg, paramType)) {
      localStringBuilder.append(paramAg.a());
    }
    for (;;)
    {
      localStringBuilder.append(" HTTP/1.1");
      return localStringBuilder.toString();
      localStringBuilder.append(a(paramAg.a()));
    }
  }
  
  public static String a(y paramY)
  {
    String str1 = paramY.h();
    String str2 = paramY.j();
    paramY = str1;
    if (str2 != null) {
      paramY = str1 + '?' + str2;
    }
    return paramY;
  }
  
  private static boolean b(ag paramAg, Proxy.Type paramType)
  {
    return (!paramAg.g()) && (paramType == Proxy.Type.HTTP);
  }
}
