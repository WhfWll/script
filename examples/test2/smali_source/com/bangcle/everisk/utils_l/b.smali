.class public final Lcom/bangcle/everisk/utils_l/b;
.super Ljava/io/RandomAccessFile;


# instance fields
.field private V:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A()I
    .registers 8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/bangcle/everisk/utils_l/b;->read()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p0}, Lcom/bangcle/everisk/utils_l/b;->read()I

    move-result v1

    aput v1, v0, v4

    invoke-virtual {p0}, Lcom/bangcle/everisk/utils_l/b;->read()I

    move-result v1

    aput v1, v0, v5

    invoke-virtual {p0}, Lcom/bangcle/everisk/utils_l/b;->read()I

    move-result v1

    aput v1, v0, v6

    aget v1, v0, v3

    aget v2, v0, v4

    or-int/2addr v1, v2

    aget v2, v0, v5

    or-int/2addr v1, v2

    aget v2, v0, v6

    or-int/2addr v1, v2

    if-gez v1, :cond_32

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_32
    iget-boolean v1, p0, Lcom/bangcle/everisk/utils_l/b;->V:Z

    if-eqz v1, :cond_48

    aget v1, v0, v6

    shl-int/lit8 v1, v1, 0x18

    aget v2, v0, v5

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    aget v2, v0, v4

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aget v0, v0, v3

    add-int/2addr v0, v1

    :goto_47
    return v0

    :cond_48
    aget v1, v0, v3

    shl-int/lit8 v1, v1, 0x18

    aget v2, v0, v4

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    aget v2, v0, v5

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aget v0, v0, v6

    add-int/2addr v0, v1

    goto :goto_47
.end method

.method public final B()J
    .registers 15

    const-wide/16 v9, 0xff

    const/4 v5, 0x7

    const/16 v0, 0x8

    new-array v6, v0, [B

    const-wide/16 v1, 0x0

    invoke-super {p0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-boolean v0, p0, Lcom/bangcle/everisk/utils_l/b;->V:Z

    if-eqz v0, :cond_25

    move-wide v11, v1

    move-wide v0, v11

    move v2, v5

    :goto_13
    if-ltz v2, :cond_3d

    shl-int/lit8 v3, v2, 0x3

    aget-byte v4, v6, v2

    int-to-long v4, v4

    shl-long/2addr v4, v3

    shl-long v7, v9, v3

    and-long v3, v4, v7

    add-long/2addr v3, v0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move-wide v0, v3

    goto :goto_13

    :cond_25
    const/4 v0, 0x0

    move v11, v0

    move-wide v12, v1

    move-wide v0, v12

    move v2, v11

    :goto_2a
    if-gt v2, v5, :cond_3d

    rsub-int/lit8 v3, v2, 0x7

    shl-int/lit8 v3, v3, 0x3

    aget-byte v4, v6, v2

    int-to-long v7, v4

    shl-long/2addr v7, v3

    shl-long v3, v9, v3

    and-long/2addr v3, v7

    add-long/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v3

    goto :goto_2a

    :cond_3d
    return-wide v0
.end method

.method public final C()S
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/bangcle/everisk/utils_l/b;->read()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p0}, Lcom/bangcle/everisk/utils_l/b;->read()I

    move-result v1

    aput v1, v0, v4

    aget v1, v0, v3

    aget v2, v0, v4

    or-int/2addr v1, v2

    if-gez v1, :cond_1e

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1e
    iget-boolean v1, p0, Lcom/bangcle/everisk/utils_l/b;->V:Z

    if-eqz v1, :cond_2b

    aget v1, v0, v4

    shl-int/lit8 v1, v1, 0x8

    aget v0, v0, v3

    add-int/2addr v0, v1

    int-to-short v0, v0

    :goto_2a
    return v0

    :cond_2b
    aget v1, v0, v3

    shl-int/lit8 v1, v1, 0x8

    aget v0, v0, v4

    add-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_2a
.end method

.method public final a([B)V
    .registers 5

    invoke-super {p0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-boolean v0, p0, Lcom/bangcle/everisk/utils_l/b;->V:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_8
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_20

    aget-byte v1, p1, v0

    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_20
    return-void
.end method

.method public final d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bangcle/everisk/utils_l/b;->V:Z

    return-void
.end method
