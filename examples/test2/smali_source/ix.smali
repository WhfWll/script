.class public final Lix;
.super Ljava/lang/Object;

# interfaces
.implements Liz;


# instance fields
.field private a:B

.field private a:[B

.field private b:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lix;->a:[B

    const/16 v0, 0x3d

    iput-byte v0, p0, Lix;->a:B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lix;->b:[B

    invoke-direct {p0}, Lix;->a()V

    return-void

    :array_1a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private static a(Ljava/lang/String;II)I
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_f

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lix;->a(C)Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_f
    return p1
.end method

.method private a()V
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lix;->b:[B

    array-length v2, v2

    if-ge v0, v2, :cond_f

    iget-object v2, p0, Lix;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    :goto_f
    iget-object v0, p0, Lix;->a:[B

    array-length v0, v0

    if-ge v1, v0, :cond_20

    iget-object v0, p0, Lix;->b:[B

    iget-object v2, p0, Lix;->a:[B

    aget-byte v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_20
    return-void
.end method

.method private static a(C)Z
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_10

    const/16 v0, 0xd

    if-eq p0, v0, :cond_10

    const/16 v0, 0x9

    if-eq p0, v0, :cond_10

    const/16 v0, 0x20

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    :goto_6
    if-lez v2, :cond_18

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lix;->a(C)Z

    move-result v0

    if-eqz v0, :cond_18

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_6

    :cond_18
    add-int/lit8 v3, v2, -0x4

    invoke-static {p1, v1, v3}, Lix;->a(Ljava/lang/String;II)I

    move-result v0

    :goto_1e
    if-ge v0, v3, :cond_7f

    iget-object v4, p0, Lix;->b:[B

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v0, v4, v0

    invoke-static {p1, v5, v3}, Lix;->a(Ljava/lang/String;II)I

    move-result v4

    iget-object v5, p0, Lix;->b:[B

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v5, v4

    invoke-static {p1, v6, v3}, Lix;->a(Ljava/lang/String;II)I

    move-result v5

    iget-object v6, p0, Lix;->b:[B

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v5, v6, v5

    invoke-static {p1, v7, v3}, Lix;->a(Ljava/lang/String;II)I

    move-result v6

    iget-object v7, p0, Lix;->b:[B

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-byte v6, v7, v6

    or-int v7, v0, v4

    or-int/2addr v7, v5

    or-int/2addr v7, v6

    if-gez v7, :cond_62

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v7, v4, 0x4

    or-int/2addr v0, v7

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v4, 0x4

    shr-int/lit8 v4, v5, 0x2

    or-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v5, 0x6

    or-int/2addr v0, v6

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x3

    invoke-static {p1, v8, v3}, Lix;->a(Ljava/lang/String;II)I

    move-result v0

    goto :goto_1e

    :cond_7f
    add-int/lit8 v0, v2, -0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v3, v2, -0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-byte v5, p0, Lix;->a:B

    if-ne v4, v5, :cond_ba

    iget-object v2, p0, Lix;->b:[B

    aget-byte v0, v2, v0

    iget-object v2, p0, Lix;->b:[B

    aget-byte v2, v2, v3

    or-int v3, v0, v2

    if-gez v3, :cond_af

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_af
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x1

    :goto_b8
    add-int/2addr v0, v1

    return v0

    :cond_ba
    iget-byte v5, p0, Lix;->a:B

    if-ne v2, v5, :cond_e9

    iget-object v2, p0, Lix;->b:[B

    aget-byte v0, v2, v0

    iget-object v2, p0, Lix;->b:[B

    aget-byte v2, v2, v3

    iget-object v3, p0, Lix;->b:[B

    aget-byte v3, v3, v4

    or-int v4, v0, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_d7

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d7
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v4, v2, 0x4

    or-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v2, 0x4

    shr-int/lit8 v2, v3, 0x2

    or-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x2

    goto :goto_b8

    :cond_e9
    iget-object v5, p0, Lix;->b:[B

    aget-byte v0, v5, v0

    iget-object v5, p0, Lix;->b:[B

    aget-byte v3, v5, v3

    iget-object v5, p0, Lix;->b:[B

    aget-byte v4, v5, v4

    iget-object v5, p0, Lix;->b:[B

    aget-byte v2, v5, v2

    or-int v5, v0, v3

    or-int/2addr v5, v4

    or-int/2addr v5, v2

    if-gez v5, :cond_107

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_107
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v5, v3, 0x4

    or-int/2addr v0, v5

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v3, 0x4

    shr-int/lit8 v3, v4, 0x2

    or-int/2addr v0, v3

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v4, 0x6

    or-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x3

    goto :goto_b8
.end method

.method public final a([BILjava/io/OutputStream;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    rem-int/lit8 v2, p2, 0x3

    sub-int v3, p2, v2

    move v1, v0

    :goto_6
    if-ge v1, v3, :cond_4b

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    iget-object v7, p0, Lix;->a:[B

    ushr-int/lit8 v8, v4, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    invoke-virtual {p3, v7}, Ljava/io/OutputStream;->write(I)V

    iget-object v7, p0, Lix;->a:[B

    shl-int/lit8 v4, v4, 0x4

    ushr-int/lit8 v8, v5, 0x4

    or-int/2addr v4, v8

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v7, v4

    invoke-virtual {p3, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Lix;->a:[B

    shl-int/lit8 v5, v5, 0x2

    ushr-int/lit8 v7, v6, 0x6

    or-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    invoke-virtual {p3, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Lix;->a:[B

    and-int/lit8 v5, v6, 0x3f

    aget-byte v4, v4, v5

    invoke-virtual {p3, v4}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_6

    :cond_4b
    packed-switch v2, :pswitch_data_b2

    :goto_4e
    :pswitch_4e
    div-int/lit8 v1, v3, 0x3

    shl-int/lit8 v1, v1, 0x2

    if-nez v2, :cond_af

    :goto_54
    add-int/2addr v0, v1

    return v0

    :pswitch_56
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    iget-object v5, p0, Lix;->a:[B

    aget-byte v4, v5, v4

    invoke-virtual {p3, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Lix;->a:[B

    aget-byte v1, v4, v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    iget-byte v1, p0, Lix;->a:B

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    iget-byte v1, p0, Lix;->a:B

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4e

    :pswitch_7b
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v6, v4, 0x4

    or-int/2addr v1, v6

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    iget-object v6, p0, Lix;->a:[B

    aget-byte v5, v6, v5

    invoke-virtual {p3, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v5, p0, Lix;->a:[B

    aget-byte v1, v5, v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v1, p0, Lix;->a:[B

    aget-byte v1, v1, v4

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    iget-byte v1, p0, Lix;->a:B

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4e

    :cond_af
    const/4 v0, 0x4

    goto :goto_54

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_56
        :pswitch_7b
    .end packed-switch
.end method
