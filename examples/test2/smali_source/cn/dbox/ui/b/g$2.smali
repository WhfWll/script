.class Lcn/dbox/ui/b/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/core/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/g;->a(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/b/g;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/g;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/dbox/core/bean/d;)V
    .registers 5

    .prologue
    .line 126
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    invoke-static {v0}, Lcn/dbox/ui/b/g;->a(Lcn/dbox/ui/b/g;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 127
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v0, v0, Lcn/dbox/ui/b/g;->j:Lcn/dbox/core/b;

    iget-object v1, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v1, v1, Lcn/dbox/ui/b/g;->g:Lcn/dbox/core/bean/d;

    sget-object v2, Lcn/dbox/core/b$b;->b:Lcn/dbox/core/b$b;

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/b;->a(Lcn/dbox/core/bean/d;Lcn/dbox/core/b$b;)V

    .line 128
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/dbox/ui/b/g;->a(Lcn/dbox/ui/b/g;Z)Z

    .line 131
    :cond_1b
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/WebView;Lcn/dbox/core/bean/d;)V
    .registers 7

    .prologue
    .line 104
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v1}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 122
    :cond_12
    :goto_12
    return-void

    .line 112
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

    .line 116
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v0, v0, Lcn/dbox/ui/b/g;->j:Lcn/dbox/core/b;

    invoke-virtual {v0, p1}, Lcn/dbox/core/b;->d(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_12

    .line 118
    :catch_39
    move-exception v0

    .line 119
    invoke-static {}, Lcn/dbox/ui/b/g;->f()Lcn/dbox/core/h/d;

    move-result-object v1

    const-string v2, "Error while parsing landingpage URL."

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcn/dbox/ui/b/g;->f()Lcn/dbox/core/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/bean/d;)V
    .registers 7

    .prologue
    .line 149
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 151
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v0, v0, Lcn/dbox/ui/b/g;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 156
    :goto_12
    return-void

    .line 152
    :catch_13
    move-exception v0

    .line 153
    invoke-static {}, Lcn/dbox/ui/b/g;->f()Lcn/dbox/core/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public b(Lcn/dbox/core/bean/d;)V
    .registers 5

    .prologue
    .line 135
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    invoke-static {v0}, Lcn/dbox/ui/b/g;->a(Lcn/dbox/ui/b/g;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 136
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v0, v0, Lcn/dbox/ui/b/g;->j:Lcn/dbox/core/b;

    iget-object v1, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v1, v1, Lcn/dbox/ui/b/g;->g:Lcn/dbox/core/bean/d;

    sget-object v2, Lcn/dbox/core/b$b;->b:Lcn/dbox/core/b$b;

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/b;->a(Lcn/dbox/core/bean/d;Lcn/dbox/core/b$b;)V

    .line 137
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/dbox/ui/b/g;->b(Lcn/dbox/ui/b/g;Z)Z

    .line 139
    :cond_1b
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v0, v0, Lcn/dbox/ui/b/g;->y:Lcn/dbox/core/a/c;

    if-eqz v0, :cond_2a

    .line 140
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v1, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v1, v1, Lcn/dbox/ui/b/g;->y:Lcn/dbox/core/a/c;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/b/g;->removeView(Landroid/view/View;)V

    .line 142
    :cond_2a
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v1, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v1, v1, Lcn/dbox/ui/b/g;->a:Landroid/view/View;

    iget-object v2, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v2, v2, Lcn/dbox/ui/b/g;->x:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcn/dbox/ui/b/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void
.end method

.method public c(Lcn/dbox/core/bean/d;)V
    .registers 5

    .prologue
    .line 165
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    invoke-static {v0}, Lcn/dbox/ui/b/g;->a(Lcn/dbox/ui/b/g;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 166
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v0, v0, Lcn/dbox/ui/b/g;->j:Lcn/dbox/core/b;

    iget-object v1, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v1, v1, Lcn/dbox/ui/b/g;->g:Lcn/dbox/core/bean/d;

    sget-object v2, Lcn/dbox/core/b$b;->d:Lcn/dbox/core/b$b;

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/b;->a(Lcn/dbox/core/bean/d;Lcn/dbox/core/b$b;)V

    .line 167
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/dbox/ui/b/g;->c(Lcn/dbox/ui/b/g;Z)Z

    .line 169
    :cond_1b
    return-void
.end method

.method public d(Lcn/dbox/core/bean/d;)V
    .registers 5

    .prologue
    .line 160
    iget-object v0, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v0, v0, Lcn/dbox/ui/b/g;->j:Lcn/dbox/core/b;

    iget-object v1, p0, Lcn/dbox/ui/b/g$2;->a:Lcn/dbox/ui/b/g;

    iget-object v1, v1, Lcn/dbox/ui/b/g;->g:Lcn/dbox/core/bean/d;

    sget-object v2, Lcn/dbox/core/b$b;->e:Lcn/dbox/core/b$b;

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/b;->a(Lcn/dbox/core/bean/d;Lcn/dbox/core/b$b;)V

    .line 161
    return-void
.end method
