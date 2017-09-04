.class Lcn/domob/wall/core/b$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/c/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/b$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/b$5;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/b$5;)V
    .registers 2

    .prologue
    .line 504
    iput-object p1, p0, Lcn/domob/wall/core/b$5$1;->a:Lcn/domob/wall/core/b$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 535
    iget-object v0, p0, Lcn/domob/wall/core/b$5$1;->a:Lcn/domob/wall/core/b$5;

    iget-object v0, v0, Lcn/domob/wall/core/b$5;->a:Lcn/domob/wall/core/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/wall/core/b;->e(Lcn/domob/wall/core/b;Z)Z

    .line 536
    iget-object v0, p0, Lcn/domob/wall/core/b$5$1;->a:Lcn/domob/wall/core/b$5;

    iget-object v0, v0, Lcn/domob/wall/core/b$5;->a:Lcn/domob/wall/core/b;

    invoke-static {v0}, Lcn/domob/wall/core/b;->e(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 537
    iget-object v0, p0, Lcn/domob/wall/core/b$5$1;->a:Lcn/domob/wall/core/b$5;

    iget-object v0, v0, Lcn/domob/wall/core/b$5;->a:Lcn/domob/wall/core/b;

    invoke-static {v0}, Lcn/domob/wall/core/b;->e(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;->onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    .line 543
    :cond_1d
    return-void
.end method

.method public a(Lcn/domob/wall/core/c/f;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 509
    iget-object v1, p0, Lcn/domob/wall/core/b$5$1;->a:Lcn/domob/wall/core/b$5;

    iget-object v1, v1, Lcn/domob/wall/core/b$5;->a:Lcn/domob/wall/core/b;

    invoke-static {v1, v0}, Lcn/domob/wall/core/b;->e(Lcn/domob/wall/core/b;Z)Z

    .line 510
    if-eqz p1, :cond_5c

    .line 511
    iget-object v1, p0, Lcn/domob/wall/core/b$5$1;->a:Lcn/domob/wall/core/b$5;

    iget-object v1, v1, Lcn/domob/wall/core/b$5;->a:Lcn/domob/wall/core/b;

    invoke-static {v1}, Lcn/domob/wall/core/b;->e(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 512
    iget-object v1, p0, Lcn/domob/wall/core/b$5$1;->a:Lcn/domob/wall/core/b$5;

    iget-object v1, v1, Lcn/domob/wall/core/b$5;->a:Lcn/domob/wall/core/b;

    invoke-static {v1}, Lcn/domob/wall/core/b;->e(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;

    move-result-object v1

    invoke-virtual {p1}, Lcn/domob/wall/core/c/f;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/domob/wall/core/DService$ReceiveHotSearchDataListener;->onSuccessReceiveData(Ljava/util/List;)V

    .line 516
    :cond_23
    invoke-virtual {p1}, Lcn/domob/wall/core/c/f;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5c

    move v1, v0

    .line 518
    :goto_2a
    invoke-virtual {p1}, Lcn/domob/wall/core/c/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5c

    .line 521
    invoke-static {}, Lcn/domob/wall/core/b;->j()Lcn/domob/wall/core/h/d;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hotword:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcn/domob/wall/core/c/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 520
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    .line 529
    :cond_5c
    return-void
.end method
