package cn.domob.android.ads.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Vibrator;
import android.util.Log;
import android.webkit.WebView;
import android.widget.FrameLayout.LayoutParams;
import android.widget.Toast;
import cn.domob.android.ads.DomobActivity;
import cn.domob.android.ads.DomobAdManager.ErrorCode;
import cn.domob.android.ads.E;
import cn.domob.android.ads.a.b;
import cn.domob.android.ads.e.a;
import cn.domob.android.ads.j;
import cn.domob.android.ads.j.c;
import cn.domob.android.ads.j.c.a;
import cn.domob.android.ads.k;
import cn.domob.android.ads.n;
import cn.domob.android.ads.q;
import cn.domob.android.ads.q.a;
import cn.domob.android.ads.v.a;
import cn.domob.android.ads.v.d;
import cn.domob.android.ads.w;
import cn.domob.android.ads.w.c;
import cn.domob.android.ads.w.h;
import cn.domob.android.i.f;
import cn.domob.android.i.h;
import java.net.URI;
import java.net.URLEncoder;
import java.util.HashMap;

public class c
  extends n
  implements a.a, d.b, e.a, q.a
{
  private static final String A = "rt";
  private static final String B = "pattern";
  private static final String C = "url";
  private static final String D = "clk";
  private static final String E = "imp";
  private static final String F = "event";
  private static final String G = "visit";
  private static final String H = "url";
  private static final String I = "phase";
  private static final String J = "wtai://wp/mc;";
  private static final String K = "banner";
  private static final String L = "expandable";
  private static final String M = "tc";
  public static final String h = "domob";
  public static final String i = "cache";
  public static final String j = "groupID";
  public static final String k = "resourceID";
  public static final String l = "downloadUrl";
  private static f m = new f(c.class.getSimpleName());
  private static final String s = "report";
  private static final String t = "custom";
  private static final String u = "expand";
  private static final String v = "close";
  private static final String w = "form";
  private static final String x = "fetch";
  private static final String y = "url";
  private static final String z = "name";
  private cn.domob.android.f.g N;
  protected Handler g = new Handler(Looper.getMainLooper());
  private e n;
  private v.a o;
  private boolean p = false;
  private boolean q = false;
  private boolean r = false;
  
  public c(Context paramContext, k paramK, j paramJ, cn.domob.android.ads.g paramG)
  {
    super(paramContext, paramK, paramJ, paramG);
    m.b("New DomobHTMLAdAdapter instance.");
  }
  
  private String a(Uri paramUri, String paramString)
  {
    try
    {
      paramUri = paramUri.getQueryParameter(paramString);
      return paramUri;
    }
    catch (UnsupportedOperationException paramUri)
    {
      m.a(paramUri);
    }
    return null;
  }
  
  private void a(Uri paramUri)
    throws Exception
  {
    paramUri = paramUri.getQueryParameter("tc");
    if ((paramUri == null) || (paramUri.equals("true"))) {
      p();
    }
  }
  
  private void a(final e paramE, j.c.a paramA, boolean paramBoolean)
  {
    int i2 = paramA.h();
    int i1;
    if (i2 < 0)
    {
      i1 = 5;
      m.a("Expandable timeout = " + i1);
      paramE.a(i1);
      if (paramBoolean) {
        paramE.a(new a.b()
        {
          public void a(cn.domob.android.ads.a paramAnonymousA)
          {
            c.v().b("Both banner and expandable part are ok in current creative. Show Ad.");
            c.l(c.this);
            if (c.m(c.this).d().n().i()) {
              c.a(c.this, c.n(c.this).d().n());
            }
          }
          
          public void b(cn.domob.android.ads.a paramAnonymousA)
          {
            c.v().e("FAILED to load domob expandable view.");
            c.d(c.this, DomobAdManager.ErrorCode.INTERNAL_ERROR, "Expandable part load failed.");
          }
          
          public void c(cn.domob.android.ads.a paramAnonymousA)
          {
            c.v().a("Timeout while loading expandable part. Show AD.");
            c.k(c.this);
          }
        });
      }
      paramE.a(new cn.domob.android.ads.a.a()
      {
        public void a(cn.domob.android.ads.a paramAnonymousA, String paramAnonymousString)
        {
          if ((paramAnonymousString.startsWith("domob")) && (Uri.parse(paramAnonymousString).getHost().equals("close")))
          {
            c.o(c.this);
            return;
          }
          a(paramE, paramAnonymousString, false);
        }
      });
      str = paramA.b();
      if (!h.e(str)) {
        break label137;
      }
      m.e("Content type of expandable is null or empty.");
      a(DomobAdManager.ErrorCode.INTERNAL_ERROR, "Content type of expandable is null or empty.");
    }
    label137:
    do
    {
      return;
      i1 = i2;
      if (i2 <= d.y()) {
        break;
      }
      i1 = d.y();
      break;
      if (str.equals("url"))
      {
        paramA = paramA.c();
        m.a("Get an DomobWebView instance for EXPANDABLE and load with URL:" + paramA);
        paramE.a(paramA, null);
        return;
      }
    } while (!str.equals("content"));
    String str = paramA.d();
    paramA = paramA.e();
    m.a(String.format("Get an DomobWebView instance for EXPANDABLE and load data = [%s] with base URL=[%s]", new Object[] { paramA, str }));
    paramE.a(str, paramA);
  }
  
  private void a(j.c.a paramA)
  {
    int i2 = -1;
    m.a("Show expandable part of current creative.");
    if (n != null) {
      if (paramA.k() == -1) {
        break label175;
      }
    }
    label175:
    for (int i1 = (int)(paramA.k() * cn.domob.android.b.a.t(a));; i1 = -1)
    {
      if (paramA.l() != -1) {
        i2 = (int)(paramA.l() * cn.domob.android.b.a.t(a));
      }
      m.a(String.format("Expandable size is: %d * %d", new Object[] { Integer.valueOf(i1), Integer.valueOf(i2) }));
      o = new v.a(a).a(i1, i2).a(false, false, false, true).a(paramA.j()).a(new v.d()
      {
        public void a()
        {
          if (c.h(c.this) != null) {
            c.h(c.this).loadUrl("javascript:(window.domobjs && window.domobjs.onDismiss) ? domobjs.onDismiss() : null");
          }
          c.p(c.this);
        }
      });
      o.a(n);
      n.loadUrl("javascript:(window.domobjs && window.domobjs.onViewable) ? domobjs.onViewable() : null");
      j();
      return;
      m.e("Expandable part is null.");
      return;
    }
  }
  
  private void a(String paramString, q paramQ)
  {
    w localW = new w(a, d.n());
    localW.getClass();
    w.c localC = new w.c(localW);
    a = paramQ.a().d().r();
    d = paramQ.c();
    e = paramQ.d();
    f = paramQ.e();
    localW.a(paramQ.a().d().q(), w.h.b, paramString, localC, null);
  }
  
  private Uri b(Uri paramUri)
  {
    if (paramUri != null)
    {
      Object localObject1 = a(paramUri, "url");
      if ((localObject1 == null) || (!((String)localObject1).startsWith("domob"))) {
        return paramUri;
      }
      boolean bool;
      String str1;
      String str2;
      int i1;
      label75:
      String str3;
      Object localObject2;
      if (a(paramUri, "auto_run") == null)
      {
        bool = false;
        str1 = a(paramUri, "name");
        str2 = a(paramUri, "pkg");
        if (a(paramUri, "vc") != null) {
          break label335;
        }
        i1 = 1;
        str3 = a(paramUri, "vn");
        localObject2 = a(a, (String)localObject1, "cache");
        paramUri = (String)((HashMap)localObject2).get("groupID");
        String str4 = (String)((HashMap)localObject2).get("resourceID");
        localObject2 = (String)((HashMap)localObject2).get("downloadUrl");
        paramUri = a.a.a.a.a.a.a(a, paramUri, str4);
        if ((paramUri == null) || (h.e(paramUri.a()))) {
          break label353;
        }
        paramUri = "alreadyDownload:" + paramUri.a();
      }
      for (;;)
      {
        localObject1 = new HashMap();
        ((HashMap)localObject1).put("url", paramUri);
        ((HashMap)localObject1).put("auto_run", String.valueOf(bool));
        ((HashMap)localObject1).put("name", str1);
        ((HashMap)localObject1).put("pkg", str2);
        ((HashMap)localObject1).put("vc", String.valueOf(i1));
        ((HashMap)localObject1).put("vn", str3);
        paramUri = h.a((HashMap)localObject1);
        paramUri = "domob://download/?" + paramUri;
        m.b("download params: " + paramUri);
        return Uri.parse(paramUri);
        bool = Boolean.valueOf(a(paramUri, "auto_run")).booleanValue();
        break;
        label335:
        i1 = Integer.valueOf(a(paramUri, "vc")).intValue();
        break label75;
        label353:
        paramUri = (Uri)localObject2;
        if (h.e((String)localObject2)) {
          paramUri = (Uri)localObject1;
        }
      }
    }
    return null;
  }
  
  private void b(String paramString)
  {
    b(paramString, null);
  }
  
  private void b(String paramString1, String paramString2)
  {
    w localW = new w(a, d.n());
    localW.getClass();
    w.c localC = new w.c(localW);
    a = c.d().r();
    if (paramString2 != null) {
      h = paramString2;
    }
    localW.a(c.d().q(), w.h.c, paramString1, localC, null);
  }
  
  private void c(String paramString)
  {
    w localW = new w(a, d.n());
    localW.getClass();
    w.c localC = new w.c(localW);
    a = c.d().r();
    localW.a(c.d().q(), w.h.h, paramString, localC, null);
  }
  
  private void n()
  {
    final j.c localC = c.d();
    g.post(new Runnable()
    {
      public void run()
      {
        e localE = new e(c.a(c.this), "banner", 0);
        localE.setLayoutParams(new FrameLayout.LayoutParams(c.b(c.this).a(), c.c(c.this).b()));
        c.a(c.this, localE);
        if (c.d(c.this).G()) {
          localE.a(c.e(c.this).d().J() / 1000);
        }
        localE.a(new a.b()
        {
          public void a(cn.domob.android.ads.a paramAnonymous2A)
          {
            c.v().a("Finished to load domob banner view.");
            paramAnonymous2A = c.f(c.this).d().n();
            if (paramAnonymous2A != null)
            {
              c.a(c.this, new e(c.g(c.this), "expandable", 0));
              c.v().b("There is expandable part in current creative.");
              c.a(c.this, c.h(c.this), paramAnonymous2A, paramAnonymous2A.g());
              if (!paramAnonymous2A.g()) {}
            }
            for (;;)
            {
              return;
              c.v().b("Expandable preload is disabled in current creative. Show Ad.");
              while (!c.i(c.this).G())
              {
                c.j(c.this);
                return;
                c.v().b("Banner is ready and there is no expandable part in current creative. Show Ad.");
              }
            }
          }
          
          public void b(cn.domob.android.ads.a paramAnonymous2A)
          {
            c.v().e("FAILED to load domob banner view.");
            c.b(c.this, DomobAdManager.ErrorCode.INTERNAL_ERROR, "Creative load failed.");
          }
          
          public void c(cn.domob.android.ads.a paramAnonymous2A)
          {
            c.a(c.this, DomobAdManager.ErrorCode.INTERNAL_ERROR, "Creative load timeout.");
          }
        });
        localE.a(new cn.domob.android.ads.a.a()
        {
          public void a(cn.domob.android.ads.a paramAnonymous2A, String paramAnonymous2String)
          {
            c.v().b("Banner BaseWebView 拦截到 URL：" + paramAnonymous2String);
            a(paramAnonymous2A, paramAnonymous2String, true);
          }
        });
        String str = localC.k();
        if ((str != null) && (str.length() != 0))
        {
          if (str.equals("url"))
          {
            c.v().a("Get an DomobWebView instance and load with URL:" + localC.j());
            localE.a(localC.j(), null);
          }
          while (!str.equals("content")) {
            return;
          }
          c.v().a(String.format("Get an DomobWebView instance and load data = [%s] with base URL=[%s]", new Object[] { localC.m(), localC.l() }));
          localE.a(localC.l(), localC.m());
          return;
        }
        c.v().e("Content type is not available.");
        c.c(c.this, DomobAdManager.ErrorCode.INTERNAL_ERROR, "Content type is illegal.");
      }
    });
  }
  
  private void o()
  {
    if (o != null) {
      o.a();
    }
  }
  
  private void p()
  {
    d.a(c);
    h();
  }
  
  private boolean q()
  {
    return (!p) && (!r) && (!q);
  }
  
  private void w()
  {
    p = false;
    q = false;
    r = false;
  }
  
  public HashMap<String, String> a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = new HashMap();
    if ((paramString1 == null) || (paramString1.length() == 0)) {}
    String str2;
    do
    {
      return paramContext;
      paramString1 = Uri.parse(paramString1);
      str1 = paramString1.getScheme();
      str2 = paramString1.getHost();
    } while ((str1 == null) || (!"domob".equals(str1)) || (str2 == null) || (!paramString2.equals(str2)));
    paramString2 = paramString1.getQueryParameter("rgid");
    String str1 = paramString1.getQueryParameter("rid");
    paramString1 = paramString1.getQueryParameter("url");
    paramContext.put("groupID", paramString2);
    paramContext.put("resourceID", str1);
    paramContext.put("downloadUrl", paramString1);
    return paramContext;
  }
  
  public void a()
  {
    m.b("Start to load DomobHTML adapter.");
    n();
  }
  
  public void a(int paramInt1, int paramInt2) {}
  
  public void a(q paramQ)
  {
    a("install_success", paramQ);
  }
  
  public void a(String paramString, WebView paramWebView)
  {
    try
    {
      if (c.d().B()) {
        b("lp_url", paramString);
      }
      Object localObject = URI.create(paramString);
      String str = ((URI)localObject).getScheme();
      localObject = ((URI)localObject).getHost();
      if (h.e(str)) {
        return;
      }
      if (((!str.equals("domob")) || (h.e((String)localObject)) || (!((String)localObject).equals("inapp"))) && (!str.startsWith("http")))
      {
        a(paramWebView, paramString, false);
        return;
      }
    }
    catch (Exception paramString)
    {
      m.e("Error while parsing landingpage URL.");
      m.a(paramString);
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    m.a(String.format("LandingPage 内下载，地址为%s，infoURL为%s", new Object[] { paramString1, paramString2 }));
    if (paramString2 != null) {}
    try
    {
      if (paramString2.length() != 0)
      {
        localObject = h.a(Uri.parse(paramString2).getEncodedQuery());
        if (((HashMap)localObject).containsKey("url")) {
          ((HashMap)localObject).put("url", paramString1);
        }
        localObject = h.a((HashMap)localObject);
      }
      for (Object localObject = "domob://download?" + (String)localObject;; localObject = "domob://download?url=" + URLEncoder.encode(paramString1, "UTF-8"))
      {
        b(null, (String)localObject, false);
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      m.e(String.format("解析LandingPage中下载出现错误，地址为%s，infoURL为%s", new Object[] { paramString1, paramString2 }));
    }
  }
  
  public void a(HashMap<String, String> paramHashMap, String paramString, long paramLong)
  {
    d.a(c, paramHashMap, paramString, "s", paramLong, null, f);
  }
  
  public boolean a(WebView paramWebView, String paramString, boolean paramBoolean)
  {
    try
    {
      if (paramString.startsWith("domob"))
      {
        if (!"domob".equals(Uri.parse(paramString).getScheme())) {
          break label437;
        }
        m.a("Scheme domob action.");
        return b(paramWebView, paramString, paramBoolean);
      }
      if ((paramString.startsWith("http")) || (paramString.startsWith("tel:")) || (paramString.startsWith("voicemail:")) || (paramString.startsWith("sms:")) || (paramString.startsWith("mailto:")) || (paramString.startsWith("geo:")) || (paramString.startsWith("wtai://wp/mc;")))
      {
        m.a("Handle other phone intents.");
        if (paramBoolean) {
          p();
        }
        if (paramString.startsWith("http"))
        {
          Intent localIntent = cn.domob.android.i.c.a(a, Uri.parse(paramString));
          paramWebView = localIntent;
          if (localIntent == null) {
            paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
          }
          l();
          a.startActivity(paramWebView);
          break label437;
        }
        paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
        paramWebView.addFlags(268435456);
        if (paramString.startsWith("wtai://wp/mc;"))
        {
          m.a("Create intent for: wtai://wp/mc;");
          paramWebView = new Intent("android.intent.action.VIEW", Uri.parse("tel:" + paramString.substring("wtai://wp/mc;".length())));
        }
        try
        {
          a.startActivity(paramWebView);
          l();
        }
        catch (ActivityNotFoundException paramWebView)
        {
          Log.w(f.b(), "Could not handle intent with URI: " + paramString + ". Is this intent unsupported on your phone?");
          return false;
        }
      }
      m.a("Handle unknown intents.");
    }
    catch (Exception paramWebView)
    {
      m.e("Exception in click.");
      m.a(paramWebView);
      return false;
    }
    l();
    if (paramBoolean) {
      p();
    }
    paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    paramWebView.addFlags(268435456);
    try
    {
      a.startActivity(paramWebView);
      l();
    }
    catch (ActivityNotFoundException paramWebView)
    {
      Log.w(f.b(), "Could not handle intent with URI: " + paramString + ". Is this intent unsupported on your phone?");
    }
    label437:
    return true;
  }
  
  public void a_()
  {
    c("la_success");
    l();
  }
  
  public void a_(String paramString)
  {
    if (a(null, paramString, false))
    {
      c("la_failsafe_success");
      return;
    }
    c("la_failsafe_failed");
  }
  
  public void b(q paramQ)
  {
    a("run", paramQ);
  }
  
  protected boolean b(WebView paramWebView, String paramString, boolean paramBoolean)
    throws Exception
  {
    paramWebView = Uri.parse(paramString);
    String str = paramWebView.getHost();
    Object localObject;
    if ("inapp".equals(str))
    {
      if (paramBoolean) {
        a(paramWebView);
      }
      paramWebView = paramWebView.getQueryParameter("url");
      m.a("Open landing page with URL:" + paramWebView);
      localObject = i();
      if (localObject != null)
      {
        w();
        new d((Context)localObject, paramWebView, paramString, this).a().show();
        ((Activity)localObject).runOnUiThread(new Runnable()
        {
          public void run()
          {
            c.q(c.this);
          }
        });
      }
    }
    for (;;)
    {
      a(str);
      return true;
      if ("download".equals(str))
      {
        if (paramBoolean) {
          a(paramWebView);
        }
        paramString = paramWebView.getQueryParameter("url");
        paramWebView = b(paramWebView);
        if (paramWebView != null)
        {
          new q(a, paramWebView, c, this).i();
          m.b("Download app with URL:" + paramString);
        }
      }
      else if ("launch".equals(str))
      {
        if (paramBoolean) {
          a(paramWebView);
        }
        new a(a, paramWebView, this).a();
      }
      else if ("expand".equals(str))
      {
        if (paramBoolean) {
          a(paramWebView);
        }
        if (c.d().n() != null)
        {
          m.a("Expandable part url:" + c.d().n().c());
          m.a("Expandable part base and content:" + c.d().n().d() + " || " + c.d().n().e());
          a(c.d().n());
        }
        else
        {
          m.e("广告应答无Expandable部分，无法进行expand action。");
          return false;
        }
      }
      else if ("report".equals(str))
      {
        paramString = paramWebView.getPath();
        if ((paramString == null) || (paramString.indexOf("/") == -1))
        {
          m.e("There is no report type.");
          return false;
        }
        paramString = paramString.substring(1);
        if (paramString.equals("imp"))
        {
          paramString = h.a(paramWebView.getEncodedQuery());
          paramWebView = "s";
          if (paramString.containsKey("phase"))
          {
            paramWebView = (String)paramString.get("phase");
            paramString.remove("phase");
          }
          d.a(c, paramString, paramWebView, "ac", 0L, null);
        }
        else if ("event".equals(paramString))
        {
          paramString = h.a(paramWebView.getEncodedQuery());
          paramWebView = c.d().q();
          if (paramString.containsKey("url"))
          {
            paramWebView = (String)paramString.get("url");
            paramString.remove("url");
          }
          localObject = new w(a, d.n());
          localObject.getClass();
          w.c localC = new w.c((w)localObject);
          a = c.d().r();
          b = "ac";
          ((w)localObject).a(paramWebView, null, null, localC, paramString);
        }
        else if ("clk".equals(paramString))
        {
          paramWebView = paramWebView.getEncodedQuery();
          d.a(c, h.a(paramWebView), "ac");
          h();
        }
        else if ("visit".equals(paramString))
        {
          paramWebView = paramWebView.getQueryParameter("url");
          cn.domob.android.f.c.a().a(a, paramWebView, null);
        }
        else
        {
          m.e("Unknown reprot type.");
        }
      }
      else if ("close".equals(str))
      {
        m();
      }
      else if (!"custom".equals(str))
      {
        if (!"form".equals(str)) {
          break;
        }
        if (paramBoolean) {
          a(paramWebView);
        }
        paramWebView = (String)h.a(paramWebView.getEncodedQuery()).get("url");
        paramString = new Intent();
        paramString.setClass(a, DomobActivity.class);
        paramString.putExtra("DomobActivityType", 5);
        paramString.putExtra("webview_url", paramWebView);
        i().startActivity(paramString);
      }
    }
    if ("fetch".equals(str))
    {
      if (paramBoolean) {
        a(paramWebView);
      }
      localObject = h.a(paramWebView.getEncodedQuery());
      paramWebView = (String)((HashMap)localObject).get("url");
      paramString = (String)((HashMap)localObject).get("name");
      localObject = (String)((HashMap)localObject).get("rt");
      if (!h.b((String)localObject)) {
        break label1173;
      }
    }
    label1173:
    for (int i1 = Integer.parseInt((String)localObject);; i1 = 1)
    {
      q.a(paramWebView, paramString, i1, a);
      break;
      if ("vibrate".equals(str))
      {
        if (!cn.domob.android.b.a.F(a))
        {
          m.d("Vibration function can not be achieved, because there is no authority or device does not support");
          return false;
        }
        paramWebView = (String)h.a(paramWebView.getEncodedQuery()).get("pattern");
        if ((paramWebView != null) && (!paramWebView.equals("")))
        {
          paramWebView = paramWebView.split(",");
          paramString = new long[paramWebView.length];
          i1 = 0;
          try
          {
            while (i1 < paramWebView.length)
            {
              paramString[i1] = Long.parseLong(paramWebView[i1]);
              i1 += 1;
            }
            ((Vibrator)a.getSystemService("vibrator")).vibrate(paramString, -1);
          }
          catch (Exception paramWebView)
          {
            m.e("action vibrate, parse data error or other");
            return false;
          }
        }
        m.e("action vibrate, pattern is empty");
        break;
      }
      if ("video".equals(str))
      {
        if (paramBoolean) {
          a(paramWebView);
        }
        new E(this, paramString).a();
        break;
      }
      if ("loadSuccess".equals(str))
      {
        if (!d.G()) {
          break;
        }
        g();
        break;
      }
      m.e("Handle unknown action : " + str);
      return false;
    }
  }
  
  public void b_()
  {
    c("la_failed");
  }
  
  public void c(q paramQ)
  {
    a("download_finish", paramQ);
  }
  
  public void d()
  {
    if ((f != null) && ((f instanceof cn.domob.android.ads.a))) {
      ((cn.domob.android.ads.a)f).loadUrl("javascript:(window.domobjs && window.domobjs.onViewable) ? domobjs.onViewable() : null");
    }
  }
  
  public void d(q paramQ)
  {
    a("download_failed", paramQ);
  }
  
  public void e()
  {
    if ((f != null) && ((f instanceof cn.domob.android.ads.a))) {
      ((cn.domob.android.ads.a)f).loadUrl("javascript:(window.domobjs && window.domobjs.onDismiss) ? domobjs.onDismiss() : null");
    }
  }
  
  public void e(q paramQ)
  {
    a("download_start", paramQ);
  }
  
  public void f()
  {
    m.a("Destroy DomobWebViews.");
    if ((f != null) && ((f instanceof cn.domob.android.ads.a)))
    {
      ((cn.domob.android.ads.a)f).destroy();
      f = null;
    }
    if (n != null)
    {
      n.destroy();
      n = null;
    }
  }
  
  public void f(q paramQ)
  {
    a("download_cancel", paramQ);
  }
  
  public void g(q paramQ)
  {
    a("download_repeat", paramQ);
    if (a != null) {
      ((Activity)a).runOnUiThread(new Runnable()
      {
        public void run()
        {
          Toast.makeText(c.s(c.this), "应用正在下载", 0).show();
        }
      });
    }
  }
  
  public void h(q paramQ) {}
  
  public void i(q paramQ)
  {
    a("download_md5_failed", paramQ);
  }
  
  public void j(q paramQ)
  {
    cn.domob.android.ads.e.a().a(paramQ);
  }
  
  public void r()
  {
    if (q())
    {
      b("load_success");
      p = true;
    }
  }
  
  public void s()
  {
    if (q())
    {
      b("load_failed");
      r = true;
    }
  }
  
  public void t()
  {
    if (q())
    {
      b("load_cancel");
      q = true;
    }
  }
  
  public void u()
  {
    ((Activity)a).runOnUiThread(new Runnable()
    {
      public void run()
      {
        c.r(c.this);
      }
    });
    b("close_lp");
  }
}
