.class public abstract Lcom/tencent/a/a/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/a/a/a/f;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/a/a/a/a/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/a/a/a/a/c;)V
    .registers 4

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/a/a/a/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/a/a/a/a/f;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/tencent/a/a/a/a/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/a/a/a/a/f;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract a()Z
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public final o()Lcom/tencent/a/a/a/a/c;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/a/a/a/a/f;->a()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/tencent/a/a/a/a/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/a/a/a/a/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_f
    if-eqz v1, :cond_15

    invoke-static {v1}, Lcom/tencent/a/a/a/a/c;->e(Ljava/lang/String;)Lcom/tencent/a/a/a/a/c;

    move-result-object v0

    :cond_15
    return-object v0

    :cond_16
    move-object v1, v0

    goto :goto_f
.end method
