.class Lcn/dbox/core/a/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/a/c$1;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/a/c$1;


# direct methods
.method constructor <init>(Lcn/dbox/core/a/c$1;)V
    .registers 2

    .prologue
    .line 326
    iput-object p1, p0, Lcn/dbox/core/a/c$1$1;->a:Lcn/dbox/core/a/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 329
    invoke-static {}, Lcn/dbox/core/a/c;->c()Lcn/dbox/core/h/d;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/a/c$1$1;->a:Lcn/dbox/core/a/c$1;

    iget-object v1, v1, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    const-string v2, "Video dialog dismissed."

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcn/dbox/core/a/c$1$1;->a:Lcn/dbox/core/a/c$1;

    iget-object v0, v0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c;Z)Z

    .line 333
    iget-object v0, p0, Lcn/dbox/core/a/c$1$1;->a:Lcn/dbox/core/a/c$1;

    iget-object v0, v0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->c(Lcn/dbox/core/a/c;)V

    .line 337
    iget-object v0, p0, Lcn/dbox/core/a/c$1$1;->a:Lcn/dbox/core/a/c$1;

    iget-object v0, v0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->d(Lcn/dbox/core/a/c;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 341
    iget-object v0, p0, Lcn/dbox/core/a/c$1$1;->a:Lcn/dbox/core/a/c$1;

    iget-object v0, v0, Lcn/dbox/core/a/c$1;->a:Lcn/dbox/core/a/c;

    invoke-virtual {v0}, Lcn/dbox/core/a/c;->b()V

    .line 342
    :cond_2d
    return-void
.end method
