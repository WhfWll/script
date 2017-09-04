.class Lcn/domob/android/ads/a/d$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/d;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/d;)V
    .registers 2

    .prologue
    .line 430
    iput-object p1, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcn/domob/android/ads/a/d;->b()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished with URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/a/d;->b(Lcn/domob/android/ads/a/d;Z)Z

    .line 475
    iget-object v0, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 476
    iget-object v0, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/a/d$b;->r()V

    .line 479
    :cond_34
    iget-object v0, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->g(Lcn/domob/android/ads/a/d;)V

    .line 480
    iget-object v0, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->j(Lcn/domob/android/ads/a/d;)V

    .line 481
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 485
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 486
    invoke-static {}, Lcn/domob/android/ads/a/d;->b()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted with URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->f(Lcn/domob/android/ads/a/d;)V

    .line 488
    iget-object v0, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->j(Lcn/domob/android/ads/a/d;)V

    .line 489
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 497
    iget-object v0, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/a/d$b;->s()V

    .line 500
    :cond_14
    invoke-static {}, Lcn/domob/android/ads/a/d;->b()Lcn/domob/android/i/f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    const-string v2, "WebView ReceivedError, errorCode=%d, description=%s, failingUrl=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 433
    invoke-static {}, Lcn/domob/android/ads/a/d;->b()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override URL loading in landing page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 435
    const-string v0, "domob"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 436
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 439
    const-string v2, "close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 440
    iget-object v0, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->i(Lcn/domob/android/ads/a/d;)V

    .line 466
    :cond_38
    :goto_38
    return v4

    .line 446
    :cond_39
    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 447
    const/4 v0, 0x0

    .line 449
    :try_start_42
    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_47} :catch_7d

    move-result-object v0

    .line 454
    :goto_48
    invoke-static {}, Lcn/domob/android/ads/a/d;->b()Lcn/domob/android/i/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load landing page with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 461
    :cond_65
    :goto_65
    iget-object v0, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 462
    iget-object v0, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/d$a;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v1}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/d;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcn/domob/android/ads/a/d$b;->a(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_38

    .line 450
    :catch_7d
    move-exception v1

    .line 451
    invoke-static {}, Lcn/domob/android/ads/a/d;->b()Lcn/domob/android/i/f;

    move-result-object v2

    const-string v3, "Error happened during loading Landing Page."

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcn/domob/android/ads/a/d;->b()Lcn/domob/android/i/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_48

    .line 457
    :cond_8f
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 458
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_65
.end method
