.class Lcn/dbox/core/d/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/core/d/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/d/b;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/d/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/d/b;)V
    .registers 2

    .prologue
    .line 496
    iput-object p1, p0, Lcn/dbox/core/d/b$3;->a:Lcn/dbox/core/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .prologue
    .line 500
    iget-object v0, p0, Lcn/dbox/core/d/b$3;->a:Lcn/dbox/core/d/b;

    invoke-static {v0}, Lcn/dbox/core/d/b;->p(Lcn/dbox/core/d/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 501
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 506
    invoke-static {}, Lcn/dbox/core/d/b;->d()Lcn/dbox/core/h/d;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/d/b$3;->a:Lcn/dbox/core/d/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/dbox/core/d/b$3;->a:Lcn/dbox/core/d/b;

    invoke-static {v3}, Lcn/dbox/core/d/b;->c(Lcn/dbox/core/d/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d\u7ebf\u7a0b\u51fa\u9519\uff0c\u9519\u8bef\u539f\u56e0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/h/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcn/dbox/core/d/b$3;->a:Lcn/dbox/core/d/b;

    invoke-virtual {v0}, Lcn/dbox/core/d/b;->b()V

    .line 508
    invoke-static {}, Lcn/dbox/core/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 509
    iget-object v0, p0, Lcn/dbox/core/d/b$3;->a:Lcn/dbox/core/d/b;

    invoke-static {v0, p1}, Lcn/dbox/core/d/b;->c(Lcn/dbox/core/d/b;Ljava/lang/String;)V

    .line 511
    :cond_36
    iget-object v0, p0, Lcn/dbox/core/d/b$3;->a:Lcn/dbox/core/d/b;

    invoke-static {v0}, Lcn/dbox/core/d/b;->l(Lcn/dbox/core/d/b;)Lcn/dbox/core/d/c;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 512
    iget-object v0, p0, Lcn/dbox/core/d/b$3;->a:Lcn/dbox/core/d/b;

    invoke-static {v0}, Lcn/dbox/core/d/b;->l(Lcn/dbox/core/d/b;)Lcn/dbox/core/d/c;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p1}, Lcn/dbox/core/d/c;->a(ILjava/lang/String;)V

    .line 514
    :cond_48
    return-void
.end method
