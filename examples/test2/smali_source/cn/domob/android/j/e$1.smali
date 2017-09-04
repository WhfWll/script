.class Lcn/domob/android/j/e$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/e;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/e;


# direct methods
.method constructor <init>(Lcn/domob/android/j/e;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcn/domob/android/j/e$1;->a:Lcn/domob/android/j/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcn/domob/android/j/e;->a()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "onPageFinished"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcn/domob/android/j/e$1;->a:Lcn/domob/android/j/e;

    invoke-static {v0}, Lcn/domob/android/j/e;->a(Lcn/domob/android/j/e;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 67
    iget-object v0, p0, Lcn/domob/android/j/e$1;->a:Lcn/domob/android/j/e;

    invoke-static {v0}, Lcn/domob/android/j/e;->b(Lcn/domob/android/j/e;)V

    .line 72
    :goto_19
    return-void

    .line 69
    :cond_1a
    iget-object v0, p0, Lcn/domob/android/j/e$1;->a:Lcn/domob/android/j/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/j/e;->a(Lcn/domob/android/j/e;Z)Z

    .line 70
    iget-object v0, p0, Lcn/domob/android/j/e$1;->a:Lcn/domob/android/j/e;

    invoke-static {v0}, Lcn/domob/android/j/e;->c(Lcn/domob/android/j/e;)V

    goto :goto_19
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 59
    invoke-static {}, Lcn/domob/android/j/e;->a()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "onPageStarted"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcn/domob/android/j/e;->a()Lcn/domob/android/i/f;

    move-result-object v0

    const-string v1, "onReceivedError"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcn/domob/android/j/e$1;->a:Lcn/domob/android/j/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/j/e;->b(Lcn/domob/android/j/e;Z)Z

    .line 79
    iget-object v0, p0, Lcn/domob/android/j/e$1;->a:Lcn/domob/android/j/e;

    invoke-static {v0}, Lcn/domob/android/j/e;->b(Lcn/domob/android/j/e;)V

    .line 80
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {}, Lcn/domob/android/j/e;->a()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview intercepted url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcn/domob/android/j/e$1;->a:Lcn/domob/android/j/e;

    iget-object v0, v0, Lcn/domob/android/j/e;->a:Lcn/domob/android/j/e$a;

    if-eqz v0, :cond_27

    .line 86
    iget-object v0, p0, Lcn/domob/android/j/e$1;->a:Lcn/domob/android/j/e;

    iget-object v0, v0, Lcn/domob/android/j/e;->a:Lcn/domob/android/j/e$a;

    invoke-interface {v0, p2}, Lcn/domob/android/j/e$a;->a(Ljava/lang/String;)V

    .line 88
    :cond_27
    const/4 v0, 0x1

    return v0
.end method
