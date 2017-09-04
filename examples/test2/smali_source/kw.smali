.class public final Lkw;
.super Lli;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lli;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()B
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final b_()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
