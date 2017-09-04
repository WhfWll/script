.class Lcn/domob/android/c/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/c/a;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/c/a;


# direct methods
.method constructor <init>(Lcn/domob/android/c/a;)V
    .registers 2

    .prologue
    .line 538
    iput-object p1, p0, Lcn/domob/android/c/a$3;->a:Lcn/domob/android/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .prologue
    .line 542
    iget-object v0, p0, Lcn/domob/android/c/a$3;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->p(Lcn/domob/android/c/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 543
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 548
    invoke-static {}, Lcn/domob/android/c/a;->c()Lcn/domob/android/i/f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/c/a$3;->a:Lcn/domob/android/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/c/a$3;->a:Lcn/domob/android/c/a;

    invoke-static {v3}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d\u7ebf\u7a0b\u51fa\u9519\uff0c\u9519\u8bef\u539f\u56e0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; fileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/c/a$3;->a:Lcn/domob/android/c/a;

    invoke-static {v3}, Lcn/domob/android/c/a;->k(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcn/domob/android/c/a$3;->a:Lcn/domob/android/c/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/c/a;->a(Z)V

    .line 550
    iget-object v0, p0, Lcn/domob/android/c/a$3;->a:Lcn/domob/android/c/a;

    invoke-static {v0, p1}, Lcn/domob/android/c/a;->b(Lcn/domob/android/c/a;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcn/domob/android/c/a$3;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 552
    iget-object v0, p0, Lcn/domob/android/c/a$3;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p1}, Lcn/domob/android/c/b;->a(ILjava/lang/String;)V

    .line 554
    :cond_53
    return-void
.end method
