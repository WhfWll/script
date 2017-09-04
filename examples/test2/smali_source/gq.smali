.class public final Lgq;
.super Lfv;


# instance fields
.field private a:[C


# direct methods
.method constructor <init>([C)V
    .registers 2

    invoke-direct {p0}, Lfv;-><init>()V

    iput-object p1, p0, Lgq;->a:[C

    return-void
.end method


# virtual methods
.method final a()I
    .registers 3

    iget-object v0, p0, Lgq;->a:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lid;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lgq;->a:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method final a(Lfs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lfs;->b(I)V

    iget-object v0, p0, Lgq;->a:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lfs;->a(I)V

    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lgq;->a:[C

    array-length v1, v1

    if-eq v0, v1, :cond_24

    iget-object v1, p0, Lgq;->a:[C

    aget-char v1, v1, v0

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lfs;->b(I)V

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lfs;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_24
    return-void
.end method

.method final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final a(Lfv;)Z
    .registers 8

    const/4 v1, 0x0

    instance-of v0, p1, Lgq;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return v1

    :cond_6
    check-cast p1, Lgq;

    iget-object v2, p0, Lgq;->a:[C

    iget-object v3, p1, Lgq;->a:[C

    if-eq v2, v3, :cond_23

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    array-length v0, v2

    array-length v4, v3

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_17
    array-length v4, v2

    if-eq v0, v4, :cond_23

    aget-char v4, v2, v0

    aget-char v5, v3, v0

    if-ne v4, v5, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_23
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 5

    iget-object v2, p0, Lgq;->a:[C

    if-nez v2, :cond_6

    const/4 v0, 0x0

    :cond_5
    return v0

    :cond_6
    array-length v1, v2

    add-int/lit8 v0, v1, 0x1

    :goto_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    mul-int/lit16 v0, v0, 0x101

    aget-char v3, v2, v1

    xor-int/2addr v0, v3

    goto :goto_9
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgq;->a:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
