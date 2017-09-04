.class Lcn/dbox/ui/common/e$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/common/e;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/common/e;


# direct methods
.method constructor <init>(Lcn/dbox/ui/common/e;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcn/dbox/ui/common/e;->a()Lcn/dbox/core/h/d;

    move-result-object v0

    const-string v1, "onPageFinished"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    invoke-static {v0}, Lcn/dbox/ui/common/e;->a(Lcn/dbox/ui/common/e;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 104
    iget-object v0, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    invoke-static {v0}, Lcn/dbox/ui/common/e;->b(Lcn/dbox/ui/common/e;)V

    .line 112
    :goto_19
    iget-object v0, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    iget-object v0, v0, Lcn/dbox/ui/common/e;->a:Lcn/dbox/ui/common/e$b;

    if-eqz v0, :cond_2c

    .line 113
    iget-object v0, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    iget-object v0, v0, Lcn/dbox/ui/common/e;->a:Lcn/dbox/ui/common/e$b;

    iget-object v1, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    invoke-static {v1}, Lcn/dbox/ui/common/e;->d(Lcn/dbox/ui/common/e;)Lcn/dbox/core/bean/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/dbox/ui/common/e$b;->a(Lcn/dbox/core/bean/d;)V

    .line 116
    :cond_2c
    return-void

    .line 106
    :cond_2d
    iget-object v0, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    invoke-static {v0}, Lcn/dbox/ui/common/e;->c(Lcn/dbox/ui/common/e;)V

    goto :goto_19
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 96
    invoke-static {}, Lcn/dbox/ui/common/e;->a()Lcn/dbox/core/h/d;

    move-result-object v0

    const-string v1, "onPageStarted"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcn/dbox/ui/common/e;->a()Lcn/dbox/core/h/d;

    move-result-object v0

    const-string v1, "onReceivedError"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/dbox/ui/common/e;->a(Lcn/dbox/ui/common/e;Z)Z

    .line 124
    iget-object v0, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    invoke-static {v0}, Lcn/dbox/ui/common/e;->b(Lcn/dbox/ui/common/e;)V

    .line 125
    iget-object v0, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    iget-object v0, v0, Lcn/dbox/ui/common/e;->a:Lcn/dbox/ui/common/e$b;

    if-eqz v0, :cond_2a

    .line 126
    iget-object v0, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    iget-object v0, v0, Lcn/dbox/ui/common/e;->a:Lcn/dbox/ui/common/e$b;

    iget-object v1, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    invoke-static {v1}, Lcn/dbox/ui/common/e;->d(Lcn/dbox/ui/common/e;)Lcn/dbox/core/bean/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/dbox/ui/common/e$b;->b(Lcn/dbox/core/bean/d;)V

    .line 128
    :cond_2a
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-static {}, Lcn/dbox/ui/common/e;->a()Lcn/dbox/core/h/d;

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

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    invoke-virtual {v1}, Lcn/dbox/ui/common/e;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_5a

    .line 137
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    .line 138
    invoke-static {}, Lcn/dbox/ui/common/e;->a()Lcn/dbox/core/h/d;

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

    invoke-virtual {v2, v3}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 140
    if-nez v1, :cond_49

    .line 141
    iget-object v1, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    invoke-virtual {v1, p2}, Lcn/dbox/ui/common/e;->loadUrl(Ljava/lang/String;)V

    .line 153
    .end local p1    # "view":Landroid/webkit/WebView;
    :goto_48
    return v0

    .line 144
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_49
    iget-object v0, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    iget-object v0, v0, Lcn/dbox/ui/common/e;->b:Lcn/dbox/ui/common/e$a;

    if-eqz v0, :cond_58

    .line 145
    iget-object v0, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    iget-object v0, v0, Lcn/dbox/ui/common/e;->b:Lcn/dbox/ui/common/e$a;

    check-cast p1, Lcn/dbox/ui/common/e;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-interface {v0, p1, p2}, Lcn/dbox/ui/common/e$a;->a(Lcn/dbox/ui/common/e;Ljava/lang/String;)V

    .line 148
    :cond_58
    const/4 v0, 0x1

    goto :goto_48

    .line 151
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_5a
    invoke-static {}, Lcn/dbox/ui/common/e;->a()Lcn/dbox/core/h/d;

    move-result-object v1

    const-string v2, "HitTestResult is null"

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcn/dbox/ui/common/e$1;->a:Lcn/dbox/ui/common/e;

    invoke-virtual {v1, p2}, Lcn/dbox/ui/common/e;->loadUrl(Ljava/lang/String;)V

    goto :goto_48
.end method
