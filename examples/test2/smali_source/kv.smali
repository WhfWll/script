.class public abstract Lkv;
.super Lli;

# interfaces
.implements Ljo;


# direct methods
.method public constructor <init>(B)V
    .registers 2

    invoke-direct {p0, p1}, Lli;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp;
        }
    .end annotation

    invoke-virtual {p0}, Lkv;->a()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final a()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lkv;->c()[B
    :try_end_3
    .catch Ljm; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljp;

    invoke-virtual {v0}, Ljm;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljp;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a_()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lkv;->b()[B
    :try_end_3
    .catch Ljm; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljp;

    invoke-virtual {v0}, Ljm;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljp;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
