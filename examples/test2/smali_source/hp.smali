.class public final Lhp;
.super Lfv;


# instance fields
.field private a:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lfv;-><init>()V

    iput-object p1, p0, Lhp;->a:[B

    return-void
.end method


# virtual methods
.method final a()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lhp;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lid;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lhp;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method final a(Lfs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    iget-object v1, p0, Lhp;->a:[B

    invoke-virtual {p1, v0, v1}, Lfs;->a(I[B)V

    return-void
.end method

.method final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final a(Lfv;)Z
    .registers 4

    instance-of v0, p1, Lhp;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, Lhp;

    iget-object v0, p0, Lhp;->a:[B

    iget-object v1, p1, Lhp;->a:[B

    invoke-static {v0, v1}, Lat;->a([B[B)Z

    move-result v0

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lhp;->a:[B

    invoke-static {v0}, Lat;->a([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 11

    const/16 v9, 0xf0

    const/16 v8, 0xe0

    const/16 v7, 0xc0

    const/4 v1, 0x0

    iget-object v4, p0, Lhp;->a:[B

    move v0, v1

    move v2, v1

    :goto_b
    array-length v3, v4

    if-ge v2, v3, :cond_30

    add-int/lit8 v0, v0, 0x1

    aget-byte v3, v4, v2

    and-int/lit16 v3, v3, 0xf0

    if-ne v3, v9, :cond_1b

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_b

    :cond_1b
    aget-byte v3, v4, v2

    and-int/lit16 v3, v3, 0xe0

    if-ne v3, v8, :cond_24

    add-int/lit8 v2, v2, 0x3

    goto :goto_b

    :cond_24
    aget-byte v3, v4, v2

    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v7, :cond_2d

    add-int/lit8 v2, v2, 0x2

    goto :goto_b

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_30
    new-array v5, v0, [C

    move v0, v1

    :goto_33
    array-length v2, v4

    if-ge v0, v2, :cond_d3

    aget-byte v2, v4, v0

    and-int/lit16 v2, v2, 0xf0

    if-ne v2, v9, :cond_77

    aget-byte v2, v4, v0

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    const/high16 v3, 0x10000

    sub-int/2addr v2, v3

    const v3, 0xd800

    shr-int/lit8 v6, v2, 0xa

    or-int/2addr v3, v6

    int-to-char v6, v3

    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    int-to-char v2, v2

    add-int/lit8 v3, v1, 0x1

    aput-char v6, v5, v1

    add-int/lit8 v0, v0, 0x4

    :goto_72
    add-int/lit8 v1, v3, 0x1

    aput-char v2, v5, v3

    goto :goto_33

    :cond_77
    aget-byte v2, v4, v0

    and-int/lit16 v2, v2, 0xe0

    if-ne v2, v8, :cond_98

    aget-byte v2, v4, v0

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x3

    move v3, v1

    goto :goto_72

    :cond_98
    aget-byte v2, v4, v0

    and-int/lit16 v2, v2, 0xd0

    const/16 v3, 0xd0

    if-ne v2, v3, :cond_b2

    aget-byte v2, v4, v0

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x2

    move v3, v1

    goto :goto_72

    :cond_b2
    aget-byte v2, v4, v0

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v7, :cond_ca

    aget-byte v2, v4, v0

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x2

    move v3, v1

    goto :goto_72

    :cond_ca
    aget-byte v2, v4, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_72

    :cond_d3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
