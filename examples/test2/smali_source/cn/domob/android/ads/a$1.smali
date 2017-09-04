.class Lcn/domob/android/ads/a$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcn/domob/android/ads/a;->b()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "onPageFinished"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->a(Lcn/domob/android/ads/a;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 85
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->b(Lcn/domob/android/ads/a;)V

    .line 90
    :goto_19
    return-void

    .line 87
    :cond_1a
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/a;->a(Lcn/domob/android/ads/a;Z)Z

    .line 88
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->c(Lcn/domob/android/ads/a;)V

    goto :goto_19
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 77
    invoke-static {}, Lcn/domob/android/ads/a;->b()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "onPageStarted"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcn/domob/android/ads/a;->b()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "onReceivedError"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/a;->b(Lcn/domob/android/ads/a;Z)Z

    .line 97
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->b(Lcn/domob/android/ads/a;)V

    .line 98
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {}, Lcn/domob/android/ads/a;->b()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "WebView url:%s"

    invoke-virtual {v0, v1, p2}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    iget-object v0, v0, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/a$a;

    if-eqz v0, :cond_18

    .line 104
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    iget-object v0, v0, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/a$a;

    check-cast p1, Lcn/domob/android/ads/a;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-interface {v0, p1, p2}, Lcn/domob/android/ads/a$a;->a(Lcn/domob/android/ads/a;Ljava/lang/String;)V

    .line 106
    :cond_18
    const/4 v0, 0x1

    return v0
.end method
