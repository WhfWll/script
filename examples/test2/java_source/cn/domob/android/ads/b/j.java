package cn.domob.android.ads.b;

import cn.domob.android.i.f;

abstract class j
{
  private static f a = new f(j.class.getSimpleName());
  
  j() {}
  
  private String a(String paramString)
  {
    if (paramString != null) {
      return paramString.replaceAll("[^a-zA-Z0-9_,:\\s\\{\\}\\'\\\"]", "");
    }
    return "";
  }
  
  public abstract String a();
  
  public String toString()
  {
    String str = a(a());
    a.a("MRAID property:" + str);
    return str;
  }
}
