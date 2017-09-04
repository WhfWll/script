.class Lcn/domob/wall/core/b$5;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/b;)V
    .registers 2

    .prologue
    .line 495
    iput-object p1, p0, Lcn/domob/wall/core/b$5;->a:Lcn/domob/wall/core/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 498
    :try_start_0
    sget-boolean v0, Lcn/domob/wall/core/c/a;->a:Z

    if-nez v0, :cond_e

    .line 499
    new-instance v0, Lcn/domob/wall/core/c/a;

    iget-object v1, p0, Lcn/domob/wall/core/b$5;->a:Lcn/domob/wall/core/b;

    invoke-direct {v0, v1}, Lcn/domob/wall/core/c/a;-><init>(Lcn/domob/wall/core/b;)V

    invoke-virtual {v0}, Lcn/domob/wall/core/c/a;->a()V

    .line 502
    :cond_e
    new-instance v0, Lcn/domob/wall/core/c/d;

    iget-object v1, p0, Lcn/domob/wall/core/b$5;->a:Lcn/domob/wall/core/b;

    invoke-direct {v0, v1}, Lcn/domob/wall/core/c/d;-><init>(Lcn/domob/wall/core/b;)V

    new-instance v1, Lcn/domob/wall/core/b$5$1;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/b$5$1;-><init>(Lcn/domob/wall/core/b$5;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/c/d;->a(Lcn/domob/wall/core/c/d$c;Ljava/util/HashMap;)V
    :try_end_1e
    .catch Lcn/domob/wall/core/e/a; {:try_start_0 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_2a

    .line 555
    :goto_1e
    return-void

    .line 549
    :catch_1f
    move-exception v0

    .line 550
    invoke-static {}, Lcn/domob/wall/core/b;->j()Lcn/domob/wall/core/h/d;

    move-result-object v0

    const-string v1, "Config request is ongoing, Thread will sleep 1 seconds, and then restart to request"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->d(Ljava/lang/String;)V

    goto :goto_1e

    .line 551
    :catch_2a
    move-exception v0

    .line 552
    invoke-static {}, Lcn/domob/wall/core/b;->j()Lcn/domob/wall/core/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 553
    iget-object v0, p0, Lcn/domob/wall/core/b$5;->a:Lcn/domob/wall/core/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/wall/core/b;->e(Lcn/domob/wall/core/b;Z)Z

    goto :goto_1e
.end method
