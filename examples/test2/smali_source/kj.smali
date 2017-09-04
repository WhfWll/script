.class public final Lkj;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    return-void
.end method

.method private static final a([BII)J
    .registers 13

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    move-wide v6, v2

    :goto_5
    if-lez p2, :cond_41

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v5, p1, 0x1

    aget-byte v8, p0, p1

    const/16 v0, 0x2f

    if-ne v8, v0, :cond_42

    const-wide/16 v0, 0x1

    :goto_13
    const/16 v9, 0x30

    if-lt v8, v9, :cond_20

    const/16 v9, 0x39

    if-gt v8, v9, :cond_20

    add-int/lit8 v0, v8, 0x2

    add-int/lit8 v0, v0, -0x30

    int-to-long v0, v0

    :cond_20
    const/16 v9, 0x41

    if-lt v8, v9, :cond_2d

    const/16 v9, 0x5a

    if-gt v8, v9, :cond_2d

    add-int/lit8 v0, v8, 0xc

    add-int/lit8 v0, v0, -0x41

    int-to-long v0, v0

    :cond_2d
    const/16 v9, 0x61

    if-lt v8, v9, :cond_3a

    const/16 v9, 0x7a

    if-gt v8, v9, :cond_3a

    add-int/lit8 v0, v8, 0x26

    add-int/lit8 v0, v0, -0x61

    int-to-long v0, v0

    :cond_3a
    shl-long/2addr v0, v4

    add-long/2addr v6, v0

    add-int/lit8 v0, v4, 0x6

    move v4, v0

    move p1, v5

    goto :goto_5

    :cond_41
    return-wide v6

    :cond_42
    move-wide v0, v2

    goto :goto_13
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 13

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v2, v6

    mul-int/lit8 v0, v2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v7, v0, [B

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    move v4, v1

    move v5, v2

    :goto_10
    const/4 v0, 0x4

    if-lt v5, v0, :cond_32

    const/4 v0, 0x4

    invoke-static {v6, v4, v0}, Lkj;->a([BII)J

    move-result-wide v0

    add-int/lit8 v5, v5, -0x4

    add-int/lit8 v4, v4, 0x4

    const/4 v2, 0x2

    :goto_1d
    if-ltz v2, :cond_2e

    add-int v8, v3, v2

    const-wide/16 v10, 0xff

    and-long/2addr v10, v0

    long-to-int v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const/16 v8, 0x8

    shr-long/2addr v0, v8

    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    :cond_2e
    add-int/lit8 v0, v3, 0x3

    move v3, v0

    goto :goto_10

    :cond_32
    const/4 v0, 0x3

    if-ne v5, v0, :cond_4c

    const/4 v0, 0x3

    invoke-static {v6, v4, v0}, Lkj;->a([BII)J

    move-result-wide v0

    const/4 v2, 0x1

    :goto_3b
    if-ltz v2, :cond_4c

    add-int v8, v3, v2

    const-wide/16 v10, 0xff

    and-long/2addr v10, v0

    long-to-int v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const/16 v8, 0x8

    shr-long/2addr v0, v8

    add-int/lit8 v2, v2, -0x1

    goto :goto_3b

    :cond_4c
    const/4 v0, 0x2

    if-ne v5, v0, :cond_5b

    const/4 v0, 0x2

    invoke-static {v6, v4, v0}, Lkj;->a([BII)J

    move-result-wide v0

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v7, v3

    :cond_5b
    return-object v7
.end method
