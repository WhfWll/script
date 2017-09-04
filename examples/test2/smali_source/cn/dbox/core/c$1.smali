.class Lcn/dbox/core/c$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/c;->a(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcn/dbox/core/c;


# direct methods
.method constructor <init>(Lcn/dbox/core/c;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 95
    iput-object p1, p0, Lcn/dbox/core/c$1;->c:Lcn/dbox/core/c;

    iput-object p2, p0, Lcn/dbox/core/c$1;->a:Ljava/lang/String;

    iput p3, p0, Lcn/dbox/core/c$1;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 100
    :try_start_0
    sget-boolean v0, Lcn/dbox/core/c/a;->a:Z

    if-nez v0, :cond_e

    .line 101
    new-instance v0, Lcn/dbox/core/c/a;

    iget-object v1, p0, Lcn/dbox/core/c$1;->c:Lcn/dbox/core/c;

    invoke-direct {v0, v1}, Lcn/dbox/core/c/a;-><init>(Lcn/dbox/core/c;)V

    invoke-virtual {v0}, Lcn/dbox/core/c/a;->a()V

    .line 105
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    iget-object v1, p0, Lcn/dbox/core/c$1;->a:Ljava/lang/String;

    if-nez v1, :cond_30

    .line 109
    invoke-static {}, Lcn/dbox/core/c;->u()Lcn/dbox/core/h/d;

    move-result-object v1

    const-string v2, "adContainerName:wall"

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 123
    :cond_20
    :goto_20
    new-instance v1, Lcn/dbox/core/c/d;

    iget-object v2, p0, Lcn/dbox/core/c$1;->c:Lcn/dbox/core/c;

    invoke-direct {v1, v2}, Lcn/dbox/core/c/d;-><init>(Lcn/dbox/core/c;)V

    new-instance v2, Lcn/dbox/core/c$1$1;

    invoke-direct {v2, p0}, Lcn/dbox/core/c$1$1;-><init>(Lcn/dbox/core/c$1;)V

    invoke-virtual {v1, v2, v0}, Lcn/dbox/core/c/d;->a(Lcn/dbox/core/c/d$a;Ljava/util/HashMap;)V

    .line 213
    :goto_2f
    return-void

    .line 112
    :cond_30
    const-string v1, "acid"

    iget-object v2, p0, Lcn/dbox/core/c$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget v1, p0, Lcn/dbox/core/c$1;->b:I

    if-eqz v1, :cond_20

    .line 116
    iget-object v1, p0, Lcn/dbox/core/c$1;->c:Lcn/dbox/core/c;

    iget-object v2, p0, Lcn/dbox/core/c$1;->c:Lcn/dbox/core/c;

    iget-object v3, p0, Lcn/dbox/core/c$1;->a:Ljava/lang/String;

    iget v4, p0, Lcn/dbox/core/c$1;->b:I

    invoke-virtual {v2, v3, v4}, Lcn/dbox/core/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/dbox/core/c;->a:Ljava/lang/String;

    .line 118
    const-string v1, "ids"

    iget-object v2, p0, Lcn/dbox/core/c$1;->c:Lcn/dbox/core/c;

    iget-object v2, v2, Lcn/dbox/core/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Lcn/dbox/core/e/a; {:try_start_0 .. :try_end_52} :catch_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_5e

    goto :goto_20

    .line 207
    :catch_53
    move-exception v0

    .line 208
    invoke-static {}, Lcn/dbox/core/c;->u()Lcn/dbox/core/h/d;

    move-result-object v0

    const-string v1, "Config request is ongoing, Thread will sleep 1 seconds, and then restart to request"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->d(Ljava/lang/String;)V

    goto :goto_2f

    .line 209
    :catch_5e
    move-exception v0

    .line 210
    invoke-static {}, Lcn/dbox/core/c;->u()Lcn/dbox/core/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 211
    iget-object v0, p0, Lcn/dbox/core/c$1;->c:Lcn/dbox/core/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/dbox/core/c;->a(Lcn/dbox/core/c;Z)Z

    goto :goto_2f
.end method
