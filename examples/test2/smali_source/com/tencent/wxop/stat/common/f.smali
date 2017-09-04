.class public Lcom/tencent/wxop/stat/common/f;
.super Ljava/lang/Object;


# direct methods
.method static a()[B
    .registers 2

    const-string v0, "MDNhOTc2NTExZTJjYmUzYTdmMjY4MDhmYjdhZjNjMDU="

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B)[B
    .registers 2

    invoke-static {}, Lcom/tencent/wxop/stat/common/f;->a()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/common/f;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static a([B[B)[B
    .registers 10

    const/16 v7, 0x100

    const/4 v0, 0x0

    new-array v3, v7, [I

    new-array v4, v7, [I

    array-length v2, p1

    if-lez v2, :cond_c

    if-le v2, v7, :cond_14

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must be between 1 and 256 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move v1, v0

    :goto_15
    if-ge v1, v7, :cond_22

    aput v1, v3, v1

    rem-int v5, v1, v2

    aget-byte v5, p1, v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_22
    move v1, v0

    move v2, v0

    :goto_24
    if-ge v2, v7, :cond_39

    aget v5, v3, v2

    add-int/2addr v1, v5

    aget v5, v4, v2

    add-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    aget v5, v3, v2

    aget v6, v3, v1

    aput v6, v3, v2

    aput v5, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_39
    array-length v1, p0

    new-array v4, v1, [B

    move v1, v0

    move v2, v0

    :goto_3e
    array-length v5, p0

    if-ge v0, v5, :cond_64

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    aget v5, v3, v1

    add-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    aget v5, v3, v1

    aget v6, v3, v2

    aput v6, v3, v1

    aput v5, v3, v2

    aget v5, v3, v1

    aget v6, v3, v2

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget v5, v3, v5

    aget-byte v6, p0, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_64
    return-object v4
.end method

.method public static b([B)[B
    .registers 2

    invoke-static {}, Lcom/tencent/wxop/stat/common/f;->a()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/common/f;->b([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static b([B[B)[B
    .registers 3

    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/common/f;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method
