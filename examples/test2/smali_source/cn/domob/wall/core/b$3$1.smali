.class Lcn/domob/wall/core/b$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/c/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/b$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/b$3;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/b$3;)V
    .registers 2

    .prologue
    .line 329
    iput-object p1, p0, Lcn/domob/wall/core/b$3$1;->a:Lcn/domob/wall/core/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 368
    iget-object v0, p0, Lcn/domob/wall/core/b$3$1;->a:Lcn/domob/wall/core/b$3;

    iget-object v0, v0, Lcn/domob/wall/core/b$3;->b:Lcn/domob/wall/core/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/wall/core/b;->c(Lcn/domob/wall/core/b;Z)Z

    .line 369
    iget-object v0, p0, Lcn/domob/wall/core/b$3$1;->a:Lcn/domob/wall/core/b$3;

    iget-object v0, v0, Lcn/domob/wall/core/b$3;->b:Lcn/domob/wall/core/b;

    invoke-static {v0}, Lcn/domob/wall/core/b;->c(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveSearchDataListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 370
    iget-object v0, p0, Lcn/domob/wall/core/b$3$1;->a:Lcn/domob/wall/core/b$3;

    iget-object v0, v0, Lcn/domob/wall/core/b$3;->b:Lcn/domob/wall/core/b;

    invoke-static {v0}, Lcn/domob/wall/core/b;->c(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveSearchDataListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/domob/wall/core/DService$ReceiveSearchDataListener;->onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    .line 376
    :cond_1d
    return-void
.end method

.method public a(Lcn/domob/wall/core/c/g;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lcn/domob/wall/core/b$3$1;->a:Lcn/domob/wall/core/b$3;

    iget-object v1, v1, Lcn/domob/wall/core/b$3;->b:Lcn/domob/wall/core/b;

    invoke-static {v1, v0}, Lcn/domob/wall/core/b;->c(Lcn/domob/wall/core/b;Z)Z

    .line 335
    if-eqz p1, :cond_5e

    .line 336
    iget-object v1, p0, Lcn/domob/wall/core/b$3$1;->a:Lcn/domob/wall/core/b$3;

    iget-object v1, v1, Lcn/domob/wall/core/b$3;->b:Lcn/domob/wall/core/b;

    invoke-static {v1}, Lcn/domob/wall/core/b;->c(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveSearchDataListener;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 337
    iget-object v1, p0, Lcn/domob/wall/core/b$3$1;->a:Lcn/domob/wall/core/b$3;

    iget-object v1, v1, Lcn/domob/wall/core/b$3;->b:Lcn/domob/wall/core/b;

    invoke-static {v1}, Lcn/domob/wall/core/b;->c(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveSearchDataListener;

    move-result-object v1

    invoke-virtual {p1}, Lcn/domob/wall/core/c/g;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcn/domob/wall/core/c/g;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcn/domob/wall/core/DService$ReceiveSearchDataListener;->onSuccessReceiveData(Ljava/util/List;Ljava/util/List;)V

    .line 344
    iget-object v1, p0, Lcn/domob/wall/core/b$3$1;->a:Lcn/domob/wall/core/b$3;

    iget-object v1, v1, Lcn/domob/wall/core/b$3;->b:Lcn/domob/wall/core/b;

    invoke-virtual {p1}, Lcn/domob/wall/core/c/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/b;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    :cond_32
    invoke-virtual {p1}, Lcn/domob/wall/core/c/g;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5e

    move v1, v0

    .line 348
    :goto_39
    invoke-virtual {p1}, Lcn/domob/wall/core/c/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5e

    .line 351
    invoke-static {}, Lcn/domob/wall/core/b;->j()Lcn/domob/wall/core/h/d;

    move-result-object v2

    const-string v3, "searchad::"

    invoke-virtual {p1}, Lcn/domob/wall/core/c/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_39

    .line 362
    :cond_5e
    return-void
.end method
