.class Lcn/dbox/ui/b/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/core/a/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/d;->a(Landroid/content/Context;Ljava/lang/String;Lcn/dbox/core/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/b/d;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/d;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 100
    iget-object v0, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    invoke-static {v0}, Lcn/dbox/ui/b/d;->a(Lcn/dbox/ui/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 101
    iget-object v0, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    iget-object v0, v0, Lcn/dbox/ui/b/d;->e:Lcn/dbox/core/b;

    iget-object v1, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    iget-object v1, v1, Lcn/dbox/ui/b/d;->c:Ljava/lang/String;

    sget-object v2, Lcn/dbox/core/b$b;->b:Lcn/dbox/core/b$b;

    const-string v3, "http://srp.12306.moxz.net/landing/"

    invoke-virtual {v0, v1, v2, v3}, Lcn/dbox/core/b;->a(Ljava/lang/String;Lcn/dbox/core/b$b;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/dbox/ui/b/d;->a(Lcn/dbox/ui/b/d;Z)Z

    .line 106
    :cond_1d
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 78
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v1}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 96
    :cond_12
    :goto_12
    return-void

    .line 86
    :cond_13
    const-string v2, "domob"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {v0}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_29
    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 90
    iget-object v0, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    iget-object v0, v0, Lcn/dbox/ui/b/d;->e:Lcn/dbox/core/b;

    invoke-virtual {v0, p1}, Lcn/dbox/core/b;->d(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_12

    .line 92
    :catch_39
    move-exception v0

    .line 93
    invoke-static {}, Lcn/dbox/ui/b/d;->a()Lcn/dbox/core/h/d;

    move-result-object v1

    const-string v2, "Error while parsing landingpage URL."

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcn/dbox/ui/b/d;->a()Lcn/dbox/core/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 120
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    iget-object v0, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    invoke-static {v0}, Lcn/dbox/ui/b/d;->b(Lcn/dbox/ui/b/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 127
    :goto_14
    return-void

    .line 123
    :catch_15
    move-exception v0

    .line 124
    invoke-static {}, Lcn/dbox/ui/b/d;->a()Lcn/dbox/core/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 110
    iget-object v0, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    invoke-static {v0}, Lcn/dbox/ui/b/d;->a(Lcn/dbox/ui/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 111
    iget-object v0, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    iget-object v0, v0, Lcn/dbox/ui/b/d;->e:Lcn/dbox/core/b;

    iget-object v1, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    iget-object v1, v1, Lcn/dbox/ui/b/d;->c:Ljava/lang/String;

    sget-object v2, Lcn/dbox/core/b$b;->b:Lcn/dbox/core/b$b;

    const-string v3, "http://srp.12306.moxz.net/landing/"

    invoke-virtual {v0, v1, v2, v3}, Lcn/dbox/core/b;->a(Ljava/lang/String;Lcn/dbox/core/b$b;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/dbox/ui/b/d;->b(Lcn/dbox/ui/b/d;Z)Z

    .line 114
    :cond_1d
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 137
    iget-object v0, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    invoke-static {v0}, Lcn/dbox/ui/b/d;->a(Lcn/dbox/ui/b/d;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 138
    iget-object v0, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    iget-object v0, v0, Lcn/dbox/ui/b/d;->e:Lcn/dbox/core/b;

    iget-object v1, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    iget-object v1, v1, Lcn/dbox/ui/b/d;->c:Ljava/lang/String;

    sget-object v2, Lcn/dbox/core/b$b;->d:Lcn/dbox/core/b$b;

    const-string v3, "http://srp.12306.moxz.net/landing/"

    invoke-virtual {v0, v1, v2, v3}, Lcn/dbox/core/b;->a(Ljava/lang/String;Lcn/dbox/core/b$b;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/dbox/ui/b/d;->c(Lcn/dbox/ui/b/d;Z)Z

    .line 141
    :cond_1d
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 132
    iget-object v0, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    iget-object v0, v0, Lcn/dbox/ui/b/d;->e:Lcn/dbox/core/b;

    iget-object v1, p0, Lcn/dbox/ui/b/d$1;->a:Lcn/dbox/ui/b/d;

    iget-object v1, v1, Lcn/dbox/ui/b/d;->c:Ljava/lang/String;

    sget-object v2, Lcn/dbox/core/b$b;->e:Lcn/dbox/core/b$b;

    const-string v3, "http://srp.12306.moxz.net/landing/"

    invoke-virtual {v0, v1, v2, v3}, Lcn/dbox/core/b;->a(Ljava/lang/String;Lcn/dbox/core/b$b;Ljava/lang/String;)V

    .line 133
    return-void
.end method
