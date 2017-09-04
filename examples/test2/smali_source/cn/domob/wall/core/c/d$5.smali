.class Lcn/domob/wall/core/c/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/c/d;->a(Lcn/domob/wall/core/c/d$c;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/c/d;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/c/d;)V
    .registers 2

    .prologue
    .line 421
    iput-object p1, p0, Lcn/domob/wall/core/c/d$5;->a:Lcn/domob/wall/core/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/c/c;)V
    .registers 10

    .prologue
    .line 425
    invoke-virtual {p1}, Lcn/domob/wall/core/c/c;->e()Ljava/lang/String;

    move-result-object v1

    .line 426
    const/4 v0, 0x0

    .line 427
    invoke-static {}, Lcn/domob/wall/core/c/d;->a()Lcn/domob/wall/core/h/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request ad response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 428
    if-eqz v1, :cond_85

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_85

    .line 429
    new-instance v0, Lcn/domob/wall/core/c/f;

    invoke-direct {v0}, Lcn/domob/wall/core/c/f;-><init>()V

    iget-object v2, p0, Lcn/domob/wall/core/c/d$5;->a:Lcn/domob/wall/core/c/d;

    invoke-static {v2}, Lcn/domob/wall/core/c/d;->a(Lcn/domob/wall/core/c/d;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcn/domob/wall/core/c/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/wall/core/c/f;

    move-result-object v0

    .line 434
    :goto_36
    if-eqz v0, :cond_a1

    .line 435
    invoke-virtual {v0}, Lcn/domob/wall/core/c/f;->b()Lcn/domob/wall/core/bean/a;

    move-result-object v1

    if-eqz v1, :cond_8f

    .line 436
    invoke-virtual {v0}, Lcn/domob/wall/core/c/f;->b()Lcn/domob/wall/core/bean/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-virtual {v0}, Lcn/domob/wall/core/c/f;->b()Lcn/domob/wall/core/bean/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/a;->a()I

    move-result v2

    .line 440
    invoke-virtual {v0}, Lcn/domob/wall/core/c/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 441
    const-string v3, "error"

    const-string v4, "Response contains error info. Error code is [%d-%s] and error content is [%s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcn/domob/wall/core/c/d$5;->a:Lcn/domob/wall/core/c/d;

    invoke-static {v0}, Lcn/domob/wall/core/c/d;->f(Lcn/domob/wall/core/c/d;)Lcn/domob/wall/core/c/d$c;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 448
    iget-object v0, p0, Lcn/domob/wall/core/c/d$5;->a:Lcn/domob/wall/core/c/d;

    invoke-static {v0}, Lcn/domob/wall/core/c/d;->f(Lcn/domob/wall/core/c/d;)Lcn/domob/wall/core/c/d$c;

    move-result-object v0

    iget-object v3, p0, Lcn/domob/wall/core/c/d$5;->a:Lcn/domob/wall/core/c/d;

    invoke-virtual {v3, v2}, Lcn/domob/wall/core/c/d;->a(I)Lcn/domob/wall/core/DService$ErrorCode;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcn/domob/wall/core/c/d$c;->a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    .line 470
    :cond_84
    :goto_84
    return-void

    .line 432
    :cond_85
    invoke-static {}, Lcn/domob/wall/core/c/d;->a()Lcn/domob/wall/core/h/d;

    move-result-object v1

    const-string v2, "Ad respStr is null."

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_36

    .line 455
    :cond_8f
    iget-object v1, p0, Lcn/domob/wall/core/c/d$5;->a:Lcn/domob/wall/core/c/d;

    invoke-static {v1}, Lcn/domob/wall/core/c/d;->f(Lcn/domob/wall/core/c/d;)Lcn/domob/wall/core/c/d$c;

    move-result-object v1

    if-eqz v1, :cond_84

    .line 456
    iget-object v1, p0, Lcn/domob/wall/core/c/d$5;->a:Lcn/domob/wall/core/c/d;

    invoke-static {v1}, Lcn/domob/wall/core/c/d;->f(Lcn/domob/wall/core/c/d;)Lcn/domob/wall/core/c/d$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/domob/wall/core/c/d$c;->a(Lcn/domob/wall/core/c/f;)V

    goto :goto_84

    .line 462
    :cond_a1
    iget-object v0, p0, Lcn/domob/wall/core/c/d$5;->a:Lcn/domob/wall/core/c/d;

    invoke-static {v0}, Lcn/domob/wall/core/c/d;->f(Lcn/domob/wall/core/c/d;)Lcn/domob/wall/core/c/d$c;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 463
    iget-object v0, p0, Lcn/domob/wall/core/c/d$5;->a:Lcn/domob/wall/core/c/d;

    invoke-static {v0}, Lcn/domob/wall/core/c/d;->f(Lcn/domob/wall/core/c/d;)Lcn/domob/wall/core/c/d$c;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/DService$ErrorCode;->INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcn/domob/wall/core/c/d$c;->a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    goto :goto_84
.end method
