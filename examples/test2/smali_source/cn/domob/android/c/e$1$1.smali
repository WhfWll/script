.class Lcn/domob/android/c/e$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/c/e$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/c/e$1;


# direct methods
.method constructor <init>(Lcn/domob/android/c/e$1;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 53
    iget-object v0, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v0, v0, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    iget-object v0, v0, Lcn/domob/android/c/e;->a:Lcn/domob/android/i/f;

    const-string v1, "cache download failed errCode: %d, errInfo: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v0, v0, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v0}, Lcn/domob/android/c/e;->c(Lcn/domob/android/c/e;)Lcn/domob/android/c/e$a;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 55
    if-ne p1, v5, :cond_44

    .line 56
    iget-object v0, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v0, v0, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v0}, Lcn/domob/android/c/e;->c(Lcn/domob/android/c/e;)Lcn/domob/android/c/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v1, v1, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v1}, Lcn/domob/android/c/e;->d(Lcn/domob/android/c/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v2, v2, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v2}, Lcn/domob/android/c/e;->e(Lcn/domob/android/c/e;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/domob/android/c/e$a;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 65
    :cond_43
    :goto_43
    return-void

    .line 57
    :cond_44
    const/4 v0, 0x5

    if-ne p1, v0, :cond_63

    .line 58
    iget-object v0, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v0, v0, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v0}, Lcn/domob/android/c/e;->c(Lcn/domob/android/c/e;)Lcn/domob/android/c/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v1, v1, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v1}, Lcn/domob/android/c/e;->d(Lcn/domob/android/c/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v2, v2, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v2}, Lcn/domob/android/c/e;->e(Lcn/domob/android/c/e;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/domob/android/c/e$a;->c(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_43

    .line 59
    :cond_63
    const/4 v0, 0x6

    if-ne p1, v0, :cond_82

    .line 60
    iget-object v0, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v0, v0, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v0}, Lcn/domob/android/c/e;->c(Lcn/domob/android/c/e;)Lcn/domob/android/c/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v1, v1, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v1}, Lcn/domob/android/c/e;->d(Lcn/domob/android/c/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v2, v2, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v2}, Lcn/domob/android/c/e;->e(Lcn/domob/android/c/e;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/domob/android/c/e$a;->d(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_43

    .line 61
    :cond_82
    const/4 v0, 0x7

    if-ne p1, v0, :cond_43

    .line 62
    iget-object v0, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v0, v0, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v0}, Lcn/domob/android/c/e;->c(Lcn/domob/android/c/e;)Lcn/domob/android/c/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v1, v1, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v1}, Lcn/domob/android/c/e;->d(Lcn/domob/android/c/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v2, v2, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v2}, Lcn/domob/android/c/e;->e(Lcn/domob/android/c/e;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/domob/android/c/e$a;->b(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_43
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 10

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v0, v0, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v0}, Lcn/domob/android/c/e;->c(Lcn/domob/android/c/e;)Lcn/domob/android/c/e$a;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 47
    iget-object v0, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v0, v0, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v0}, Lcn/domob/android/c/e;->c(Lcn/domob/android/c/e;)Lcn/domob/android/c/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v1, v1, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v1}, Lcn/domob/android/c/e;->d(Lcn/domob/android/c/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v2, v2, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v2}, Lcn/domob/android/c/e;->e(Lcn/domob/android/c/e;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Lcn/domob/android/c/e$a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;J)V

    .line 49
    :cond_27
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 73
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .registers 10

    .prologue
    .line 81
    iget-object v0, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v0, v0, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v0}, Lcn/domob/android/c/e;->c(Lcn/domob/android/c/e;)Lcn/domob/android/c/e$a;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 82
    iget-object v0, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v0, v0, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v0}, Lcn/domob/android/c/e;->c(Lcn/domob/android/c/e;)Lcn/domob/android/c/e$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v1, v1, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v1}, Lcn/domob/android/c/e;->d(Lcn/domob/android/c/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/e$1$1;->a:Lcn/domob/android/c/e$1;

    iget-object v2, v2, Lcn/domob/android/c/e$1;->a:Lcn/domob/android/c/e;

    invoke-static {v2}, Lcn/domob/android/c/e;->e(Lcn/domob/android/c/e;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Lcn/domob/android/c/e$a;->b(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;J)V

    .line 84
    :cond_27
    return-void
.end method
