.class public Lhd;
.super Lfv;


# static fields
.field private static a:[[Lfp;


# instance fields
.field private a:Ljava/lang/String;

.field private a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x100

    new-array v0, v0, [[Lfp;

    sput-object v0, Lhd;->a:[[Lfp;

    return-void
.end method

.method constructor <init>([B)V
    .registers 13

    invoke-direct {p0}, Lfv;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v10, v0

    move-object v0, v2

    move-wide v2, v4

    move v4, v10

    :goto_11
    array-length v5, p1

    if-eq v4, v5, :cond_9b

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    const-wide v8, 0xffffffffffff80L

    cmp-long v7, v2, v8

    if-gtz v7, :cond_5f

    and-int/lit8 v7, v5, 0x7f

    int-to-long v8, v7

    add-long/2addr v2, v8

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_5c

    if-eqz v1, :cond_37

    const-wide/16 v8, 0x28

    cmp-long v1, v2, v8

    if-gez v1, :cond_44

    const/16 v1, 0x30

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_36
    const/4 v1, 0x0

    :cond_37
    const/16 v5, 0x2e

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-wide/16 v2, 0x0

    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_44
    const-wide/16 v8, 0x50

    cmp-long v1, v2, v8

    if-gez v1, :cond_53

    const/16 v1, 0x31

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v8, 0x28

    sub-long/2addr v2, v8

    goto :goto_36

    :cond_53
    const/16 v1, 0x32

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v8, 0x50

    sub-long/2addr v2, v8

    goto :goto_36

    :cond_5c
    const/4 v5, 0x7

    shl-long/2addr v2, v5

    goto :goto_41

    :cond_5f
    if-nez v0, :cond_65

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :cond_65
    and-int/lit8 v7, v5, 0x7f

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_95

    if-eqz v1, :cond_a8

    const/16 v1, 0x32

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v2, 0x50

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v0, 0x0

    :goto_86
    const/16 v2, 0x2e

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    goto :goto_41

    :cond_95
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_41

    :cond_9b
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhd;->a:Ljava/lang/String;

    invoke-static {p1}, Lat;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lhd;->a:[B

    return-void

    :cond_a8
    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_86
.end method

.method static a([B)Lfp;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    new-instance v0, Lfp;

    invoke-direct {v0, p0}, Lfp;-><init>([B)V

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p0, v0

    and-int/lit16 v2, v0, 0xff

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    and-int/lit8 v3, v0, 0x7f

    sget-object v4, Lhd;->a:[[Lfp;

    monitor-enter v4

    :try_start_1b
    sget-object v0, Lhd;->a:[[Lfp;

    aget-object v0, v0, v2

    if-nez v0, :cond_97

    sget-object v1, Lhd;->a:[[Lfp;

    const/16 v0, 0x80

    new-array v0, v0, [Lfp;

    aput-object v0, v1, v2

    move-object v1, v0

    :goto_2a
    aget-object v0, v1, v3

    if-nez v0, :cond_3a

    new-instance v0, Lfp;

    invoke-direct {v0, p0}, Lfp;-><init>([B)V

    aput-object v0, v1, v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_37

    goto :goto_9

    :catchall_37
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_3a
    :try_start_3a
    invoke-virtual {v0}, Lfp;->b()[B

    move-result-object v1

    invoke-static {p0, v1}, Lat;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_46

    monitor-exit v4

    goto :goto_9

    :cond_46
    add-int/lit8 v0, v2, 0x1

    and-int/lit16 v1, v0, 0xff

    sget-object v0, Lhd;->a:[[Lfp;

    aget-object v0, v0, v1

    if-nez v0, :cond_95

    sget-object v2, Lhd;->a:[[Lfp;

    const/16 v0, 0x80

    new-array v0, v0, [Lfp;

    aput-object v0, v2, v1

    move-object v1, v0

    :goto_59
    aget-object v0, v1, v3

    if-nez v0, :cond_66

    new-instance v0, Lfp;

    invoke-direct {v0, p0}, Lfp;-><init>([B)V

    aput-object v0, v1, v3

    monitor-exit v4

    goto :goto_9

    :cond_66
    invoke-virtual {v0}, Lfp;->b()[B

    move-result-object v2

    invoke-static {p0, v2}, Lat;->a([B[B)Z

    move-result v2

    if-eqz v2, :cond_72

    monitor-exit v4

    goto :goto_9

    :cond_72
    add-int/lit8 v0, v3, 0x1

    and-int/lit8 v2, v0, 0x7f

    aget-object v0, v1, v2

    if-nez v0, :cond_83

    new-instance v0, Lfp;

    invoke-direct {v0, p0}, Lfp;-><init>([B)V

    aput-object v0, v1, v2

    monitor-exit v4
    :try_end_82
    .catchall {:try_start_3a .. :try_end_82} :catchall_37

    goto :goto_9

    :cond_83
    monitor-exit v4

    invoke-virtual {v0}, Lfp;->b()[B

    move-result-object v1

    invoke-static {p0, v1}, Lat;->a([B[B)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v0, Lfp;

    invoke-direct {v0, p0}, Lfp;-><init>([B)V

    goto/16 :goto_9

    :cond_95
    move-object v1, v0

    goto :goto_59

    :cond_97
    move-object v1, v0

    goto :goto_2a
.end method

.method private a(Ljava/io/ByteArrayOutputStream;)V
    .registers 9

    const/16 v6, 0x12

    new-instance v1, Lic;

    iget-object v0, p0, Lhd;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lic;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x28

    invoke-virtual {v1}, Lic;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_40

    int-to-long v4, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Lhd;->a(Ljava/io/ByteArrayOutputStream;J)V

    :goto_26
    iget v0, v1, Lic;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_52

    const/4 v0, 0x1

    :goto_2c
    if-eqz v0, :cond_5d

    invoke-virtual {v1}, Lic;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v6, :cond_54

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lhd;->a(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_26

    :cond_40
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1, v0}, Lhd;->a(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_26

    :cond_52
    const/4 v0, 0x0

    goto :goto_2c

    :cond_54
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lhd;->a(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_26

    :cond_5d
    return-void
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;J)V
    .registers 8

    const/16 v0, 0x8

    const/16 v1, 0x9

    new-array v1, v1, [B

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :goto_c
    const-wide/16 v2, 0x80

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1f

    const/4 v2, 0x7

    shr-long/2addr p1, v2

    add-int/lit8 v0, v0, -0x1

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_c

    :cond_1f
    rsub-int/lit8 v2, v0, 0x9

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    div-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_f

    invoke-virtual {p0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_e
    return-void

    :cond_f
    new-array v2, v1, [B

    add-int/lit8 v0, v1, -0x1

    :goto_13
    if-ltz v0, :cond_28

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_28
    add-int/lit8 v0, v1, -0x1

    aget-byte v1, v2, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    array-length v0, v2

    invoke-virtual {p0, v2, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e
.end method


# virtual methods
.method final a()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lhd;->b()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lid;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

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

    invoke-virtual {p0}, Lhd;->b()[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lfs;->b(I)V

    array-length v1, v0

    invoke-virtual {p1, v1}, Lfs;->a(I)V

    invoke-virtual {p1, v0}, Lfs;->a([B)V

    return-void
.end method

.method final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final a(Lfv;)Z
    .registers 4

    instance-of v0, p1, Lhd;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lhd;->a:Ljava/lang/String;

    check-cast p1, Lhd;

    iget-object v1, p1, Lhd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method protected final declared-synchronized b()[B
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lhd;->a:[B

    if-nez v0, :cond_13

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0}, Lhd;->a(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lhd;->a:[B

    :cond_13
    iget-object v0, p0, Lhd;->a:[B
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lhd;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lhd;->a:Ljava/lang/String;

    return-object v0
.end method
