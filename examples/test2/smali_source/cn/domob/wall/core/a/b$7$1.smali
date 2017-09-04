.class Lcn/domob/wall/core/a/b$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/a/b$7;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/a/b$7;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/a/b$7;)V
    .registers 2

    .prologue
    .line 327
    iput-object p1, p0, Lcn/domob/wall/core/a/b$7$1;->a:Lcn/domob/wall/core/a/b$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 330
    invoke-static {}, Lcn/domob/wall/core/a/b;->b()Lcn/domob/wall/core/h/d;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a/b$7$1;->a:Lcn/domob/wall/core/a/b$7;

    iget-object v1, v1, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    const-string v2, "Video dialog dismissed."

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcn/domob/wall/core/a/b$7$1;->a:Lcn/domob/wall/core/a/b$7;

    iget-object v0, v0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/wall/core/a/b;->a(Lcn/domob/wall/core/a/b;Z)Z

    .line 334
    iget-object v0, p0, Lcn/domob/wall/core/a/b$7$1;->a:Lcn/domob/wall/core/a/b$7;

    iget-object v0, v0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->g(Lcn/domob/wall/core/a/b;)V

    .line 338
    iget-object v0, p0, Lcn/domob/wall/core/a/b$7$1;->a:Lcn/domob/wall/core/a/b$7;

    iget-object v0, v0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->h(Lcn/domob/wall/core/a/b;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 342
    iget-object v0, p0, Lcn/domob/wall/core/a/b$7$1;->a:Lcn/domob/wall/core/a/b$7;

    iget-object v0, v0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->i(Lcn/domob/wall/core/a/b;)V

    .line 343
    :cond_2d
    return-void
.end method
