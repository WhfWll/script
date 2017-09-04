.class public final Lii;
.super Lig;


# instance fields
.field private a:[I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lig;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lii;->a:[I

    invoke-virtual {p0}, Lii;->a()V

    return-void
.end method

.method private static a(II)I
    .registers 4

    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static a(III)I
    .registers 5

    and-int v0, p0, p1

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private static a(I[BI)V
    .registers 5

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p0, 0x18

    aput-byte v1, p1, v0

    return-void
.end method

.method private static b(III)I
    .registers 5

    and-int v0, p0, p2

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a([B)I
    .registers 6

    const/4 v3, 0x0

    iget-wide v0, p0, Lig;->a:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lig;->a(B)V

    :goto_a
    iget v2, p0, Lig;->a:I

    if-eqz v2, :cond_12

    invoke-virtual {p0, v3}, Lig;->a(B)V

    goto :goto_a

    :cond_12
    invoke-virtual {p0, v0, v1}, Lig;->a(J)V

    invoke-virtual {p0}, Lig;->b()V

    iget v0, p0, Lii;->b:I

    invoke-static {v0, p1, v3}, Lii;->a(I[BI)V

    iget v0, p0, Lii;->c:I

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lii;->a(I[BI)V

    iget v0, p0, Lii;->d:I

    const/16 v1, 0x8

    invoke-static {v0, p1, v1}, Lii;->a(I[BI)V

    iget v0, p0, Lii;->e:I

    const/16 v1, 0xc

    invoke-static {v0, p1, v1}, Lii;->a(I[BI)V

    invoke-virtual {p0}, Lii;->a()V

    const/16 v0, 0x10

    return v0
.end method

.method public final a()V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0}, Lig;->a()V

    const v0, 0x67452301

    iput v0, p0, Lii;->b:I

    const v0, -0x10325477

    iput v0, p0, Lii;->c:I

    const v0, -0x67452302

    iput v0, p0, Lii;->d:I

    const v0, 0x10325476

    iput v0, p0, Lii;->e:I

    iput v1, p0, Lii;->f:I

    move v0, v1

    :goto_1b
    iget-object v2, p0, Lii;->a:[I

    array-length v2, v2

    if-eq v0, v2, :cond_27

    iget-object v2, p0, Lii;->a:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_27
    return-void
.end method

.method protected final a(J)V
    .registers 8

    const/16 v2, 0xe

    iget v0, p0, Lii;->f:I

    if-le v0, v2, :cond_9

    invoke-virtual {p0}, Lii;->b()V

    :cond_9
    iget-object v0, p0, Lii;->a:[I

    long-to-int v1, p1

    aput v1, v0, v2

    iget-object v0, p0, Lii;->a:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    return-void
.end method

.method protected final a([BI)V
    .registers 7

    iget-object v0, p0, Lii;->a:[I

    iget v1, p0, Lii;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lii;->f:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v0, v1

    iget v0, p0, Lii;->f:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_32

    invoke-virtual {p0}, Lii;->b()V

    :cond_32
    return-void
.end method

.method protected final b()V
    .registers 12

    const/16 v10, 0x9

    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    iget v0, p0, Lii;->b:I

    iget v1, p0, Lii;->c:I

    iget v2, p0, Lii;->d:I

    iget v3, p0, Lii;->e:I

    invoke-static {v1, v2, v3}, Lii;->a(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, -0x28955b88

    add-int/2addr v0, v4

    invoke-static {v0, v9}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0, v1, v2}, Lii;->a(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, -0x173848aa

    add-int/2addr v3, v4

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3, v0, v1}, Lii;->a(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x242070db

    add-int/2addr v2, v4

    const/16 v4, 0x11

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2, v3, v0}, Lii;->a(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, -0x3e423112

    add-int/2addr v1, v4

    const/16 v4, 0x16

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1, v2, v3}, Lii;->a(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v6

    add-int/2addr v0, v4

    const v4, -0xa83f051

    add-int/2addr v0, v4

    invoke-static {v0, v9}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0, v1, v2}, Lii;->a(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v7

    add-int/2addr v3, v4

    const v4, 0x4787c62a

    add-int/2addr v3, v4

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3, v0, v1}, Lii;->a(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v8

    add-int/2addr v2, v4

    const v4, -0x57cfb9ed

    add-int/2addr v2, v4

    const/16 v4, 0x11

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2, v3, v0}, Lii;->a(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v9

    add-int/2addr v1, v4

    const v4, -0x2b96aff

    add-int/2addr v1, v4

    const/16 v4, 0x16

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1, v2, v3}, Lii;->a(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x698098d8

    add-int/2addr v0, v4

    invoke-static {v0, v9}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0, v1, v2}, Lii;->a(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v10

    add-int/2addr v3, v4

    const v4, -0x74bb0851

    add-int/2addr v3, v4

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3, v0, v1}, Lii;->a(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, -0xa44f

    add-int/2addr v2, v4

    const/16 v4, 0x11

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2, v3, v0}, Lii;->a(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, -0x76a32842

    add-int/2addr v1, v4

    const/16 v4, 0x16

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1, v2, v3}, Lii;->a(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x6b901122

    add-int/2addr v0, v4

    invoke-static {v0, v9}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0, v1, v2}, Lii;->a(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, -0x2678e6d

    add-int/2addr v3, v4

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3, v0, v1}, Lii;->a(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, -0x5986bc72

    add-int/2addr v2, v4

    const/16 v4, 0x11

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2, v3, v0}, Lii;->a(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x49b40821

    add-int/2addr v1, v4

    const/16 v4, 0x16

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1, v2, v3}, Lii;->b(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, -0x9e1da9e

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0, v1, v2}, Lii;->b(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v8

    add-int/2addr v3, v4

    const v4, -0x3fbf4cc0

    add-int/2addr v3, v4

    invoke-static {v3, v10}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3, v0, v1}, Lii;->b(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x265e5a51

    add-int/2addr v2, v4

    const/16 v4, 0xe

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2, v3, v0}, Lii;->b(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, -0x16493856

    add-int/2addr v1, v4

    const/16 v4, 0x14

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1, v2, v3}, Lii;->b(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v7

    add-int/2addr v0, v4

    const v4, -0x29d0efa3

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0, v1, v2}, Lii;->b(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, 0x2441453

    add-int/2addr v3, v4

    invoke-static {v3, v10}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3, v0, v1}, Lii;->b(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, -0x275e197f

    add-int/2addr v2, v4

    const/16 v4, 0xe

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2, v3, v0}, Lii;->b(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v6

    add-int/2addr v1, v4

    const v4, -0x182c0438

    add-int/2addr v1, v4

    const/16 v4, 0x14

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1, v2, v3}, Lii;->b(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v10

    add-int/2addr v0, v4

    const v4, 0x21e1cde6

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0, v1, v2}, Lii;->b(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, -0x3cc8f82a

    add-int/2addr v3, v4

    invoke-static {v3, v10}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3, v0, v1}, Lii;->b(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, -0xb2af279

    add-int/2addr v2, v4

    const/16 v4, 0xe

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2, v3, v0}, Lii;->b(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x455a14ed

    add-int/2addr v1, v4

    const/16 v4, 0x14

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1, v2, v3}, Lii;->b(III)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, -0x561c16fb

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0, v1, v2}, Lii;->b(III)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, -0x3105c08

    add-int/2addr v3, v4

    invoke-static {v3, v10}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3, v0, v1}, Lii;->b(III)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v9

    add-int/2addr v2, v4

    const v4, 0x676f02d9

    add-int/2addr v2, v4

    const/16 v4, 0xe

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2, v3, v0}, Lii;->b(III)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, -0x72d5b376

    add-int/2addr v1, v4

    const/16 v4, 0x14

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    xor-int v4, v1, v2

    xor-int/2addr v4, v3

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v7

    add-int/2addr v0, v4

    const v4, -0x5c6be

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    xor-int v4, v0, v1

    xor-int/2addr v4, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, -0x788e097f

    add-int/2addr v3, v4

    const/16 v4, 0xb

    invoke-static {v3, v4}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    xor-int v4, v3, v0

    xor-int/2addr v4, v1

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x6d9d6122

    add-int/2addr v2, v4

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    xor-int v4, v2, v3

    xor-int/2addr v4, v0

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, -0x21ac7f4

    add-int/2addr v1, v4

    const/16 v4, 0x17

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    xor-int v4, v1, v2

    xor-int/2addr v4, v3

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, -0x5b4115bc

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    xor-int v4, v0, v1

    xor-int/2addr v4, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    const v4, 0x4bdecfa9

    add-int/2addr v3, v4

    const/16 v4, 0xb

    invoke-static {v3, v4}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    xor-int v4, v3, v0

    xor-int/2addr v4, v1

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v9

    add-int/2addr v2, v4

    const v4, -0x944b4a0

    add-int/2addr v2, v4

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    xor-int v4, v2, v3

    xor-int/2addr v4, v0

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, -0x41404390

    add-int/2addr v1, v4

    const/16 v4, 0x17

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    xor-int v4, v1, v2

    xor-int/2addr v4, v3

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x289b7ec6

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    xor-int v4, v0, v1

    xor-int/2addr v4, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, -0x155ed806

    add-int/2addr v3, v4

    const/16 v4, 0xb

    invoke-static {v3, v4}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    xor-int v4, v3, v0

    xor-int/2addr v4, v1

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, -0x2b10cf7b

    add-int/2addr v2, v4

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    xor-int v4, v2, v3

    xor-int/2addr v4, v0

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v8

    add-int/2addr v1, v4

    const v4, 0x4881d05

    add-int/2addr v1, v4

    const/16 v4, 0x17

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    xor-int v4, v1, v2

    xor-int/2addr v4, v3

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v10

    add-int/2addr v0, v4

    const v4, -0x262b2fc7

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    xor-int v4, v0, v1

    xor-int/2addr v4, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, -0x1924661b

    add-int/2addr v3, v4

    const/16 v4, 0xb

    invoke-static {v3, v4}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    xor-int v4, v3, v0

    xor-int/2addr v4, v1

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x1fa27cf8

    add-int/2addr v2, v4

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    xor-int v4, v2, v3

    xor-int/2addr v4, v0

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, -0x3b53a99b

    add-int/2addr v1, v4

    const/16 v4, 0x17

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    xor-int/lit8 v4, v3, -0x1

    or-int/2addr v4, v1

    xor-int/2addr v4, v2

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, -0xbd6ddbc

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    xor-int/lit8 v4, v2, -0x1

    or-int/2addr v4, v0

    xor-int/2addr v4, v1

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v9

    add-int/2addr v3, v4

    const v4, 0x432aff97

    add-int/2addr v3, v4

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    xor-int/lit8 v4, v1, -0x1

    or-int/2addr v4, v3

    xor-int/2addr v4, v0

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, -0x546bdc59

    add-int/2addr v2, v4

    const/16 v4, 0xf

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    xor-int/lit8 v4, v0, -0x1

    or-int/2addr v4, v2

    xor-int/2addr v4, v3

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v7

    add-int/2addr v1, v4

    const v4, -0x36c5fc7

    add-int/2addr v1, v4

    const/16 v4, 0x15

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    xor-int/lit8 v4, v3, -0x1

    or-int/2addr v4, v1

    xor-int/2addr v4, v2

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xc

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x655b59c3

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    xor-int/lit8 v4, v2, -0x1

    or-int/2addr v4, v0

    xor-int/2addr v4, v1

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, -0x70f3336e

    add-int/2addr v3, v4

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    xor-int/lit8 v4, v1, -0x1

    or-int/2addr v4, v3

    xor-int/2addr v4, v0

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, -0x100b83

    add-int/2addr v2, v4

    const/16 v4, 0xf

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    xor-int/lit8 v4, v0, -0x1

    or-int/2addr v4, v2

    xor-int/2addr v4, v3

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, -0x7a7ba22f

    add-int/2addr v1, v4

    const/16 v4, 0x15

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    xor-int/lit8 v4, v3, -0x1

    or-int/2addr v4, v1

    xor-int/2addr v4, v2

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    add-int/2addr v0, v4

    const v4, 0x6fa87e4f

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    xor-int/lit8 v4, v2, -0x1

    or-int/2addr v4, v0

    xor-int/2addr v4, v1

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, -0x1d31920

    add-int/2addr v3, v4

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    xor-int/lit8 v4, v1, -0x1

    or-int/2addr v4, v3

    xor-int/2addr v4, v0

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v8

    add-int/2addr v2, v4

    const v4, -0x5cfebcec

    add-int/2addr v2, v4

    const/16 v4, 0xf

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    xor-int/lit8 v4, v0, -0x1

    or-int/2addr v4, v2

    xor-int/2addr v4, v3

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xd

    aget v4, v4, v5

    add-int/2addr v1, v4

    const v4, 0x4e0811a1

    add-int/2addr v1, v4

    const/16 v4, 0x15

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    xor-int/lit8 v4, v3, -0x1

    or-int/2addr v4, v1

    xor-int/2addr v4, v2

    add-int/2addr v0, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v6

    add-int/2addr v0, v4

    const v4, -0x8ac817e

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lii;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    xor-int/lit8 v4, v2, -0x1

    or-int/2addr v4, v0

    xor-int/2addr v4, v1

    add-int/2addr v3, v4

    iget-object v4, p0, Lii;->a:[I

    const/16 v5, 0xb

    aget v4, v4, v5

    add-int/2addr v3, v4

    const v4, -0x42c50dcb

    add-int/2addr v3, v4

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lii;->a(II)I

    move-result v3

    add-int/2addr v3, v0

    xor-int/lit8 v4, v1, -0x1

    or-int/2addr v4, v3

    xor-int/2addr v4, v0

    add-int/2addr v2, v4

    iget-object v4, p0, Lii;->a:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    add-int/2addr v2, v4

    const v4, 0x2ad7d2bb

    add-int/2addr v2, v4

    const/16 v4, 0xf

    invoke-static {v2, v4}, Lii;->a(II)I

    move-result v2

    add-int/2addr v2, v3

    xor-int/lit8 v4, v0, -0x1

    or-int/2addr v4, v2

    xor-int/2addr v4, v3

    add-int/2addr v1, v4

    iget-object v4, p0, Lii;->a:[I

    aget v4, v4, v10

    add-int/2addr v1, v4

    const v4, -0x14792c6f

    add-int/2addr v1, v4

    const/16 v4, 0x15

    invoke-static {v1, v4}, Lii;->a(II)I

    move-result v1

    add-int/2addr v1, v2

    iget v4, p0, Lii;->b:I

    add-int/2addr v0, v4

    iput v0, p0, Lii;->b:I

    iget v0, p0, Lii;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lii;->c:I

    iget v0, p0, Lii;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lii;->d:I

    iget v0, p0, Lii;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lii;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lii;->f:I

    const/4 v0, 0x0

    :goto_576
    iget-object v1, p0, Lii;->a:[I

    array-length v1, v1

    if-eq v0, v1, :cond_583

    iget-object v1, p0, Lii;->a:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_576

    :cond_583
    return-void
.end method
