.class Lcn/domob/wall/core/b$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/b;->b()V
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
    .line 217
    iput-object p1, p0, Lcn/domob/wall/core/b$2;->a:Lcn/domob/wall/core/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 220
    :try_start_0
    sget-boolean v0, Lcn/domob/wall/core/c/a;->a:Z

    if-nez v0, :cond_e

    .line 221
    new-instance v0, Lcn/domob/wall/core/c/a;

    iget-object v1, p0, Lcn/domob/wall/core/b$2;->a:Lcn/domob/wall/core/b;

    invoke-direct {v0, v1}, Lcn/domob/wall/core/c/a;-><init>(Lcn/domob/wall/core/b;)V

    invoke-virtual {v0}, Lcn/domob/wall/core/c/a;->a()V

    .line 225
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    const-string v1, "details"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v1, Lcn/domob/wall/core/c/d;

    iget-object v2, p0, Lcn/domob/wall/core/b$2;->a:Lcn/domob/wall/core/b;

    invoke-direct {v1, v2}, Lcn/domob/wall/core/c/d;-><init>(Lcn/domob/wall/core/b;)V

    new-instance v2, Lcn/domob/wall/core/b$2$1;

    invoke-direct {v2, p0}, Lcn/domob/wall/core/b$2$1;-><init>(Lcn/domob/wall/core/b$2;)V

    invoke-virtual {v1, v2, v0}, Lcn/domob/wall/core/c/d;->a(Lcn/domob/wall/core/c/d$d;Ljava/util/HashMap;)V
    :try_end_29
    .catch Lcn/domob/wall/core/e/a; {:try_start_0 .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_35

    .line 302
    :goto_29
    return-void

    .line 296
    :catch_2a
    move-exception v0

    .line 297
    invoke-static {}, Lcn/domob/wall/core/b;->j()Lcn/domob/wall/core/h/d;

    move-result-object v0

    const-string v1, "Config request is ongoing, Thread will sleep 1 seconds, and then restart to request"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->d(Ljava/lang/String;)V

    goto :goto_29

    .line 298
    :catch_35
    move-exception v0

    .line 299
    invoke-static {}, Lcn/domob/wall/core/b;->j()Lcn/domob/wall/core/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 300
    iget-object v0, p0, Lcn/domob/wall/core/b$2;->a:Lcn/domob/wall/core/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/wall/core/b;->b(Lcn/domob/wall/core/b;Z)Z

    goto :goto_29
.end method
