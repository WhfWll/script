package cn.domob.wall.core;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebView;
import android.widget.Toast;
import cn.domob.wall.core.a.b.a;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.AdInfo.AdStyle;
import cn.domob.wall.core.bean.AdInfo.ClickActionType;
import cn.domob.wall.core.download.d.a;
import cn.domob.wall.core.f.b.j;
import cn.domob.wall.core.f.b.k;
import cn.domob.wall.core.f.b.m;
import cn.domob.wall.core.h.f;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

public class a
  implements cn.domob.wall.core.a.a.a, b.a, cn.domob.wall.core.download.a.a, d.a
{
  private static cn.domob.wall.core.h.d a = new cn.domob.wall.core.h.d(a.class.getSimpleName());
  private boolean b = false;
  private boolean c = false;
  private boolean d = false;
  private b e;
  private Context f;
  private boolean g = false;
  
  a(Context paramContext, b paramB)
  {
    e = paramB;
    f = paramContext;
  }
  
  private void a()
  {
    b = false;
    c = false;
    d = false;
  }
  
  private boolean a(AdInfo paramAdInfo, String paramString)
    throws Exception
  {
    Object localObject = Uri.parse(paramString);
    String str = ((Uri)localObject).getHost();
    if (str.equals("inapp"))
    {
      a.b("overrideUri=" + localObject);
      paramString = URLDecoder.decode(((Uri)localObject).getQueryParameter("url"), "UTF-8");
      a.a("Open landing page with URL:" + paramString);
      localObject = f;
      if (localObject != null)
      {
        a();
        new cn.domob.wall.core.a.b((Context)localObject, paramString, null, this, paramAdInfo).a().show();
      }
    }
    for (;;)
    {
      return true;
      if (str.equals("download"))
      {
        if (!g)
        {
          cn.domob.wall.core.download.a.a(f, this);
          g = true;
        }
        paramString = URLDecoder.decode(((Uri)localObject).getQueryParameter("url"), "UTF-8");
        new cn.domob.wall.core.download.d(f, (Uri)localObject, paramAdInfo, this).a(f);
        a.b("Download app with URL:" + paramString);
      }
      else if (str.equals("launch"))
      {
        new cn.domob.wall.core.a.a(f, (Uri)localObject, this, paramAdInfo).a();
      }
      else
      {
        if (!paramString.startsWith("http")) {
          break;
        }
        localObject = f.a(f, Uri.parse(paramString));
        paramAdInfo = (AdInfo)localObject;
        if (localObject == null) {
          paramAdInfo = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
        }
        f.startActivity(paramAdInfo);
      }
    }
    a.e("Handle unknown action : " + str);
    return false;
  }
  
  private boolean b()
  {
    return (!b) && (!d) && (!c);
  }
  
  private b.k v(AdInfo paramAdInfo)
  {
    paramAdInfo = paramAdInfo.getAdStyle();
    if (paramAdInfo == AdInfo.AdStyle.BANNER) {
      return b.k.b;
    }
    if ((paramAdInfo == AdInfo.AdStyle.HOUSE_AD) || (paramAdInfo == AdInfo.AdStyle.XX)) {
      return b.k.c;
    }
    a.e("ad style error: " + paramAdInfo);
    return b.k.a;
  }
  
  void a(DService.EWallReportType paramEWallReportType)
  {
    cn.domob.wall.core.f.a.a().a(e, paramEWallReportType, null);
  }
  
  void a(DService.ReportUserActionType paramReportUserActionType)
  {
    cn.domob.wall.core.f.a.a().a(e, paramReportUserActionType);
  }
  
  void a(AdInfo paramAdInfo)
  {
    g(paramAdInfo);
  }
  
  void a(AdInfo paramAdInfo, DService.ReportDownLoadType paramReportDownLoadType)
  {
    cn.domob.wall.core.f.a.a().a(e, paramAdInfo, paramReportDownLoadType);
  }
  
  public void a(String paramString, WebView paramWebView, AdInfo paramAdInfo) {}
  
  public void a(String paramString, AdInfo paramAdInfo)
  {
    cn.domob.wall.core.f.a.a().a(e, paramAdInfo, b.m.c, paramString);
  }
  
  public void a(String paramString1, String paramString2, AdInfo paramAdInfo)
  {
    a.a(String.format("LandingPage 内下载，地址为%s，infoURL为%s", new Object[] { paramString1, paramString2 }));
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
        a(paramAdInfo, (String)localObject);
        return;
      }
      return;
    }
    catch (Exception paramAdInfo)
    {
      a.e(String.format("解析LandingPage中下载出现错误，地址为%s，infoURL为%s", new Object[] { paramString1, paramString2 }));
    }
  }
  
  void a(ArrayList<AdInfo> paramArrayList)
  {
    cn.domob.wall.core.f.a.a().a(e, paramArrayList);
  }
  
  void b(AdInfo paramAdInfo)
  {
    g(paramAdInfo);
  }
  
  public void b(String paramString, AdInfo paramAdInfo)
  {
    try
    {
      if (a(paramAdInfo, paramString))
      {
        cn.domob.wall.core.f.a.a().a(e, paramAdInfo, b.m.d, paramString);
        return;
      }
      cn.domob.wall.core.f.a.a().a(e, paramAdInfo, b.m.e, paramString);
      return;
    }
    catch (Exception paramString)
    {
      a.a(paramString);
    }
  }
  
  void c(AdInfo paramAdInfo)
  {
    if (paramAdInfo.isAdActualPositionAvailable())
    {
      if ((paramAdInfo.getAdActionType().equals(AdInfo.ClickActionType.DOWNLOAD)) && (paramAdInfo.isShowDetail())) {
        return;
      }
      g(paramAdInfo);
      return;
    }
    Log.w("DrwSDK", "Please implement the method setAdActualPosition(int position) of AdInfo, otherwise it is impossible to achieve onClickWallItem(AdInfo itemInfo)");
  }
  
  void d(AdInfo paramAdInfo)
  {
    cn.domob.wall.core.f.a.a().a(e, paramAdInfo, b.k.e);
  }
  
  void e(AdInfo paramAdInfo)
  {
    cn.domob.wall.core.f.a.a().a(e, paramAdInfo, b.k.d);
  }
  
  void f(AdInfo paramAdInfo)
  {
    if (paramAdInfo.isAdActualPositionAvailable())
    {
      cn.domob.wall.core.f.a.a().a(e, paramAdInfo, v(paramAdInfo));
      return;
    }
    Log.w("DrwSDK", "Please implement the method setAdActualPosition(int position) of AdInfo, otherwise it is impossible to achieve onClickWallItem(AdInfo itemInfo)");
  }
  
  boolean g(AdInfo paramAdInfo)
  {
    String str = paramAdInfo.getAdActionURL();
    try
    {
      Object localObject;
      if (str.startsWith(f.a()))
      {
        localObject = Uri.parse(str).getScheme();
        if (f.a().equals(localObject))
        {
          a.a("Scheme xxx action scheme =" + (String)localObject);
          return a(paramAdInfo, str);
        }
      }
      else if (str.startsWith("http"))
      {
        localObject = f.a(f, Uri.parse(str));
        paramAdInfo = (AdInfo)localObject;
        if (localObject == null) {
          paramAdInfo = new Intent("android.intent.action.VIEW", Uri.parse(str));
        }
        f.startActivity(paramAdInfo);
      }
      return true;
    }
    catch (Exception paramAdInfo)
    {
      a.e("Exception in click.");
      a.a(paramAdInfo);
    }
    return false;
  }
  
  public void h(AdInfo paramAdInfo)
  {
    cn.domob.wall.core.f.a.a().a(e, paramAdInfo, b.m.b, null);
  }
  
  public void i(AdInfo paramAdInfo)
  {
    if (b())
    {
      cn.domob.wall.core.f.a.a().a(e, paramAdInfo, b.j.b);
      b = true;
    }
  }
  
  public void j(AdInfo paramAdInfo)
  {
    if (b())
    {
      cn.domob.wall.core.f.a.a().a(e, paramAdInfo, b.j.c);
      d = true;
    }
  }
  
  public void k(AdInfo paramAdInfo)
  {
    if (b())
    {
      cn.domob.wall.core.f.a.a().a(e, paramAdInfo, b.j.d);
      c = true;
    }
  }
  
  public void l(AdInfo paramAdInfo)
  {
    cn.domob.wall.core.f.a.a().a(e, paramAdInfo, b.j.e);
  }
  
  public void m(AdInfo paramAdInfo)
  {
    cn.domob.wall.core.f.a.a().a(e, paramAdInfo, DService.ReportDownLoadType.DL_FINISH);
  }
  
  public void n(AdInfo paramAdInfo)
  {
    cn.domob.wall.core.f.a.a().a(e, paramAdInfo, DService.ReportDownLoadType.DL_FAILED);
  }
  
  public void o(AdInfo paramAdInfo)
  {
    cn.domob.wall.core.f.a.a().a(e, paramAdInfo, DService.ReportDownLoadType.DL_START);
  }
  
  public void p(AdInfo paramAdInfo)
  {
    cn.domob.wall.core.f.a.a().a(e, paramAdInfo, DService.ReportDownLoadType.DL_CANCEL);
  }
  
  public void q(AdInfo paramAdInfo)
  {
    cn.domob.wall.core.f.a.a().a(e, paramAdInfo, DService.ReportDownLoadType.DL_REPEAT);
    if (f != null) {
      ((Activity)f).runOnUiThread(new Runnable()
      {
        public void run()
        {
          Toast.makeText(a.a(a.this), "应用正在下载", 0).show();
        }
      });
    }
  }
  
  public void r(AdInfo paramAdInfo) {}
  
  public void s(AdInfo paramAdInfo)
  {
    cn.domob.wall.core.download.a.a().a(paramAdInfo);
  }
  
  public void t(AdInfo paramAdInfo)
  {
    cn.domob.wall.core.f.a.a().a(e, paramAdInfo, DService.ReportDownLoadType.INSTALL_SUCCESS);
  }
  
  public void u(AdInfo paramAdInfo)
  {
    cn.domob.wall.core.f.a.a().a(e, paramAdInfo, DService.ReportDownLoadType.AUTO_RUN);
  }
}
