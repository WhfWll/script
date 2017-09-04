.class Lcn/dbox/ui/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/a;->a(Lcn/dbox/core/bean/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/bean/d;

.field final synthetic b:Lcn/dbox/ui/a;


# direct methods
.method constructor <init>(Lcn/dbox/ui/a;Lcn/dbox/core/bean/d;)V
    .registers 3

    .prologue
    .line 155
    iput-object p1, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    iput-object p2, p0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 160
    iget-object v0, p0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "card"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 162
    iget-object v0, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    new-instance v1, Lcn/dbox/ui/b/a;

    iget-object v2, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    iget-object v2, v2, Lcn/dbox/ui/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    iget-object v4, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    iget-object v4, v4, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/dbox/ui/b/a;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V

    invoke-static {v0, v1}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/a;Lcn/dbox/ui/b/b;)Lcn/dbox/ui/b/b;

    .line 194
    :cond_23
    :goto_23
    iget-object v0, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->d(Lcn/dbox/ui/a;)Lcn/dbox/ui/b/b;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v1}, Lcn/dbox/ui/a;->e(Lcn/dbox/ui/a;)Lcn/dbox/ui/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/ui/b/b;->a(Lcn/dbox/ui/d/c;)V

    .line 196
    iget-object v0, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->d(Lcn/dbox/ui/a;)Lcn/dbox/ui/b/b;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v1}, Lcn/dbox/ui/a;->f(Lcn/dbox/ui/a;)Lcn/dbox/ui/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/ui/b/b;->a(Lcn/dbox/ui/d/a;)V

    .line 198
    iget-object v0, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->c(Lcn/dbox/ui/a;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v1}, Lcn/dbox/ui/a;->d(Lcn/dbox/ui/a;)Lcn/dbox/ui/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->c(Lcn/dbox/ui/a;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcn/dbox/ui/a$4$2;

    invoke-direct {v1, p0}, Lcn/dbox/ui/a$4$2;-><init>(Lcn/dbox/ui/a$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 231
    iget-object v0, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->c(Lcn/dbox/ui/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 232
    return-void

    .line 165
    :cond_68
    iget-object v0, p0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "feeds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 167
    iget-object v0, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    new-instance v1, Lcn/dbox/ui/b/c;

    iget-object v2, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    iget-object v2, v2, Lcn/dbox/ui/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    iget-object v4, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    iget-object v4, v4, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/dbox/ui/b/c;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V

    invoke-static {v0, v1}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/a;Lcn/dbox/ui/b/b;)Lcn/dbox/ui/b/b;

    goto :goto_23

    .line 170
    :cond_8b
    iget-object v0, p0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 172
    iget-object v0, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    new-instance v1, Lcn/dbox/ui/b/e;

    iget-object v2, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    iget-object v2, v2, Lcn/dbox/ui/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    iget-object v4, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    iget-object v4, v4, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/dbox/ui/b/e;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V

    invoke-static {v0, v1}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/a;Lcn/dbox/ui/b/b;)Lcn/dbox/ui/b/b;

    goto/16 :goto_23

    .line 175
    :cond_af
    iget-object v0, p0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 177
    iget-object v0, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    new-instance v1, Lcn/dbox/ui/b/g;

    iget-object v2, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    iget-object v2, v2, Lcn/dbox/ui/a;->k:Landroid/content/Context;

    iget-object v3, p0, Lcn/dbox/ui/a$4;->a:Lcn/dbox/core/bean/d;

    iget-object v4, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    iget-object v4, v4, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/dbox/ui/b/g;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V

    invoke-static {v0, v1}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/a;Lcn/dbox/ui/b/b;)Lcn/dbox/ui/b/b;

    .line 179
    iget-object v0, p0, Lcn/dbox/ui/a$4;->b:Lcn/dbox/ui/a;

    invoke-static {v0}, Lcn/dbox/ui/a;->d(Lcn/dbox/ui/a;)Lcn/dbox/ui/b/b;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/b/g;

    new-instance v1, Lcn/dbox/ui/a$4$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/a$4$1;-><init>(Lcn/dbox/ui/a$4;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/b/g;->a(Lcn/dbox/ui/b/g$a;)V

    goto/16 :goto_23
.end method
