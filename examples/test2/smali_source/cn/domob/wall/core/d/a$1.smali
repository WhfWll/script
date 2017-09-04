.class Lcn/domob/wall/core/d/a$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/d/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/d/a;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/d/a;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcn/domob/wall/core/d/a$1;->a:Lcn/domob/wall/core/d/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcn/domob/wall/core/d/a;->a()Lcn/domob/wall/core/h/d;

    move-result-object v0

    const-string v1, "onPageFinished"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcn/domob/wall/core/d/a$1;->a:Lcn/domob/wall/core/d/a;

    invoke-static {v0}, Lcn/domob/wall/core/d/a;->a(Lcn/domob/wall/core/d/a;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 70
    iget-object v0, p0, Lcn/domob/wall/core/d/a$1;->a:Lcn/domob/wall/core/d/a;

    invoke-static {v0}, Lcn/domob/wall/core/d/a;->b(Lcn/domob/wall/core/d/a;)V

    .line 74
    :goto_19
    iget-object v0, p0, Lcn/domob/wall/core/d/a$1;->a:Lcn/domob/wall/core/d/a;

    iget-object v0, v0, Lcn/domob/wall/core/d/a;->a:Lcn/domob/wall/core/d/a$b;

    if-eqz v0, :cond_28

    .line 75
    iget-object v0, p0, Lcn/domob/wall/core/d/a$1;->a:Lcn/domob/wall/core/d/a;

    iget-object v0, v0, Lcn/domob/wall/core/d/a;->a:Lcn/domob/wall/core/d/a$b;

    check-cast p1, Lcn/domob/wall/core/d/a;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-interface {v0, p1, p2}, Lcn/domob/wall/core/d/a$b;->a(Lcn/domob/wall/core/d/a;Ljava/lang/String;)V

    .line 79
    :cond_28
    return-void

    .line 72
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_29
    iget-object v0, p0, Lcn/domob/wall/core/d/a$1;->a:Lcn/domob/wall/core/d/a;

    invoke-static {v0}, Lcn/domob/wall/core/d/a;->c(Lcn/domob/wall/core/d/a;)V

    goto :goto_19
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 62
    invoke-static {}, Lcn/domob/wall/core/d/a;->a()Lcn/domob/wall/core/h/d;

    move-result-object v0

    const-string v1, "onPageStarted"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcn/domob/wall/core/d/a;->a()Lcn/domob/wall/core/h/d;

    move-result-object v0

    const-string v1, "onReceivedError"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcn/domob/wall/core/d/a$1;->a:Lcn/domob/wall/core/d/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/wall/core/d/a;->a(Lcn/domob/wall/core/d/a;Z)Z

    .line 87
    iget-object v0, p0, Lcn/domob/wall/core/d/a$1;->a:Lcn/domob/wall/core/d/a;

    invoke-static {v0}, Lcn/domob/wall/core/d/a;->b(Lcn/domob/wall/core/d/a;)V

    .line 88
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-static {}, Lcn/domob/wall/core/d/a;->a()Lcn/domob/wall/core/h/d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EBaseWebView shouldOverrideUrlLoading url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcn/domob/wall/core/d/a$1;->a:Lcn/domob/wall/core/d/a;

    invoke-virtual {v1}, Lcn/domob/wall/core/d/a;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_5a

    .line 97
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    .line 98
    invoke-static {}, Lcn/domob/wall/core/d/a;->a()Lcn/domob/wall/core/h/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EBaseWebView shouldOverrideUrlLoading hit.getType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 100
    if-nez v1, :cond_49

    .line 101
    iget-object v1, p0, Lcn/domob/wall/core/d/a$1;->a:Lcn/domob/wall/core/d/a;

    invoke-virtual {v1, p2}, Lcn/domob/wall/core/d/a;->loadUrl(Ljava/lang/String;)V

    .line 113
    .end local p1    # "view":Landroid/webkit/WebView;
    :goto_48
    return v0

    .line 104
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_49
    iget-object v0, p0, Lcn/domob/wall/core/d/a$1;->a:Lcn/domob/wall/core/d/a;

    iget-object v0, v0, Lcn/domob/wall/core/d/a;->b:Lcn/domob/wall/core/d/a$a;

    if-eqz v0, :cond_58

    .line 105
    iget-object v0, p0, Lcn/domob/wall/core/d/a$1;->a:Lcn/domob/wall/core/d/a;

    iget-object v0, v0, Lcn/domob/wall/core/d/a;->b:Lcn/domob/wall/core/d/a$a;

    check-cast p1, Lcn/domob/wall/core/d/a;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-interface {v0, p1, p2}, Lcn/domob/wall/core/d/a$a;->a(Lcn/domob/wall/core/d/a;Ljava/lang/String;)V

    .line 108
    :cond_58
    const/4 v0, 0x1

    goto :goto_48

    .line 111
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_5a
    invoke-static {}, Lcn/domob/wall/core/d/a;->a()Lcn/domob/wall/core/h/d;

    move-result-object v1

    const-string v2, "HitTestResult is null"

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcn/domob/wall/core/d/a$1;->a:Lcn/domob/wall/core/d/a;

    invoke-virtual {v1, p2}, Lcn/domob/wall/core/d/a;->loadUrl(Ljava/lang/String;)V

    goto :goto_48
.end method
