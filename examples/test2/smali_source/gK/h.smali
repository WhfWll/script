.class public LgK/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "LgK/h;",
        ">;"
    }
.end annotation


# static fields
.field static final a:[C

.field public static final b:LgK/h;


# instance fields
.field final c:[B

.field transient d:I

.field transient e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, LgK/h;->a:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, LgK/h;->a([B)LgK/h;

    move-result-object v0

    sput-object v0, LgK/h;->b:LgK/h;

    return-void

    nop

    :array_14
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LgK/h;->c:[B

    return-void
.end method

.method public static a(Ljava/lang/String;)LgK/h;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, LgK/h;

    sget-object v1, LgK/z;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, LgK/h;-><init>([B)V

    iput-object p0, v0, LgK/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs a([B)LgK/h;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v1, LgK/h;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, LgK/h;-><init>([B)V

    return-object v1
.end method

.method private b(Ljava/lang/String;)LgK/h;
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, LgK/h;->c:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, LgK/h;->a([B)LgK/h;
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    return-object v0

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public a(I)B
    .registers 3

    iget-object v0, p0, LgK/h;->c:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public a(LgK/h;)I
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0}, LgK/h;->f()I

    move-result v4

    invoke-virtual {p1}, LgK/h;->f()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v3, v2

    :goto_10
    if-ge v3, v6, :cond_28

    invoke-virtual {p0, v3}, LgK/h;->a(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v3}, LgK/h;->a(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_23

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_23
    if-ge v7, v8, :cond_26

    :cond_25
    :goto_25
    return v0

    :cond_26
    move v0, v1

    goto :goto_25

    :cond_28
    if-ne v4, v5, :cond_2c

    move v0, v2

    goto :goto_25

    :cond_2c
    if-lt v4, v5, :cond_25

    move v0, v1

    goto :goto_25
.end method

.method public a()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, LgK/h;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, LgK/h;->c:[B

    sget-object v2, LgK/z;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, LgK/h;->e:Ljava/lang/String;

    goto :goto_4
.end method

.method a(LgK/e;)V
    .registers 5

    iget-object v0, p0, LgK/h;->c:[B

    const/4 v1, 0x0

    iget-object v2, p0, LgK/h;->c:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, LgK/e;->b([BII)LgK/e;

    return-void
.end method

.method public a(I[BII)Z
    .registers 6

    iget-object v0, p0, LgK/h;->c:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_14

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_14

    iget-object v0, p0, LgK/h;->c:[B

    invoke-static {v0, p1, p2, p3, p4}, LgK/z;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LgK/h;->c:[B

    invoke-static {v0}, LgK/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()LgK/h;
    .registers 2

    const-string v0, "MD5"

    invoke-direct {p0, v0}, LgK/h;->b(Ljava/lang/String;)LgK/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    check-cast p1, LgK/h;

    invoke-virtual {p0, p1}, LgK/h;->a(LgK/h;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, LgK/h;->c:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    iget-object v3, p0, LgK/h;->c:[B

    array-length v4, v3

    move v1, v0

    :goto_c
    if-ge v0, v4, :cond_29

    aget-byte v5, v3, v0

    add-int/lit8 v6, v1, 0x1

    sget-object v7, LgK/h;->a:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v1

    add-int/lit8 v1, v6, 0x1

    sget-object v7, LgK/h;->a:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public e()LgK/h;
    .registers 7

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, LgK/h;->c:[B

    array-length v0, v0

    if-ge v1, v0, :cond_3e

    iget-object v0, p0, LgK/h;->c:[B

    aget-byte v3, v0, v1

    if-lt v3, v4, :cond_13

    if-le v3, v5, :cond_17

    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_17
    iget-object v0, p0, LgK/h;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    move v1, v2

    :goto_27
    array-length v2, v0

    if-ge v1, v2, :cond_39

    aget-byte v2, v0, v1

    if-lt v2, v4, :cond_30

    if-le v2, v5, :cond_33

    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_33
    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_30

    :cond_39
    new-instance p0, LgK/h;

    invoke-direct {p0, v0}, LgK/h;-><init>([B)V

    :cond_3e
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_5

    .end local p1    # "o":Ljava/lang/Object;
    :goto_4
    return v1

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, LgK/h;

    if-eqz v0, :cond_25

    move-object v0, p1

    check-cast v0, LgK/h;

    invoke-virtual {v0}, LgK/h;->f()I

    move-result v0

    iget-object v3, p0, LgK/h;->c:[B

    array-length v3, v3

    if-ne v0, v3, :cond_25

    check-cast p1, LgK/h;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, LgK/h;->c:[B

    iget-object v3, p0, LgK/h;->c:[B

    array-length v3, v3

    invoke-virtual {p1, v2, v0, v2, v3}, LgK/h;->a(I[BII)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_23
    move v1, v0

    goto :goto_4

    :cond_25
    move v0, v2

    goto :goto_23
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, LgK/h;->c:[B

    array-length v0, v0

    return v0
.end method

.method public g()[B
    .registers 2

    iget-object v0, p0, LgK/h;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, LgK/h;->d:I

    if-eqz v0, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, LgK/h;->c:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, LgK/h;->d:I

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, LgK/h;->c:[B

    array-length v0, v0

    if-nez v0, :cond_b

    const-string v0, "ByteString[size=0]"

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, LgK/h;->c:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_2a

    const-string v0, "ByteString[size=%s data=%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, LgK/h;->c:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, LgK/h;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_2a
    const-string v0, "ByteString[size=%s md5=%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, LgK/h;->c:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, LgK/h;->c()LgK/h;

    move-result-object v2

    invoke-virtual {v2}, LgK/h;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
