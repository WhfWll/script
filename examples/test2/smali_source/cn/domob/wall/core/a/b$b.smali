.class Lcn/domob/wall/core/a/b$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/a/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/a/b;)V
    .registers 2

    .prologue
    .line 468
    iput-object p1, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 510
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcn/domob/wall/core/a/b;->b()Lcn/domob/wall/core/h/d;

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

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/wall/core/a/b;->b(Lcn/domob/wall/core/a/b;Z)Z

    .line 514
    iget-object v0, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->c(Lcn/domob/wall/core/a/b;)Lcn/domob/wall/core/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 515
    iget-object v0, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->c(Lcn/domob/wall/core/a/b;)Lcn/domob/wall/core/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    iget-object v1, v1, Lcn/domob/wall/core/a/b;->a:Lcn/domob/wall/core/bean/AdInfo;

    invoke-interface {v0, v1}, Lcn/domob/wall/core/a/b$a;->i(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 518
    :cond_38
    iget-object v0, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->g(Lcn/domob/wall/core/a/b;)V

    .line 519
    iget-object v0, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->j(Lcn/domob/wall/core/a/b;)V

    .line 520
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 524
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 525
    invoke-static {}, Lcn/domob/wall/core/a/b;->b()Lcn/domob/wall/core/h/d;

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

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->f(Lcn/domob/wall/core/a/b;)V

    .line 527
    iget-object v0, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->j(Lcn/domob/wall/core/a/b;)V

    .line 528
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->c(Lcn/domob/wall/core/a/b;)Lcn/domob/wall/core/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 536
    iget-object v0, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->c(Lcn/domob/wall/core/a/b;)Lcn/domob/wall/core/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    iget-object v1, v1, Lcn/domob/wall/core/a/b;->a:Lcn/domob/wall/core/bean/AdInfo;

    invoke-interface {v0, v1}, Lcn/domob/wall/core/a/b$a;->j(Lcn/domob/wall/core/bean/AdInfo;)V

    .line 539
    :cond_18
    invoke-static {}, Lcn/domob/wall/core/a/b;->b()Lcn/domob/wall/core/h/d;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

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

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 471
    invoke-static {}, Lcn/domob/wall/core/a/b;->b()Lcn/domob/wall/core/h/d;

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

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcn/domob/wall/core/h/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 474
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 475
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 477
    const-string v2, "close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 478
    iget-object v0, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->i(Lcn/domob/wall/core/a/b;)V

    .line 505
    :cond_3a
    :goto_3a
    return v4

    .line 484
    :cond_3b
    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 485
    const/4 v0, 0x0

    .line 487
    :try_start_44
    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_83

    move-result-object v0

    .line 492
    :goto_4a
    invoke-static {}, Lcn/domob/wall/core/a/b;->b()Lcn/domob/wall/core/h/d;

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

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 500
    :cond_67
    :goto_67
    iget-object v0, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->c(Lcn/domob/wall/core/a/b;)Lcn/domob/wall/core/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 501
    iget-object v0, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->c(Lcn/domob/wall/core/a/b;)Lcn/domob/wall/core/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v1}, Lcn/domob/wall/core/a/b;->a(Lcn/domob/wall/core/a/b;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/wall/core/a/b$b;->a:Lcn/domob/wall/core/a/b;

    iget-object v2, v2, Lcn/domob/wall/core/a/b;->a:Lcn/domob/wall/core/bean/AdInfo;

    invoke-interface {v0, p2, v1, v2}, Lcn/domob/wall/core/a/b$a;->a(Ljava/lang/String;Landroid/webkit/WebView;Lcn/domob/wall/core/bean/AdInfo;)V

    goto :goto_3a

    .line 488
    :catch_83
    move-exception v1

    .line 489
    invoke-static {}, Lcn/domob/wall/core/a/b;->b()Lcn/domob/wall/core/h/d;

    move-result-object v2

    const-string v3, "Error happened during loading Landing Page."

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcn/domob/wall/core/a/b;->b()Lcn/domob/wall/core/h/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_4a

    .line 496
    :cond_95
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 497
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_67
.end method
