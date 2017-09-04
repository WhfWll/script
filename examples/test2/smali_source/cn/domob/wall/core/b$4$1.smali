.class Lcn/domob/wall/core/b$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/c/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/b$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/b$4;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/b$4;)V
    .registers 2

    .prologue
    .line 414
    iput-object p1, p0, Lcn/domob/wall/core/b$4$1;->a:Lcn/domob/wall/core/b$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 460
    iget-object v0, p0, Lcn/domob/wall/core/b$4$1;->a:Lcn/domob/wall/core/b$4;

    iget-object v0, v0, Lcn/domob/wall/core/b$4;->b:Lcn/domob/wall/core/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/wall/core/b;->d(Lcn/domob/wall/core/b;Z)Z

    .line 461
    iget-object v0, p0, Lcn/domob/wall/core/b$4$1;->a:Lcn/domob/wall/core/b$4;

    iget-object v0, v0, Lcn/domob/wall/core/b$4;->b:Lcn/domob/wall/core/b;

    invoke-static {v0}, Lcn/domob/wall/core/b;->d(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 462
    iget-object v0, p0, Lcn/domob/wall/core/b$4$1;->a:Lcn/domob/wall/core/b$4;

    iget-object v0, v0, Lcn/domob/wall/core/b$4;->b:Lcn/domob/wall/core/b;

    invoke-static {v0}, Lcn/domob/wall/core/b;->d(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;->onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    .line 468
    :cond_1d
    return-void
.end method

.method public a(Lcn/domob/wall/core/c/e;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcn/domob/wall/core/b$4$1;->a:Lcn/domob/wall/core/b$4;

    iget-object v0, v0, Lcn/domob/wall/core/b$4;->b:Lcn/domob/wall/core/b;

    invoke-static {v0, v1}, Lcn/domob/wall/core/b;->d(Lcn/domob/wall/core/b;Z)Z

    .line 420
    if-eqz p1, :cond_9f

    .line 421
    iget-object v0, p0, Lcn/domob/wall/core/b$4$1;->a:Lcn/domob/wall/core/b$4;

    iget-object v0, v0, Lcn/domob/wall/core/b$4;->b:Lcn/domob/wall/core/b;

    invoke-static {v0}, Lcn/domob/wall/core/b;->d(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 422
    iget-object v0, p0, Lcn/domob/wall/core/b$4$1;->a:Lcn/domob/wall/core/b$4;

    iget-object v0, v0, Lcn/domob/wall/core/b$4;->b:Lcn/domob/wall/core/b;

    invoke-static {v0}, Lcn/domob/wall/core/b;->d(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;

    move-result-object v0

    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;->onSuccessReceiveData(Ljava/util/List;)V

    .line 425
    iget-object v0, p0, Lcn/domob/wall/core/b$4$1;->a:Lcn/domob/wall/core/b$4;

    iget-object v0, v0, Lcn/domob/wall/core/b$4;->b:Lcn/domob/wall/core/b;

    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/b;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 429
    if-eqz v2, :cond_9f

    .line 430
    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 431
    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 433
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 436
    :cond_53
    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 437
    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 439
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 442
    :cond_71
    :goto_71
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9f

    .line 444
    invoke-static {}, Lcn/domob/wall/core/b;->j()Lcn/domob/wall/core/h/d;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "details:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 443
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_71

    .line 454
    :cond_9f
    return-void
.end method
