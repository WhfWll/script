.class Lcn/dbox/core/a/c$d;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/a/c;


# direct methods
.method constructor <init>(Lcn/dbox/core/a/c;)V
    .registers 2

    .prologue
    .line 490
    iput-object p1, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 541
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lcn/dbox/core/a/c;->c()Lcn/dbox/core/h/d;

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

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    iget-object v0, v0, Lcn/dbox/core/a/c;->a:Lcn/dbox/core/a/c$e;

    if-eqz v0, :cond_2a

    .line 544
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    iget-object v0, v0, Lcn/dbox/core/a/c;->a:Lcn/dbox/core/a/c$e;

    invoke-interface {v0}, Lcn/dbox/core/a/c$e;->b()V

    .line 546
    :cond_2a
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->e(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 547
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->e(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$b;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    iget-object v1, v1, Lcn/dbox/core/a/c;->b:Lcn/dbox/core/bean/a;

    invoke-interface {v0, v1}, Lcn/dbox/core/a/c$b;->c(Lcn/dbox/core/bean/a;)V

    .line 550
    :cond_3f
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->f(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$c;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 551
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->f(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$c;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    iget-object v1, v1, Lcn/dbox/core/a/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/dbox/core/a/c$c;->a(Ljava/lang/String;)V

    .line 554
    :cond_54
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->g(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 555
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->g(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    iget-object v1, v1, Lcn/dbox/core/a/c;->d:Lcn/dbox/core/bean/d;

    invoke-interface {v0, v1}, Lcn/dbox/core/a/c$a;->a(Lcn/dbox/core/bean/d;)V

    .line 557
    :cond_69
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->c(Lcn/dbox/core/a/c;)V

    .line 558
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->h(Lcn/dbox/core/a/c;)V

    .line 559
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 563
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 564
    invoke-static {}, Lcn/dbox/core/a/c;->c()Lcn/dbox/core/h/d;

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

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->b(Lcn/dbox/core/a/c;)V

    .line 566
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->h(Lcn/dbox/core/a/c;)V

    .line 567
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 572
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->e(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 575
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->e(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$b;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    iget-object v1, v1, Lcn/dbox/core/a/c;->b:Lcn/dbox/core/bean/a;

    invoke-interface {v0, v1}, Lcn/dbox/core/a/c$b;->d(Lcn/dbox/core/bean/a;)V

    .line 578
    :cond_18
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->f(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$c;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 579
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->f(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$c;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    iget-object v1, v1, Lcn/dbox/core/a/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/dbox/core/a/c$c;->b(Ljava/lang/String;)V

    .line 582
    :cond_2d
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->g(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 583
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->g(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    iget-object v1, v1, Lcn/dbox/core/a/c;->d:Lcn/dbox/core/bean/d;

    invoke-interface {v0, v1}, Lcn/dbox/core/a/c$a;->b(Lcn/dbox/core/bean/d;)V

    .line 585
    :cond_42
    invoke-static {}, Lcn/dbox/core/a/c;->c()Lcn/dbox/core/h/d;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

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

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 493
    invoke-static {}, Lcn/dbox/core/a/c;->c()Lcn/dbox/core/h/d;

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

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lcn/dbox/core/h/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 496
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 497
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 499
    const-string v2, "close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 500
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-virtual {v0}, Lcn/dbox/core/a/c;->b()V

    .line 536
    :cond_3a
    :goto_3a
    return v4

    .line 506
    :cond_3b
    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 507
    const/4 v0, 0x0

    .line 509
    :try_start_44
    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_b9

    move-result-object v0

    .line 514
    :goto_4a
    invoke-static {}, Lcn/dbox/core/a/c;->c()Lcn/dbox/core/h/d;

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

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 522
    :cond_67
    :goto_67
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->e(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 523
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->e(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$b;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v1}, Lcn/dbox/core/a/c;->i(Lcn/dbox/core/a/c;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    iget-object v2, v2, Lcn/dbox/core/a/c;->b:Lcn/dbox/core/bean/a;

    invoke-interface {v0, p2, v1, v2}, Lcn/dbox/core/a/c$b;->a(Ljava/lang/String;Landroid/webkit/WebView;Lcn/dbox/core/bean/a;)V

    .line 528
    :cond_82
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->f(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$c;

    move-result-object v0

    if-eqz v0, :cond_9d

    .line 529
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->f(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$c;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v1}, Lcn/dbox/core/a/c;->i(Lcn/dbox/core/a/c;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    iget-object v2, v2, Lcn/dbox/core/a/c;->c:Ljava/lang/String;

    invoke-interface {v0, p2, v1, v2}, Lcn/dbox/core/a/c$c;->a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 532
    :cond_9d
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->g(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 533
    iget-object v0, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->g(Lcn/dbox/core/a/c;)Lcn/dbox/core/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    invoke-static {v1}, Lcn/dbox/core/a/c;->i(Lcn/dbox/core/a/c;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/core/a/c$d;->a:Lcn/dbox/core/a/c;

    iget-object v2, v2, Lcn/dbox/core/a/c;->d:Lcn/dbox/core/bean/d;

    invoke-interface {v0, p2, v1, v2}, Lcn/dbox/core/a/c$a;->a(Ljava/lang/String;Landroid/webkit/WebView;Lcn/dbox/core/bean/d;)V

    goto :goto_3a

    .line 510
    :catch_b9
    move-exception v1

    .line 511
    invoke-static {}, Lcn/dbox/core/a/c;->c()Lcn/dbox/core/h/d;

    move-result-object v2

    const-string v3, "Error happened during loading Landing Page."

    invoke-virtual {v2, v3}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcn/dbox/core/a/c;->c()Lcn/dbox/core/h/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_4a

    .line 518
    :cond_cb
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 519
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_67
.end method
