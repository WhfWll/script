package cn.domob.wall.core.c;

import android.content.Context;
import cn.domob.wall.core.bean.a;
import cn.domob.wall.core.h.d;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class f
{
  private static d a = new d(f.class.getSimpleName());
  private static final String e = "error";
  private String b;
  private String c;
  private a d;
  private List<String> f = new ArrayList();
  
  public f() {}
  
  private boolean b(Context paramContext, String paramString)
  {
    try
    {
      paramString = new JSONObject(new JSONTokener(paramString));
      b = paramString.optString("sid", "");
      c = paramString.optString("cid", "");
      if ((c != null) && (!c.equals(""))) {
        h.a().a(paramContext, c);
      }
      try
      {
        paramContext = new JSONArray(paramString.getString("hotword"));
        if (paramContext != null)
        {
          i = 0;
          int j = paramContext.length();
          if (i >= j) {
            break label200;
          }
        }
      }
      catch (JSONException paramContext)
      {
        try
        {
          for (;;)
          {
            int i;
            a.b("hotword:" + paramContext.getString(i));
            f.add(paramContext.getString(i));
            i += 1;
          }
          paramContext = paramContext;
          a.b(paramContext.toString());
          paramContext = null;
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            a.a(localJSONException);
          }
        }
      }
      a.d("Screenshot of the page with details of the ad is empty");
    }
    catch (Exception paramContext)
    {
      a.a(paramContext);
      return false;
    }
    label200:
    paramContext = paramString.optJSONObject("error");
    if (paramContext != null) {
      d = new a(paramContext);
    }
    return true;
  }
  
  f a(Context paramContext, String paramString)
  {
    f localF = new f();
    if (localF.b(paramContext, paramString))
    {
      a.a("Ad/Error response is ok.");
      return localF;
    }
    return null;
  }
  
  String a()
  {
    return b;
  }
  
  a b()
  {
    return d;
  }
  
  public List<String> c()
  {
    return f;
  }
}
