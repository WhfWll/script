package cn.domob.android.ads;

import android.webkit.WebView;
import cn.domob.android.i.f;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

public class I
{
  public static final String a = "Webview_hashcode";
  public static final int b = 1;
  public static final int c = 2;
  public static final String d = "webview_type_name";
  private static final int e = 3;
  private static LinkedHashMap<String, WebView> f = new LinkedHashMap();
  private static f g = new f(I.class.getSimpleName());
  
  public I() {}
  
  public static LinkedHashMap<String, WebView> a()
  {
    return f;
  }
  
  public static void b()
  {
    Object localObject = new LinkedHashMap();
    if (((LinkedHashMap)localObject).size() >= 3)
    {
      localObject = ((LinkedHashMap)localObject).keySet().iterator().next();
      a().remove(localObject);
      g.b("There are more than 3 webviews in the static map, delete the earlest one");
    }
  }
}
