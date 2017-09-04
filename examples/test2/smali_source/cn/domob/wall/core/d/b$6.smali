.class Lcn/domob/wall/core/d/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/d/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/d/b;-><init>(Lcn/domob/wall/core/b;Landroid/content/Context;Ljava/lang/String;Lcn/domob/wall/core/d/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/d/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/d/b;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    iget-object v0, v0, Lcn/domob/wall/core/d/b;->b:Lcn/domob/wall/core/d/b$a;

    if-eqz v0, :cond_d

    .line 91
    iget-object v0, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    iget-object v0, v0, Lcn/domob/wall/core/d/b;->b:Lcn/domob/wall/core/d/b$a;

    invoke-interface {v0}, Lcn/domob/wall/core/d/b$a;->a()V

    .line 93
    :cond_d
    iget-object v0, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    invoke-static {v0}, Lcn/domob/wall/core/d/b;->a(Lcn/domob/wall/core/d/b;)Lcn/domob/wall/core/d/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/d/a;->loadUrl(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcn/domob/wall/core/d/b;->b()Lcn/domob/wall/core/h/d;

    move-result-object v0

    const-string v1, "you click close button"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    invoke-static {v0}, Lcn/domob/wall/core/d/b;->a(Lcn/domob/wall/core/d/b;)Lcn/domob/wall/core/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/d/a;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 100
    iget-object v0, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    invoke-static {v0}, Lcn/domob/wall/core/d/b;->a(Lcn/domob/wall/core/d/b;)Lcn/domob/wall/core/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/d/a;->goBack()V

    .line 101
    invoke-static {}, Lcn/domob/wall/core/d/b;->b()Lcn/domob/wall/core/h/d;

    move-result-object v0

    const-string v1, "webView canGoBack"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 107
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    invoke-virtual {v0}, Lcn/domob/wall/core/d/b;->a()V

    .line 108
    invoke-static {}, Lcn/domob/wall/core/d/b;->b()Lcn/domob/wall/core/h/d;

    move-result-object v0

    const-string v1, "you click back button"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 109
    return-void

    .line 103
    :cond_2d
    iget-object v0, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    iget-object v0, v0, Lcn/domob/wall/core/d/b;->b:Lcn/domob/wall/core/d/b$a;

    if-eqz v0, :cond_1e

    .line 104
    iget-object v0, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    iget-object v0, v0, Lcn/domob/wall/core/d/b;->b:Lcn/domob/wall/core/d/b$a;

    invoke-interface {v0}, Lcn/domob/wall/core/d/b$a;->a()V

    goto :goto_1e
.end method

.method public c()V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    invoke-static {v0}, Lcn/domob/wall/core/d/b;->a(Lcn/domob/wall/core/d/b;)Lcn/domob/wall/core/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/d/a;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 114
    iget-object v0, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    invoke-static {v0}, Lcn/domob/wall/core/d/b;->a(Lcn/domob/wall/core/d/b;)Lcn/domob/wall/core/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/d/a;->goForward()V

    .line 116
    :cond_15
    iget-object v0, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    invoke-virtual {v0}, Lcn/domob/wall/core/d/b;->a()V

    .line 117
    invoke-static {}, Lcn/domob/wall/core/d/b;->b()Lcn/domob/wall/core/h/d;

    move-result-object v0

    const-string v1, "you click forward button"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    invoke-static {v0}, Lcn/domob/wall/core/d/b;->a(Lcn/domob/wall/core/d/b;)Lcn/domob/wall/core/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/d/a;->reload()V

    .line 124
    iget-object v0, p0, Lcn/domob/wall/core/d/b$6;->a:Lcn/domob/wall/core/d/b;

    invoke-virtual {v0}, Lcn/domob/wall/core/d/b;->a()V

    .line 125
    invoke-static {}, Lcn/domob/wall/core/d/b;->b()Lcn/domob/wall/core/h/d;

    move-result-object v0

    const-string v1, "you click refresh button"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 126
    return-void
.end method
