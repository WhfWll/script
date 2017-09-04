.class Lcn/domob/wall/core/d/d$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/d/d$2;->a(Lcn/domob/wall/core/d/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/domob/wall/core/d/d$2;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/d/d$2;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 72
    iput-object p1, p0, Lcn/domob/wall/core/d/d$2$1;->b:Lcn/domob/wall/core/d/d$2;

    iput-object p2, p0, Lcn/domob/wall/core/d/d$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcn/domob/wall/core/d/d$2$1;->b:Lcn/domob/wall/core/d/d$2;

    iget-object v0, v0, Lcn/domob/wall/core/d/d$2;->b:Lcn/domob/wall/core/d/d;

    invoke-static {v0}, Lcn/domob/wall/core/d/d;->b(Lcn/domob/wall/core/d/d;)Lcn/domob/wall/core/d/b;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/d/d$2$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/d/b;->a(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcn/domob/wall/core/d/d$2$1;->b:Lcn/domob/wall/core/d/d$2;

    iget-object v0, v0, Lcn/domob/wall/core/d/d$2;->b:Lcn/domob/wall/core/d/d;

    invoke-static {v0}, Lcn/domob/wall/core/d/d;->a(Lcn/domob/wall/core/d/d;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 79
    invoke-static {}, Lcn/domob/wall/core/d/d;->a()Lcn/domob/wall/core/h/d;

    move-result-object v0

    const-string v1, "mDialog.isShowing"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 84
    :goto_24
    return-void

    .line 81
    :cond_25
    invoke-static {}, Lcn/domob/wall/core/d/d;->a()Lcn/domob/wall/core/h/d;

    move-result-object v0

    const-string v1, "mDialog.isNotShowing"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcn/domob/wall/core/d/d$2$1;->b:Lcn/domob/wall/core/d/d$2;

    iget-object v0, v0, Lcn/domob/wall/core/d/d$2;->b:Lcn/domob/wall/core/d/d;

    invoke-static {v0}, Lcn/domob/wall/core/d/d;->a(Lcn/domob/wall/core/d/d;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_24
.end method
