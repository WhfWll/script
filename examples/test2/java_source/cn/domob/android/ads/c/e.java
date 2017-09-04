package cn.domob.android.ads.c;

import cn.domob.android.i.f;

public class e
{
  private static f a = new f(e.class.getSimpleName());
  
  public e() {}
  
  public static String a()
  {
    try
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append(Integer.valueOf("040602".substring(0, 2))).append(".").append(Integer.valueOf("040602".substring(2, 4))).append(".").append(Integer.valueOf("040602".substring(4, 6)));
      localObject = ((StringBuilder)localObject).toString();
      return localObject;
    }
    catch (Exception localException)
    {
      a.a(localException);
    }
    return "040602";
  }
  
  public static String b()
  {
    try
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("20141125".substring(0, 4)).append("-").append("20141125".substring(4, 6)).append("-").append("20141125".substring(6, 8));
      localObject = ((StringBuilder)localObject).toString();
      return localObject;
    }
    catch (Exception localException)
    {
      a.a(localException);
    }
    return "20141125";
  }
}
