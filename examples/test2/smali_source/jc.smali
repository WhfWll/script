.class public final Ljc;
.super Ljava/lang/Object;

# interfaces
.implements Liz;


# instance fields
.field private a:[B

.field private b:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    iput-object v0, p0, Ljc;->a:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Ljc;->b:[B

    invoke-direct {p0}, Ljc;->a()V

    return-void

    :array_16
    .array-data 1
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private a()V
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Ljc;->b:[B

    array-length v2, v2

    if-ge v0, v2, :cond_f

    iget-object v2, p0, Ljc;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_f
    :goto_f
    iget-object v0, p0, Ljc;->a:[B

    array-length v0, v0

    if-ge v1, v0, :cond_20

    iget-object v0, p0, Ljc;->b:[B

    iget-object v2, p0, Ljc;->a:[B

    aget-byte v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_20
    iget-object v0, p0, Ljc;->b:[B

    const/16 v1, 0x41

    iget-object v2, p0, Ljc;->b:[B

    const/16 v3, 0x61

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Ljc;->b:[B

    const/16 v1, 0x42

    iget-object v2, p0, Ljc;->b:[B

    const/16 v3, 0x62

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Ljc;->b:[B

    const/16 v1, 0x43

    iget-object v2, p0, Ljc;->b:[B

    const/16 v3, 0x63

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Ljc;->b:[B

    const/16 v1, 0x44

    iget-object v2, p0, Ljc;->b:[B

    const/16 v3, 0x64

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Ljc;->b:[B

    const/16 v1, 0x45

    iget-object v2, p0, Ljc;->b:[B

    const/16 v3, 0x65

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Ljc;->b:[B

    const/16 v1, 0x46

    iget-object v2, p0, Ljc;->b:[B

    const/16 v3, 0x66

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

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
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v3, v1

    :goto_6
    if-lez v3, :cond_18

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljc;->a(C)Z

    move-result v1

    if-eqz v1, :cond_18

    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_6

    :cond_18
    move v2, v0

    :goto_19
    if-ge v0, v3, :cond_66

    move v1, v0

    :goto_1c
    if-ge v1, v3, :cond_2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljc;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2c

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    :cond_2c
    iget-object v4, p0, Ljc;->b:[B

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v4, v4, v1

    :goto_36
    if-ge v0, v3, :cond_45

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljc;->a(C)Z

    move-result v1

    if-eqz v1, :cond_45

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_45
    iget-object v5, p0, Ljc;->b:[B

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v0, v5, v0

    or-int v5, v4, v0

    if-gez v5, :cond_5b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in Hex string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_19

    :cond_66
    return v2
.end method

.method public final a([BILjava/io/OutputStream;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1c

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Ljc;->a:[B

    ushr-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Ljc;->a:[B

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, v2, v1

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    shl-int/lit8 v0, p2, 0x1

    return v0
.end method
