.class Lcn/domob/wall/core/b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/b$1;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/b$1;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcn/domob/wall/core/b$1$1;->a:Lcn/domob/wall/core/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 181
    iget-object v0, p0, Lcn/domob/wall/core/b$1$1;->a:Lcn/domob/wall/core/b$1;

    iget-object v0, v0, Lcn/domob/wall/core/b$1;->a:Lcn/domob/wall/core/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/b;Z)Z

    .line 182
    iget-object v0, p0, Lcn/domob/wall/core/b$1$1;->a:Lcn/domob/wall/core/b$1;

    iget-object v0, v0, Lcn/domob/wall/core/b$1;->a:Lcn/domob/wall/core/b;

    invoke-static {v0}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveDataListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 183
    iget-object v0, p0, Lcn/domob/wall/core/b$1$1;->a:Lcn/domob/wall/core/b$1;

    iget-object v0, v0, Lcn/domob/wall/core/b$1;->a:Lcn/domob/wall/core/b;

    invoke-static {v0}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveDataListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/domob/wall/core/DService$ReceiveDataListener;->onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    .line 189
    :cond_1d
    return-void
.end method

.method public a(Lcn/domob/wall/core/c/e;)V
    .registers 7

    .prologue
    .line 133
    iget-object v0, p0, Lcn/domob/wall/core/b$1$1;->a:Lcn/domob/wall/core/b$1;

    iget-object v0, v0, Lcn/domob/wall/core/b$1;->a:Lcn/domob/wall/core/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/b;Z)Z

    .line 134
    if-eqz p1, :cond_df

    .line 135
    iget-object v0, p0, Lcn/domob/wall/core/b$1$1;->a:Lcn/domob/wall/core/b$1;

    iget-object v0, v0, Lcn/domob/wall/core/b$1;->a:Lcn/domob/wall/core/b;

    invoke-static {v0}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveDataListener;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 136
    iget-object v0, p0, Lcn/domob/wall/core/b$1$1;->a:Lcn/domob/wall/core/b$1;

    iget-object v0, v0, Lcn/domob/wall/core/b$1;->a:Lcn/domob/wall/core/b;

    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/b;->a(Ljava/util/List;)V

    .line 138
    iget-object v0, p0, Lcn/domob/wall/core/b$1$1;->a:Lcn/domob/wall/core/b$1;

    iget-object v0, v0, Lcn/domob/wall/core/b$1;->a:Lcn/domob/wall/core/b;

    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/b;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcn/domob/wall/core/b$1$1;->a:Lcn/domob/wall/core/b$1;

    iget-object v0, v0, Lcn/domob/wall/core/b$1;->a:Lcn/domob/wall/core/b;

    invoke-static {v0}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/DService$ReceiveDataListener;

    move-result-object v0

    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->c()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/domob/wall/core/DService$ReceiveDataListener;->onSuccessReceiveData(Ljava/util/List;Ljava/util/List;Lcn/domob/wall/core/bean/ControlInfo;Ljava/util/List;)V

    .line 152
    :cond_45
    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 153
    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 155
    invoke-static {}, Lcn/domob/wall/core/b;->j()Lcn/domob/wall/core/h/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BannerList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    goto :goto_53

    .line 159
    :cond_7e
    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b7

    .line 160
    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/bean/AdInfo;

    .line 162
    invoke-static {}, Lcn/domob/wall/core/b;->j()Lcn/domob/wall/core/h/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdItemList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    goto :goto_8c

    .line 166
    :cond_b7
    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->c()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v0

    if-eqz v0, :cond_df

    .line 167
    invoke-static {}, Lcn/domob/wall/core/b;->j()Lcn/domob/wall/core/h/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControlInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/domob/wall/core/c/e;->c()Lcn/domob/wall/core/bean/ControlInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/ControlInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 175
    :cond_df
    return-void
.end method
