.class Lcom/sdu/didi/openapi/i;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/DiDiWebActivity;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/sdu/didi/openapi/i;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/i;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->c(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_34

    if-eqz p1, :cond_34

    iget-object v0, p0, Lcom/sdu/didi/openapi/i;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->c(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v0, "[\\u4e00-\\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, ""

    :goto_25
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "\u6ef4\u6ef4\u51fa\u884c"

    :goto_31
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_34
    return-void

    :cond_35
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_3a
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/i;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><title>\u6682\u65f6\u65e0\u6cd5\u4f7f\u7528\u6ef4\u6ef4\u51fa\u884c</title><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no\"><meta name=\"apple-mobile-web-app-capable\" content=\"yes\"><style>html,body{position:relative;height:100%;width:100%;padding:0;margin:0;background:#fafafa}body{-webkit-user-select:none;-webkit-text-size-adjust:100%!important;background-color:#fafafa;font-size-adjust:none;text-align:center;margin:0 auto;font-family:\'Microsoft YaHei\',arial,sans-serif,\'Droid Sans Fallback\'}#main{padding:0;width:100%;margin:0}section{padding:10px 0}.icon{display:block;width:60px;height:60px;border-radius:30px;overflow:hidden;margin-top:100px;margin:20% auto 10px auto;background-size:auto 60px}.h1{max-height:25px;padding:5px 0;line-height:20px;font-size:17px;color:#333}.h3{line-height:20px;font-size:12px;color:#999;word-break:break-all;max-height:80px;overflow:hidden;text-overflow:ellipsis;padding:0 20px}.btn{display:inline-block;height:30px;line-height:30px;border:1px solid #ccc;padding:0 15px;border-radius:3px;color:#888;background:#fcfcfc}</style></head><body><div class=\"main\" id=\"main\"><section id=\"main-page\"><div class=\"icon\"><img widht=\"60\" height=\"60\" src=\"data:image/gif;base64,R0lGODlheAB4AKIAAP////39/fz8/O/v79TU1NPT08zMzAAAACwAAAAAeAB4AAAD/2i63P4wykmrvTjrzbv/YCiOZGmeaKqubOu+cCzPdG3feK7vfO//wKBwSCwaj8ikcslsOp/QqHRKrVqv2Kx2y+0qCgOBYFDwjggCgBogIJhDg/V68Aal5YBA/YNf7z19an8dgQCDHIWHG4mKGYyNF4+QFZKTE5WWEZiZD5ucDZ6fC6GiBqSip5+pnKuZrZavk7GQs421ireHuYO7f717v3XBb8NmxV7HXclcy1vNWs9Z0VjTV9VW11XZVHdyeqUQcXh04A9ocm3lEARhY27q8PHy8z1gYmT0Cudr6fTicuTmdVvzTWCfgvL+zcm3T00/euzuvctHsaLFixgzatzIsRijx48gQ4ocSbKkyZMoU6pcybKly5cGEgAAOw==\"></div><p class=\"h1 center\"></p><p class=\"h3 center\"></p><span class=\"btn\">\u91cd\u8bd5</span></section></div><script>!function(){\"use strict\";var t=function(t){return document.querySelector(t)},e=function(t){for(var e,n={},r=window.location.search.replace(/^\\?/,\"\").split(\"&\"),o=r.length,i=0;o>i;i++)r[i]&&(e=r[i].split(\"=\"),n[decodeURIComponent(e[0])]=decodeURIComponent(r[i].substr(e[0].length+1)));return n[t]||\"\"},n=t(\".h1\"),r=t(\".h3\"),o={404:{title:\"\u6682\u65f6\u65e0\u6cd5\u5c55\u793a\u6b64\u9875\u9762[404]\"},500:{title:\"\u6682\u65f6\u65e0\u6cd5\u5c55\u793a\u6b64\u9875\u9762[500]\"}},i=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",c=e(\"status\")||e(\"errno\")||e(\"errstatus\"),s=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\";c&&o[c]&&(i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "o[c].title),n.innerHTML=i,s&&(r.innerHTML=s||\"\"),t(\".btn\").addEventListener(\"touchend\",function(){s?window.location.replace(s):window.history.back()})}();</script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/i;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/sdu/didi/openapi/i;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    :cond_5f
    iget-object v0, p0, Lcom/sdu/didi/openapi/i;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    :cond_68
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v2, "weixin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "alipays"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "didipasnger"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    :cond_22
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/sdu/didi/openapi/i;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-virtual {v2}, Lcom/sdu/didi/openapi/DiDiWebActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_40

    iget-object v0, p0, Lcom/sdu/didi/openapi/i;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-virtual {v0, v4}, Lcom/sdu/didi/openapi/DiDiWebActivity;->startActivity(Landroid/content/Intent;)V

    :goto_3e
    move v0, v1

    :cond_3f
    :goto_3f
    return v0

    :cond_40
    const-string v2, "http://static.udache.com/gulfstream/webapp/pages/sdk/error.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v2, ""

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_ae

    :cond_54
    move v0, v2

    :goto_55
    packed-switch v0, :pswitch_data_bc

    const-string v0, "1001"

    :goto_5a
    const-string v2, "errorcode"

    invoke-virtual {v4, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_3e

    :sswitch_67
    const-string v5, "weixin"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    goto :goto_55

    :sswitch_70
    const-string v0, "alipays"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    move v0, v1

    goto :goto_55

    :sswitch_7a
    const-string v0, "didipasnger"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x2

    goto :goto_55

    :pswitch_84
    const-string v0, "2001"

    goto :goto_5a

    :pswitch_87
    const-string v0, "2002"

    goto :goto_5a

    :pswitch_8a
    const-string v0, "2003"

    goto :goto_5a

    :cond_8d
    const-string v2, "tel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sdu/didi/openapi/i;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-virtual {v2, v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_3f

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x4dabe342 -> :sswitch_7a
        -0x367c2097 -> :sswitch_70
        -0x2f2e7d9e -> :sswitch_67
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_84
        :pswitch_87
        :pswitch_8a
    .end packed-switch
.end method
