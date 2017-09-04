package com.sdu.didi.openapi;

import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.webkit.URLUtil;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import java.net.URI;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class i
  extends WebViewClient
{
  i(DiDiWebActivity paramDiDiWebActivity) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    TextView localTextView;
    if ((DiDiWebActivity.c(a) != null) && (paramWebView != null))
    {
      localTextView = DiDiWebActivity.c(a);
      Pattern localPattern = Pattern.compile("[\\u4e00-\\u9fa5]");
      if (!TextUtils.isEmpty(paramWebView.getTitle())) {
        break label69;
      }
      paramString = "";
      if (localPattern.matcher(paramString).find()) {
        break label77;
      }
    }
    label69:
    label77:
    for (paramWebView = "滴滴出行";; paramWebView = paramWebView.getTitle())
    {
      localTextView.setText(paramWebView);
      return;
      paramString = paramWebView.getTitle();
      break;
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    DiDiWebActivity.a(a).loadDataWithBaseURL("", "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><title>暂时无法使用滴滴出行</title><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no\"><meta name=\"apple-mobile-web-app-capable\" content=\"yes\"><style>html,body{position:relative;height:100%;width:100%;padding:0;margin:0;background:#fafafa}body{-webkit-user-select:none;-webkit-text-size-adjust:100%!important;background-color:#fafafa;font-size-adjust:none;text-align:center;margin:0 auto;font-family:'Microsoft YaHei',arial,sans-serif,'Droid Sans Fallback'}#main{padding:0;width:100%;margin:0}section{padding:10px 0}.icon{display:block;width:60px;height:60px;border-radius:30px;overflow:hidden;margin-top:100px;margin:20% auto 10px auto;background-size:auto 60px}.h1{max-height:25px;padding:5px 0;line-height:20px;font-size:17px;color:#333}.h3{line-height:20px;font-size:12px;color:#999;word-break:break-all;max-height:80px;overflow:hidden;text-overflow:ellipsis;padding:0 20px}.btn{display:inline-block;height:30px;line-height:30px;border:1px solid #ccc;padding:0 15px;border-radius:3px;color:#888;background:#fcfcfc}</style></head><body><div class=\"main\" id=\"main\"><section id=\"main-page\"><div class=\"icon\"><img widht=\"60\" height=\"60\" src=\"data:image/gif;base64,R0lGODlheAB4AKIAAP////39/fz8/O/v79TU1NPT08zMzAAAACwAAAAAeAB4AAAD/2i63P4wykmrvTjrzbv/YCiOZGmeaKqubOu+cCzPdG3feK7vfO//wKBwSCwaj8ikcslsOp/QqHRKrVqv2Kx2y+0qCgOBYFDwjggCgBogIJhDg/V68Aal5YBA/YNf7z19an8dgQCDHIWHG4mKGYyNF4+QFZKTE5WWEZiZD5ucDZ6fC6GiBqSip5+pnKuZrZavk7GQs421ireHuYO7f717v3XBb8NmxV7HXclcy1vNWs9Z0VjTV9VW11XZVHdyeqUQcXh04A9ocm3lEARhY27q8PHy8z1gYmT0Cudr6fTicuTmdVvzTWCfgvL+zcm3T00/euzuvctHsaLFixgzatzIsRijx48gQ4ocSbKkyZMoU6pcybKly5cGEgAAOw==\"></div><p class=\"h1 center\"></p><p class=\"h3 center\"></p><span class=\"btn\">重试</span></section></div><script>!function(){\"use strict\";var t=function(t){return document.querySelector(t)},e=function(t){for(var e,n={},r=window.location.search.replace(/^\\?/,\"\").split(\"&\"),o=r.length,i=0;o>i;i++)r[i]&&(e=r[i].split(\"=\"),n[decodeURIComponent(e[0])]=decodeURIComponent(r[i].substr(e[0].length+1)));return n[t]||\"\"},n=t(\".h1\"),r=t(\".h3\"),o={404:{title:\"暂时无法展示此页面[404]\"},500:{title:\"暂时无法展示此页面[500]\"}},i=\"" + paramString1 + "\",c=e(\"status\")||e(\"errno\")||e(\"errstatus\"),s=\"" + paramString2 + "\";c&&o[c]&&(i=" + "o[c].title),n.innerHTML=i,s&&(r.innerHTML=s||\"\"),t(\".btn\").addEventListener(\"touchend\",function(){s?window.location.replace(s):window.history.back()})}();</script>" + "</body></html>", "text/html", "UTF-8", null);
    if ((!URLUtil.isHttpUrl(DiDiWebActivity.a(a).getUrl())) || (!URLUtil.isHttpsUrl(DiDiWebActivity.a(a).getUrl()))) {
      DiDiWebActivity.a(a).clearHistory();
    }
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    int i = 0;
    boolean bool = false;
    String str = URI.create(paramString).getScheme();
    if ((str.equals("weixin")) || (str.equals("alipays")) || (str.equals("didipasnger")))
    {
      paramString = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
      if (paramString.resolveActivity(a.getPackageManager()) != null)
      {
        a.startActivity(paramString);
        bool = true;
      }
    }
    label136:
    label138:
    while (!str.equals("tel"))
    {
      return bool;
      Uri.Builder localBuilder = Uri.parse("http://static.udache.com/gulfstream/webapp/pages/sdk/error.html").buildUpon();
      switch (str.hashCode())
      {
      default: 
        i = -1;
        switch (i)
        {
        default: 
          paramString = "1001";
        }
        break;
      }
      for (;;)
      {
        localBuilder.appendQueryParameter("errorcode", paramString);
        paramWebView.loadUrl(localBuilder.toString());
        break;
        if (!str.equals("weixin")) {
          break label136;
        }
        break label138;
        if (!str.equals("alipays")) {
          break label136;
        }
        i = 1;
        break label138;
        if (!str.equals("didipasnger")) {
          break label136;
        }
        i = 2;
        break label138;
        paramString = "2001";
        continue;
        paramString = "2002";
        continue;
        paramString = "2003";
      }
    }
    paramWebView = new Intent();
    paramWebView.setAction("android.intent.action.DIAL");
    paramWebView.setData(Uri.parse(paramString));
    a.startActivity(paramWebView);
    return true;
  }
}
