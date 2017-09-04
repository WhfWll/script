.class public final Lgr;
.super Lfv;


# static fields
.field private static final a:[C


# instance fields
.field private a:I

.field private a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lgr;->a:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Lfv;-><init>()V

    iput-object p1, p0, Lgr;->a:[B

    iput p2, p0, Lgr;->a:I

    return-void
.end method

.method static a(ILjava/io/InputStream;)Lgr;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    add-int/lit8 v1, p0, -0x1

    new-array v1, v1, [B

    array-length v2, v1

    if-eqz v2, :cond_24

    invoke-static {p1, v1}, Ljd;->a(Ljava/io/InputStream;[B)I

    move-result v2

    array-length v3, v1

    if-eq v2, v3, :cond_24

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of BIT STRING"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v2, Lgr;

    invoke-direct {v2, v1, v0}, Lgr;-><init>([BI)V

    return-object v2
.end method

.method private a()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lfs;

    invoke-direct {v2, v0}, Lfs;-><init>(Ljava/io/OutputStream;)V

    :try_start_11
    invoke-virtual {v2, p0}, Lfs;->a(Lfg;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_37

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v0, 0x0

    :goto_19
    array-length v3, v2

    if-eq v0, v3, :cond_40

    sget-object v3, Lgr;->a:[C

    aget-byte v4, v2, v0

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lgr;->a:[C

    aget-byte v4, v2, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :catch_37
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error encoding BitString"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()I
    .registers 3

    iget-object v0, p0, Lgr;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lid;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lgr;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method final a(Lfs;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lgr;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iget v1, p0, Lgr;->a:I

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v1, p0, Lgr;->a:[B

    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lfs;->a(I[B)V

    return-void
.end method

.method final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final a(Lfv;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lgr;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lgr;

    iget v1, p0, Lgr;->a:I

    iget v2, p1, Lgr;->a:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lgr;->a:[B

    iget-object v2, p1, Lgr;->a:[B

    invoke-static {v1, v2}, Lat;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lgr;->a:I

    iget-object v1, p0, Lgr;->a:[B

    invoke-static {v1}, Lat;->a([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lgr;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
