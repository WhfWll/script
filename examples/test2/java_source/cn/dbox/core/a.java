package cn.dbox.core;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Vibrator;
import android.util.Log;
import android.webkit.WebView;
import android.widget.Toast;
import cn.dbox.core.a.b;
import cn.dbox.core.a.c.b;
import cn.dbox.core.bean.Entrance.EntryReportType;
import cn.dbox.core.d.e.a;
import cn.dbox.core.h.f;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

public class a
  implements cn.dbox.core.a.a.a, c.b, cn.dbox.core.d.a.a, e.a
{
  public static final String a = "vibrate";
  public static final String b = "adwall";
  private static cn.dbox.core.h.d c = new cn.dbox.core.h.d(a.class.getSimpleName());
  private static final String j = "wtai://wp/mc;";
  private static final String k = "report";
  private static final String l = "imp";
  private static final String m = "event";
  private static final String n = "clk";
  private static final String o = "visit";
  private static final String p = "phase";
  private static final String q = "url";
  private static final String r = "pattern";
  private boolean d = false;
  private boolean e = false;
  private boolean f = false;
  private c g;
  private Context h;
  private boolean i = false;
  private b.j s;
  
  a(Context paramContext, c paramC)
  {
    g = paramC;
    h = paramContext;
  }
  
  private void a()
  {
    d = false;
    e = false;
    f = false;
  }
  
  public static HashMap<String, String> b(String paramString)
  {
    HashMap localHashMap = new HashMap();
    String[] arrayOfString1;
    int i2;
    int i1;
    if (paramString != null)
    {
      arrayOfString1 = paramString.split("&");
      i2 = arrayOfString1.length;
      i1 = 0;
    }
    for (;;)
    {
      if (i1 < i2)
      {
        String[] arrayOfString2 = arrayOfString1[i1].split("=");
        try
        {
          if (arrayOfString2.length == 2) {
            localHashMap.put(URLDecoder.decode(arrayOfString2[0], "UTF-8"), URLDecoder.decode(arrayOfString2[1], "UTF-8"));
          } else {
            localHashMap.put(URLDecoder.decode(arrayOfString2[0], "UTF-8"), "");
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          c.a(localUnsupportedEncodingException);
          c.e("URL decode params String error:" + paramString);
        }
      }
      return localHashMap;
      i1 += 1;
    }
  }
  
  private boolean b()
  {
    return (!d) && (!f) && (!e);
  }
  
  private boolean b(cn.dbox.core.bean.a paramA, String paramString)
    throws Exception
  {
    Object localObject = Uri.parse(paramString);
    String str = ((Uri)localObject).getHost();
    if (str.equals("inapp"))
    {
      c.b("overrideUri=" + localObject);
      str = URLDecoder.decode(((Uri)localObject).getQueryParameter("url"), "UTF-8");
      c.a("Open landing page with URL:" + str);
      paramString = ((Uri)localObject).getQueryParameter("mode");
      if (paramString == null)
      {
        paramString = "push";
        if (!"present".equals(paramString)) {
          break label189;
        }
        localObject = cn.dbox.core.a.b.a.c;
        label118:
        c.a("Open landing page with type:" + paramString);
        paramString = h;
        if (paramString != null)
        {
          a();
          new b(paramString, str, null, this, paramA, (cn.dbox.core.a.b.a)localObject).a().show();
        }
      }
    }
    for (;;)
    {
      return true;
      paramString = URLDecoder.decode(paramString, "UTF-8");
      break;
      label189:
      localObject = cn.dbox.core.a.b.a.b;
      break label118;
      if (str.equals("download"))
      {
        if (!i)
        {
          cn.dbox.core.d.a.a(h, this);
          i = true;
        }
        paramString = ((Uri)localObject).getQueryParameter("url");
        str = ((Uri)localObject).getQueryParameter("pkg");
        paramA.a(str);
        c.b("downloadURL:" + paramString + "pkg:" + str);
        paramString = URLDecoder.decode(paramString, "UTF-8");
        new cn.dbox.core.d.e(h, (Uri)localObject, paramA, this).a(h);
        c.b("Download app with URL:" + paramString);
      }
      else if (str.equals("launch"))
      {
        new cn.dbox.core.a.a(h, (Uri)localObject, this, paramA).a();
      }
      else if (paramString.startsWith("http"))
      {
        localObject = f.a(h, Uri.parse(paramString));
        paramA = (cn.dbox.core.bean.a)localObject;
        if (localObject == null) {
          paramA = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
        }
        h.startActivity(paramA);
        if (s != null) {
          s.a();
        }
      }
      else if ((paramString.startsWith("tel:")) || (paramString.startsWith("voicemail:")) || (paramString.startsWith("sms:")) || (paramString.startsWith("mailto:")) || (paramString.startsWith("geo:")) || (paramString.startsWith("wtai://wp/mc;")))
      {
        paramA = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
        paramA.addFlags(268435456);
        if (paramString.startsWith("wtai://wp/mc;"))
        {
          c.a("Create intent for: wtai://wp/mc;");
          paramA = new Intent("android.intent.action.VIEW", Uri.parse("tel:" + paramString.substring("wtai://wp/mc;".length())));
        }
        try
        {
          h.startActivity(paramA);
          if (s == null) {
            continue;
          }
          s.a();
        }
        catch (ActivityNotFoundException paramA)
        {
          Log.w("ClickAction", "Could not handle intent with URI: " + paramString + ". Is this intent unsupported on your phone?");
          return false;
        }
      }
      else if ("report".equals(str))
      {
        paramString = ((Uri)localObject).getPath();
        if ((paramString == null) || (paramString.indexOf("/") == -1))
        {
          c.e("There is no report type.");
          return false;
        }
        paramString = paramString.substring(1);
        if (paramString.equals("imp"))
        {
          localObject = f.b(((Uri)localObject).getEncodedQuery());
          paramString = "s";
          if (((HashMap)localObject).containsKey("phase"))
          {
            paramString = (String)((HashMap)localObject).get("phase");
            ((HashMap)localObject).remove("phase");
          }
          ((HashMap)localObject).put("phase", paramString);
          cn.dbox.core.f.a.a().a(g, paramA, (HashMap)localObject, "ac", g.l());
        }
        else if ("event".equals(paramString))
        {
          localObject = f.b(((Uri)localObject).getEncodedQuery());
          paramString = g.n();
          if (((HashMap)localObject).containsKey("url"))
          {
            paramString = (String)((HashMap)localObject).get("url");
            ((HashMap)localObject).remove("url");
          }
          cn.dbox.core.f.a.a().a(g, paramA, (HashMap)localObject, "ac", paramString);
        }
        else if ("clk".equals(paramString))
        {
          paramString = ((Uri)localObject).getEncodedQuery();
          cn.dbox.core.f.a.a().a(g, paramA, b(paramString), "ac", g.j());
        }
        else if ("visit".equals(paramString))
        {
          paramA = ((Uri)localObject).getQueryParameter("url");
          cn.dbox.core.f.a.a().a(h, paramA, null);
        }
        else
        {
          c.e("Unknown reprot type.");
        }
      }
      else if ("vibrate".equals(str))
      {
        if (!cn.dbox.core.h.e.G(h))
        {
          c.d("Vibration function can not be achieved, because there is no authority or device does not support");
          return false;
        }
        paramA = (String)f.b(((Uri)localObject).getEncodedQuery()).get("pattern");
        if ((paramA != null) && (!paramA.equals("")))
        {
          paramA = paramA.split(",");
          paramString = new long[paramA.length];
          int i1 = 0;
          try
          {
            while (i1 < paramA.length)
            {
              paramString[i1] = Long.parseLong(paramA[i1]);
              i1 += 1;
            }
            ((Vibrator)h.getSystemService("vibrator")).vibrate(paramString, -1);
          }
          catch (Exception paramA)
          {
            c.e("action vibrate, parse data error or other");
            return false;
          }
        }
        else
        {
          c.e("action vibrate, pattern is empty");
        }
      }
      else
      {
        if (!"adwall".equals(str)) {
          break label1143;
        }
        try
        {
          if (f.a(g)) {
            g.t();
          }
        }
        catch (Exception paramA)
        {
          c.a(paramA);
        }
        catch (Error paramA)
        {
          c.a(paramA);
        }
      }
    }
    label1143:
    c.e("Handle unknown action : " + str);
    return false;
  }
  
  public void a(b.f paramF, cn.dbox.core.bean.d paramD, b.e paramE)
  {
    cn.dbox.core.f.a.a().a(g, paramF, paramD, paramE);
  }
  
  public void a(b.j paramJ)
  {
    s = paramJ;
  }
  
  public void a(b.o paramO, String paramString1, String paramString2)
  {
    cn.dbox.core.f.a.a().a(g, paramO, paramString1, paramString2);
  }
  
  public void a(Entrance.EntryReportType paramEntryReportType)
  {
    cn.dbox.core.f.a.a().b(g, paramEntryReportType);
  }
  
  void a(cn.dbox.core.bean.a paramA)
  {
    a(paramA, null);
  }
  
  public void a(cn.dbox.core.bean.a paramA, b.a paramA1, b.d paramD)
  {
    cn.dbox.core.f.a.a().a(g, paramA, paramA1, paramD);
  }
  
  public void a(cn.dbox.core.bean.a paramA, b.b paramB)
  {
    cn.dbox.core.f.a.a().a(g, paramA, paramB);
  }
  
  public void a(cn.dbox.core.bean.d paramD, b.b paramB)
  {
    cn.dbox.core.f.a.a().a(g, paramD, paramB);
  }
  
  public void a(String paramString)
  {
    cn.dbox.core.f.a.a().a(g, paramString);
  }
  
  public void a(String paramString, WebView paramWebView, cn.dbox.core.bean.a paramA)
  {
    try
    {
      Object localObject = URI.create(paramString);
      paramWebView = ((URI)localObject).getScheme();
      localObject = ((URI)localObject).getHost();
      if (f.a(paramWebView)) {
        return;
      }
      if (((!paramWebView.equals("domob")) || (f.a((String)localObject)) || (!((String)localObject).equals("inapp"))) && (!paramWebView.startsWith("http")))
      {
        b(paramA, paramString);
        return;
      }
    }
    catch (Exception paramString)
    {
      c.e("Error while parsing landingpage URL.");
      c.a(paramString);
    }
  }
  
  public void a(String paramString1, b.b paramB, String paramString2)
  {
    cn.dbox.core.f.a.a().a(g, paramString1, paramB, paramString2);
  }
  
  public void a(String paramString, cn.dbox.core.bean.a paramA)
  {
    cn.dbox.core.f.a.a().a(g, paramA, b.i.c, paramString);
  }
  
  public void a(String paramString1, String paramString2, cn.dbox.core.bean.a paramA)
  {
    c.a(String.format("LandingPage 内下载，地址为%s，infoURL为%s", new Object[] { paramString1, paramString2 }));
    if (paramString2 != null) {}
    try
    {
      if (paramString2.length() != 0)
      {
        localObject = f.b(Uri.parse(paramString2).getQuery());
        if (((HashMap)localObject).containsKey("url")) {
          ((HashMap)localObject).put("url", paramString1);
        }
        localObject = f.a((HashMap)localObject);
      }
      for (Object localObject = f.a() + "://download?" + (String)localObject;; localObject = f.a() + "://download?url=" + URLEncoder.encode(paramString1, "UTF-8"))
      {
        b(paramA, (String)localObject);
        return;
      }
      return;
    }
    catch (Exception paramA)
    {
      c.e(String.format("解析LandingPage中下载出现错误，地址为%s，infoURL为%s", new Object[] { paramString1, paramString2 }));
    }
  }
  
  public void a(ArrayList<cn.dbox.core.bean.a> paramArrayList, String paramString)
  {
    cn.dbox.core.f.a.a().a(g, paramArrayList, paramString);
  }
  
  public boolean a(cn.dbox.core.bean.a paramA, String paramString)
  {
    if (paramA != null) {}
    for (Object localObject = paramA.m();; localObject = null)
    {
      if (paramString != null) {}
      for (;;)
      {
        try
        {
          if (paramString.startsWith(f.a()))
          {
            localObject = Uri.parse(paramString).getScheme();
            if (!f.a().equals(localObject)) {
              break;
            }
            c.a("Scheme xxx action scheme =" + (String)localObject);
            return b(paramA, paramString);
          }
          boolean bool = paramString.startsWith("http");
          if (bool) {
            try
            {
              paramA = f.a(h, Uri.parse(paramString));
              localObject = paramA;
              if (paramA == null) {
                localObject = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
              }
              h.startActivity((Intent)localObject);
              if (s == null) {
                break;
              }
              s.a();
            }
            catch (Exception paramA)
            {
              c.a(paramA);
              paramA = null;
              continue;
            }
          }
          if ((paramString.startsWith("tel:")) || (paramString.startsWith("voicemail:")) || (paramString.startsWith("sms:")) || (paramString.startsWith("mailto:")) || (paramString.startsWith("geo:")) || (paramString.startsWith("wtai://wp/mc;")))
          {
            paramA = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
            paramA.addFlags(268435456);
            if (paramString.startsWith("wtai://wp/mc;"))
            {
              c.a("Create intent for: wtai://wp/mc;");
              paramA = new Intent("android.intent.action.VIEW", Uri.parse("tel:" + paramString.substring("wtai://wp/mc;".length())));
            }
            try
            {
              h.startActivity(paramA);
              if (s == null) {
                break;
              }
              s.a();
            }
            catch (ActivityNotFoundException paramA)
            {
              Log.w("ClickAction", "Could not handle intent with URI: " + paramString + ". Is this intent unsupported on your phone?");
              return false;
            }
          }
          c.a("Handle unknown intents.");
        }
        catch (Exception paramA)
        {
          c.e("Exception in click.");
          c.a(paramA);
          return false;
        }
        paramA = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
        paramA.addFlags(268435456);
        try
        {
          h.startActivity(paramA);
          if (s == null) {
            break;
          }
          s.a();
        }
        catch (ActivityNotFoundException paramA)
        {
          Log.w("ClickAction", "Could not handle intent with URI: " + paramString + ". Is this intent unsupported on your phone?");
        }
        paramString = (String)localObject;
      }
    }
    return true;
  }
  
  public void b(Entrance.EntryReportType paramEntryReportType)
  {
    cn.dbox.core.f.a.a().a(g, paramEntryReportType);
  }
  
  public void b(cn.dbox.core.bean.a paramA)
  {
    cn.dbox.core.f.a.a().a(g, paramA, b.i.b, null);
    if (s != null) {
      s.a();
    }
  }
  
  public void b(String paramString, cn.dbox.core.bean.a paramA)
  {
    try
    {
      if (b(paramA, paramString))
      {
        cn.dbox.core.f.a.a().a(g, paramA, b.i.d, paramString);
        return;
      }
      cn.dbox.core.f.a.a().a(g, paramA, b.i.e, paramString);
      return;
    }
    catch (Exception paramString)
    {
      c.a(paramString);
    }
  }
  
  public void c(cn.dbox.core.bean.a paramA)
  {
    if (b())
    {
      cn.dbox.core.f.a.a().a(g, paramA, b.b.b);
      d = true;
    }
  }
  
  public void d(cn.dbox.core.bean.a paramA)
  {
    if (b())
    {
      cn.dbox.core.f.a.a().a(g, paramA, b.b.c);
      f = true;
    }
  }
  
  public void e(cn.dbox.core.bean.a paramA)
  {
    if (b())
    {
      cn.dbox.core.f.a.a().a(g, paramA, b.b.d);
      e = true;
    }
  }
  
  public void f(cn.dbox.core.bean.a paramA)
  {
    cn.dbox.core.f.a.a().a(g, paramA, b.b.e);
  }
  
  public void g(cn.dbox.core.bean.a paramA)
  {
    cn.dbox.core.f.a.a().a(g, paramA, b.g.d);
  }
  
  public void h(cn.dbox.core.bean.a paramA)
  {
    cn.dbox.core.f.a.a().a(g, paramA, b.g.e);
  }
  
  public void i(cn.dbox.core.bean.a paramA)
  {
    cn.dbox.core.f.a.a().a(g, paramA, b.g.b);
  }
  
  public void j(cn.dbox.core.bean.a paramA)
  {
    cn.dbox.core.f.a.a().a(g, paramA, b.g.f);
  }
  
  public void k(cn.dbox.core.bean.a paramA)
  {
    cn.dbox.core.f.a.a().a(g, paramA, b.g.c);
    if (h != null) {
      ((Activity)h).runOnUiThread(new Runnable()
      {
        public void run()
        {
          Toast.makeText(a.a(a.this), "应用正在下载", 0).show();
        }
      });
    }
  }
  
  public void l(cn.dbox.core.bean.a paramA) {}
  
  public void m(cn.dbox.core.bean.a paramA)
  {
    cn.dbox.core.d.a.a().a(paramA);
  }
  
  public void n(cn.dbox.core.bean.a paramA)
  {
    cn.dbox.core.f.a.a().a(g, paramA, b.g.g);
  }
  
  public void o(cn.dbox.core.bean.a paramA)
  {
    cn.dbox.core.f.a.a().a(g, paramA, b.g.h);
  }
  
  public class a
  {
    public static final String a = "s";
    public static final String b = "m";
    public static final String c = "f";
    public static final String d = "p";
    
    public a() {}
  }
  
  public class b
  {
    public static final String a = "s";
    public static final String b = "ac";
    
    public b() {}
  }
}
