.class public final LgK/e;
.super Ljava/lang/Object;

# interfaces
.implements LgK/f;
.implements LgK/g;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[B


# instance fields
.field a:LgK/t;

.field b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, LgK/e;->c:[B

    return-void

    :array_a
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

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 10

    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, LgK/z;->a(JJJ)V

    iget-object v1, p0, LgK/e;->a:LgK/t;

    if-nez v1, :cond_d

    const/4 v0, -0x1

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget v0, v1, LgK/t;->c:I

    iget v2, v1, LgK/t;->b:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, LgK/t;->a:[B

    iget v3, v1, LgK/t;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, LgK/t;->b:I

    add-int/2addr v2, v0

    iput v2, v1, LgK/t;->b:I

    iget-wide v2, p0, LgK/e;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, LgK/e;->b:J

    iget v2, v1, LgK/t;->b:I

    iget v3, v1, LgK/t;->c:I

    if-ne v2, v3, :cond_c

    invoke-virtual {v1}, LgK/t;->a()LgK/t;

    move-result-object v2

    iput-object v2, p0, LgK/e;->a:LgK/t;

    invoke-static {v1}, LgK/u;->a(LgK/t;)V

    goto :goto_c
.end method

.method public a(B)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, LgK/e;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJ)J
    .registers 16

    const-wide/16 v6, -0x1

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, LgK/e;->a:LgK/t;

    if-nez v0, :cond_16

    move-wide v0, v6

    :goto_15
    return-wide v0

    :cond_16
    move-object v4, v0

    move-wide v0, v2

    :cond_18
    iget v5, v4, LgK/t;->c:I

    iget v8, v4, LgK/t;->b:I

    sub-int v8, v5, v8

    int-to-long v10, v8

    cmp-long v5, p2, v10

    if-ltz v5, :cond_2f

    int-to-long v10, v8

    sub-long/2addr p2, v10

    :goto_25
    int-to-long v8, v8

    add-long/2addr v0, v8

    iget-object v4, v4, LgK/t;->f:LgK/t;

    iget-object v5, p0, LgK/e;->a:LgK/t;

    if-ne v4, v5, :cond_18

    move-wide v0, v6

    goto :goto_15

    :cond_2f
    iget-object v9, v4, LgK/t;->a:[B

    iget v5, v4, LgK/t;->b:I

    int-to-long v10, v5

    add-long/2addr v10, p2

    long-to-int v5, v10

    iget v10, v4, LgK/t;->c:I

    :goto_38
    if-ge v5, v10, :cond_48

    aget-byte v11, v9, v5

    if-ne v11, p1, :cond_45

    int-to-long v2, v5

    add-long/2addr v0, v2

    iget v2, v4, LgK/t;->b:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_15

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_48
    move-wide p2, v2

    goto :goto_25
.end method

.method public a(LgK/e;J)J
    .registers 8

    const-wide/16 v2, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    cmp-long v0, p2, v2

    if-gez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-wide v0, p0, LgK/e;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_32

    const-wide/16 p2, -0x1

    :goto_31
    return-wide p2

    :cond_32
    iget-wide v0, p0, LgK/e;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3a

    iget-wide p2, p0, LgK/e;->b:J

    :cond_3a
    invoke-virtual {p1, p0, p2, p3}, LgK/e;->a_(LgK/e;J)V

    goto :goto_31
.end method

.method public a(LgK/w;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-wide/16 v0, 0x0

    :goto_c
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, LgK/w;->a(LgK/e;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1a

    add-long/2addr v0, v2

    goto :goto_c

    :cond_1a
    return-wide v0
.end method

.method public a(I)LgK/e;
    .registers 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    invoke-virtual {p0, p1}, LgK/e;->b(I)LgK/e;

    :goto_7
    return-object p0

    :cond_8
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1b

    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    goto :goto_7

    :cond_1b
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_5e

    const v0, 0xd800

    if-lt p1, v0, :cond_46

    const v0, 0xdfff

    if-gt p1, v0, :cond_46

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    goto :goto_7

    :cond_5e
    const v0, 0x10ffff

    if-gt p1, v0, :cond_84

    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    goto :goto_7

    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(LgK/e;JJ)LgK/e;
    .registers 14

    const-wide/16 v6, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-wide v0, p0, LgK/e;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, LgK/z;->a(JJJ)V

    cmp-long v0, p4, v6

    if-nez v0, :cond_18

    :cond_17
    return-object p0

    :cond_18
    iget-wide v0, p1, LgK/e;->b:J

    add-long/2addr v0, p4

    iput-wide v0, p1, LgK/e;->b:J

    iget-object v0, p0, LgK/e;->a:LgK/t;

    :goto_1f
    iget v1, v0, LgK/t;->c:I

    iget v2, v0, LgK/t;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_33

    iget v1, v0, LgK/t;->c:I

    iget v2, v0, LgK/t;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    iget-object v0, v0, LgK/t;->f:LgK/t;

    goto :goto_1f

    :cond_33
    :goto_33
    cmp-long v1, p4, v6

    if-lez v1, :cond_17

    new-instance v1, LgK/t;

    invoke-direct {v1, v0}, LgK/t;-><init>(LgK/t;)V

    iget v2, v1, LgK/t;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, LgK/t;->b:I

    iget v2, v1, LgK/t;->b:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, LgK/t;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, LgK/t;->c:I

    iget-object v2, p1, LgK/e;->a:LgK/t;

    if-nez v2, :cond_65

    iput-object v1, v1, LgK/t;->g:LgK/t;

    iput-object v1, v1, LgK/t;->f:LgK/t;

    iput-object v1, p1, LgK/e;->a:LgK/t;

    :goto_59
    iget v2, v1, LgK/t;->c:I

    iget v1, v1, LgK/t;->b:I

    sub-int v1, v2, v1

    int-to-long v2, v1

    sub-long/2addr p4, v2

    iget-object v0, v0, LgK/t;->f:LgK/t;

    move-wide p2, v6

    goto :goto_33

    :cond_65
    iget-object v2, p1, LgK/e;->a:LgK/t;

    iget-object v2, v2, LgK/t;->g:LgK/t;

    invoke-virtual {v2, v1}, LgK/t;->a(LgK/t;)LgK/t;

    goto :goto_59
.end method

.method public a(LgK/h;)LgK/e;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1, p0}, LgK/h;->a(LgK/e;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)LgK/e;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, LgK/e;->a(Ljava/lang/String;II)LgK/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;II)LgK/e;
    .registers 13

    const v8, 0xdfff

    const/16 v7, 0x80

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-gez p2, :cond_2a

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    if-ge p3, p2, :cond_4f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_90

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    const/4 v0, 0x0

    :goto_7d
    const v2, 0xdbff

    if-gt v1, v2, :cond_89

    const v2, 0xdc00

    if-lt v0, v2, :cond_89

    if-le v0, v8, :cond_114

    :cond_89
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    add-int/lit8 p2, p2, 0x1

    :cond_90
    :goto_90
    if-ge p2, p3, :cond_145

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ge v1, v7, :cond_d2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LgK/e;->e(I)LgK/t;

    move-result-object v2

    iget-object v3, v2, LgK/t;->a:[B

    iget v0, v2, LgK/t;->c:I

    sub-int v4, v0, p2

    rsub-int v0, v4, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v0, p2, 0x1

    add-int v6, v4, p2

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    :goto_b0
    if-ge v0, v5, :cond_b8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_ca

    :cond_b8
    add-int v1, v0, v4

    iget v3, v2, LgK/t;->c:I

    sub-int/2addr v1, v3

    iget v3, v2, LgK/t;->c:I

    add-int/2addr v3, v1

    iput v3, v2, LgK/t;->c:I

    iget-wide v2, p0, LgK/e;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, LgK/e;->b:J

    :goto_c8
    move p2, v0

    goto :goto_90

    :cond_ca
    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    goto :goto_b0

    :cond_d2
    const/16 v0, 0x800

    if-ge v1, v0, :cond_e7

    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    add-int/lit8 v0, p2, 0x1

    goto :goto_c8

    :cond_e7
    const v0, 0xd800

    if-lt v1, v0, :cond_ee

    if-le v1, v8, :cond_108

    :cond_ee
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    add-int/lit8 v0, p2, 0x1

    goto :goto_c8

    :cond_108
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_7c

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_7d

    :cond_114
    const/high16 v2, 0x10000

    const v3, -0xd801

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0xa

    const v3, -0xdc01

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/2addr v0, v2

    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, LgK/e;->b(I)LgK/e;

    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, LgK/e;->b(I)LgK/e;

    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, LgK/e;->b(I)LgK/e;

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    add-int/lit8 v0, p2, 0x2

    goto :goto_c8

    :cond_145
    return-object p0
.end method

.method public a()LgK/x;
    .registers 2

    sget-object v0, LgK/x;->b:LgK/x;

    return-object v0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p0, LgK/e;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, LgK/z;->a(JJJ)V

    if-nez p3, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    cmp-long v0, p1, v2

    if-nez v0, :cond_39

    const-string v0, ""

    :cond_38
    :goto_38
    return-object v0

    :cond_39
    iget-object v1, p0, LgK/e;->a:LgK/t;

    iget v0, v1, LgK/t;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, LgK/t;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_50

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, LgK/e;->f(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_38

    :cond_50
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, LgK/t;->a:[B

    iget v3, v1, LgK/t;->b:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, v1, LgK/t;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, LgK/t;->b:I

    iget-wide v2, p0, LgK/e;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, LgK/e;->b:J

    iget v2, v1, LgK/t;->b:I

    iget v3, v1, LgK/t;->c:I

    if-ne v2, v3, :cond_38

    invoke-virtual {v1}, LgK/t;->a()LgK/t;

    move-result-object v2

    iput-object v2, p0, LgK/e;->a:LgK/t;

    invoke-static {v1}, LgK/u;->a(LgK/t;)V

    goto :goto_38
.end method

.method public a(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, LgK/e;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_c
    return-void
.end method

.method public a([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, LgK/e;->a([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_13
    add-int/2addr v0, v1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public a_(LgK/e;J)V
    .registers 12

    const-wide/16 v2, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-ne p1, p0, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-wide v0, p1, LgK/e;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, LgK/z;->a(JJJ)V

    :goto_1c
    cmp-long v0, p2, v2

    if-lez v0, :cond_5e

    iget-object v0, p1, LgK/e;->a:LgK/t;

    iget v0, v0, LgK/t;->c:I

    iget-object v1, p1, LgK/e;->a:LgK/t;

    iget v1, v1, LgK/t;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_6e

    iget-object v0, p0, LgK/e;->a:LgK/t;

    if-eqz v0, :cond_5f

    iget-object v0, p0, LgK/e;->a:LgK/t;

    iget-object v0, v0, LgK/t;->g:LgK/t;

    move-object v1, v0

    :goto_37
    if-eqz v1, :cond_65

    iget-boolean v0, v1, LgK/t;->e:Z

    if-eqz v0, :cond_65

    iget v0, v1, LgK/t;->c:I

    int-to-long v4, v0

    add-long/2addr v4, p2

    iget-boolean v0, v1, LgK/t;->d:Z

    if-eqz v0, :cond_62

    const/4 v0, 0x0

    :goto_46
    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_65

    iget-object v0, p1, LgK/e;->a:LgK/t;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, LgK/t;->a(LgK/t;I)V

    iget-wide v0, p1, LgK/e;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, LgK/e;->b:J

    iget-wide v0, p0, LgK/e;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, LgK/e;->b:J

    :cond_5e
    return-void

    :cond_5f
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_37

    :cond_62
    iget v0, v1, LgK/t;->b:I

    goto :goto_46

    :cond_65
    iget-object v0, p1, LgK/e;->a:LgK/t;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, LgK/t;->a(I)LgK/t;

    move-result-object v0

    iput-object v0, p1, LgK/e;->a:LgK/t;

    :cond_6e
    iget-object v0, p1, LgK/e;->a:LgK/t;

    iget v1, v0, LgK/t;->c:I

    iget v4, v0, LgK/t;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v0}, LgK/t;->a()LgK/t;

    move-result-object v1

    iput-object v1, p1, LgK/e;->a:LgK/t;

    iget-object v1, p0, LgK/e;->a:LgK/t;

    if-nez v1, :cond_98

    iput-object v0, p0, LgK/e;->a:LgK/t;

    iget-object v0, p0, LgK/e;->a:LgK/t;

    iget-object v1, p0, LgK/e;->a:LgK/t;

    iget-object v6, p0, LgK/e;->a:LgK/t;

    iput-object v6, v1, LgK/t;->g:LgK/t;

    iput-object v6, v0, LgK/t;->f:LgK/t;

    :goto_8c
    iget-wide v0, p1, LgK/e;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, LgK/e;->b:J

    iget-wide v0, p0, LgK/e;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, LgK/e;->b:J

    sub-long/2addr p2, v4

    goto :goto_1c

    :cond_98
    iget-object v1, p0, LgK/e;->a:LgK/t;

    iget-object v1, v1, LgK/t;->g:LgK/t;

    invoke-virtual {v1, v0}, LgK/t;->a(LgK/t;)LgK/t;

    move-result-object v0

    invoke-virtual {v0}, LgK/t;->b()V

    goto :goto_8c
.end method

.method public b(J)B
    .registers 10

    iget-wide v0, p0, LgK/e;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, LgK/z;->a(JJJ)V

    iget-object v0, p0, LgK/e;->a:LgK/t;

    :goto_a
    iget v1, v0, LgK/t;->c:I

    iget v2, v0, LgK/t;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_1d

    iget-object v1, v0, LgK/t;->a:[B

    iget v0, v0, LgK/t;->b:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_1d
    int-to-long v2, v1

    sub-long/2addr p1, v2

    iget-object v0, v0, LgK/t;->f:LgK/t;

    goto :goto_a
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, LgK/e;->b:J

    return-wide v0
.end method

.method public b(I)LgK/e;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LgK/e;->e(I)LgK/t;

    move-result-object v0

    iget-object v1, v0, LgK/t;->a:[B

    iget v2, v0, LgK/t;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, LgK/t;->c:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    iget-wide v0, p0, LgK/e;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LgK/e;->b:J

    return-object p0
.end method

.method public b([B)LgK/e;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, LgK/e;->b([BII)LgK/e;

    move-result-object v0

    return-object v0
.end method

.method public b([BII)LgK/e;
    .registers 10

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, LgK/z;->a(JJJ)V

    add-int v0, p2, p3

    :goto_13
    if-ge p2, v0, :cond_32

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LgK/e;->e(I)LgK/t;

    move-result-object v1

    sub-int v2, v0, p2

    iget v3, v1, LgK/t;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, LgK/t;->a:[B

    iget v4, v1, LgK/t;->c:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iget v3, v1, LgK/t;->c:I

    add-int/2addr v2, v3

    iput v2, v1, LgK/t;->c:I

    goto :goto_13

    :cond_32
    iget-wide v0, p0, LgK/e;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, LgK/e;->b:J

    return-object p0
.end method

.method public synthetic b(LgK/h;)LgK/f;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LgK/e;->a(LgK/h;)LgK/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)LgK/f;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LgK/e;->a(Ljava/lang/String;)LgK/e;

    move-result-object v0

    return-object v0
.end method

.method public c()LgK/e;
    .registers 1

    return-object p0
.end method

.method public c(I)LgK/e;
    .registers 7

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LgK/e;->e(I)LgK/t;

    move-result-object v0

    iget-object v1, v0, LgK/t;->a:[B

    iget v2, v0, LgK/t;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, LgK/t;->c:I

    iget-wide v0, p0, LgK/e;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, LgK/e;->b:J

    return-object p0
.end method

.method public synthetic c([B)LgK/f;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LgK/e;->b([B)LgK/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([BII)LgK/f;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LgK/e;->b([BII)LgK/e;

    move-result-object v0

    return-object v0
.end method

.method public c(J)LgK/h;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    new-instance v0, LgK/h;

    invoke-virtual {p0, p1, p2}, LgK/e;->f(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, LgK/h;-><init>([B)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LgK/e;->s()LgK/e;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public d()LgK/e;
    .registers 1

    return-object p0
.end method

.method public d(I)LgK/e;
    .registers 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LgK/e;->e(I)LgK/t;

    move-result-object v0

    iget-object v1, v0, LgK/t;->a:[B

    iget v2, v0, LgK/t;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, LgK/t;->c:I

    iget-wide v0, p0, LgK/e;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, LgK/e;->b:J

    return-object p0
.end method

.method public d(J)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    sget-object v0, LgK/z;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, LgK/e;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()LgK/f;
    .registers 1

    return-object p0
.end method

.method e(I)LgK/t;
    .registers 5

    const/16 v2, 0x2000

    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    if-le p1, v2, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    iget-object v0, p0, LgK/e;->a:LgK/t;

    if-nez v0, :cond_22

    invoke-static {}, LgK/u;->a()LgK/t;

    move-result-object v0

    iput-object v0, p0, LgK/e;->a:LgK/t;

    iget-object v1, p0, LgK/e;->a:LgK/t;

    iget-object v2, p0, LgK/e;->a:LgK/t;

    iget-object v0, p0, LgK/e;->a:LgK/t;

    iput-object v0, v2, LgK/t;->g:LgK/t;

    iput-object v0, v1, LgK/t;->f:LgK/t;

    :cond_21
    :goto_21
    return-object v0

    :cond_22
    iget-object v0, p0, LgK/e;->a:LgK/t;

    iget-object v0, v0, LgK/t;->g:LgK/t;

    iget v1, v0, LgK/t;->c:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_2f

    iget-boolean v1, v0, LgK/t;->e:Z

    if-nez v1, :cond_21

    :cond_2f
    invoke-static {}, LgK/u;->a()LgK/t;

    move-result-object v1

    invoke-virtual {v0, v1}, LgK/t;->a(LgK/t;)LgK/t;

    move-result-object v0

    goto :goto_21
.end method

.method e(J)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1e

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, LgK/e;->b(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1e

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, LgK/e;->d(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, LgK/e;->g(J)V

    :goto_1d
    return-object v0

    :cond_1e
    invoke-virtual {p0, p1, p2}, LgK/e;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, LgK/e;->g(J)V

    goto :goto_1d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 16
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p0, p1, :cond_8

    move v0, v6

    .end local p1    # "o":Ljava/lang/Object;
    :goto_7
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_8
    instance-of v2, p1, LgK/e;

    if-nez v2, :cond_e

    move v0, v7

    goto :goto_7

    :cond_e
    check-cast p1, LgK/e;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, LgK/e;->b:J

    iget-wide v4, p1, LgK/e;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    move v0, v7

    goto :goto_7

    :cond_1a
    iget-wide v2, p0, LgK/e;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_22

    move v0, v6

    goto :goto_7

    :cond_22
    iget-object v5, p0, LgK/e;->a:LgK/t;

    iget-object v4, p1, LgK/e;->a:LgK/t;

    iget v3, v5, LgK/t;->b:I

    iget v2, v4, LgK/t;->b:I

    :goto_2a
    iget-wide v8, p0, LgK/e;->b:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_69

    iget v8, v5, LgK/t;->c:I

    sub-int/2addr v8, v3

    iget v9, v4, LgK/t;->c:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    :goto_3c
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_57

    iget-object v12, v5, LgK/t;->a:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, LgK/t;->a:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-eq v12, v2, :cond_51

    move v0, v7

    goto :goto_7

    :cond_51
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v3

    move v3, v9

    goto :goto_3c

    :cond_57
    iget v8, v5, LgK/t;->c:I

    if-ne v3, v8, :cond_5f

    iget-object v5, v5, LgK/t;->f:LgK/t;

    iget v3, v5, LgK/t;->b:I

    :cond_5f
    iget v8, v4, LgK/t;->c:I

    if-ne v2, v8, :cond_67

    iget-object v4, v4, LgK/t;->f:LgK/t;

    iget v2, v4, LgK/t;->b:I

    :cond_67
    add-long/2addr v0, v10

    goto :goto_2a

    :cond_69
    move v0, v6

    goto :goto_7
.end method

.method public synthetic f(I)LgK/f;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LgK/e;->d(I)LgK/e;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .registers 5

    iget-wide v0, p0, LgK/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public f(J)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, LgK/e;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, LgK/z;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    long-to-int v0, p1

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, LgK/e;->a([B)V

    return-object v0
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public g()J
    .registers 6

    const-wide/16 v2, 0x0

    iget-wide v0, p0, LgK/e;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    move-wide v0, v2

    :cond_9
    :goto_9
    return-wide v0

    :cond_a
    iget-object v2, p0, LgK/e;->a:LgK/t;

    iget-object v2, v2, LgK/t;->g:LgK/t;

    iget v3, v2, LgK/t;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_9

    iget-boolean v3, v2, LgK/t;->e:Z

    if-eqz v3, :cond_9

    iget v3, v2, LgK/t;->c:I

    iget v2, v2, LgK/t;->b:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_9
.end method

.method public synthetic g(I)LgK/f;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LgK/e;->c(I)LgK/e;

    move-result-object v0

    return-object v0
.end method

.method public g(J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_44

    iget-object v0, p0, LgK/e;->a:LgK/t;

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, LgK/e;->a:LgK/t;

    iget v0, v0, LgK/t;->c:I

    iget-object v1, p0, LgK/e;->a:LgK/t;

    iget v1, v1, LgK/t;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-wide v2, p0, LgK/e;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, LgK/e;->b:J

    int-to-long v2, v0

    sub-long/2addr p1, v2

    iget-object v1, p0, LgK/e;->a:LgK/t;

    iget v2, v1, LgK/t;->b:I

    add-int/2addr v0, v2

    iput v0, v1, LgK/t;->b:I

    iget-object v0, p0, LgK/e;->a:LgK/t;

    iget v0, v0, LgK/t;->b:I

    iget-object v1, p0, LgK/e;->a:LgK/t;

    iget v1, v1, LgK/t;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LgK/e;->a:LgK/t;

    invoke-virtual {v0}, LgK/t;->a()LgK/t;

    move-result-object v1

    iput-object v1, p0, LgK/e;->a:LgK/t;

    invoke-static {v0}, LgK/u;->a(LgK/t;)V

    goto :goto_0

    :cond_44
    return-void
.end method

.method public h()B
    .registers 11

    iget-wide v0, p0, LgK/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, LgK/e;->a:LgK/t;

    iget v1, v0, LgK/t;->b:I

    iget v2, v0, LgK/t;->c:I

    iget-object v3, v0, LgK/t;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v6, p0, LgK/e;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, LgK/e;->b:J

    if-ne v4, v2, :cond_2f

    invoke-virtual {v0}, LgK/t;->a()LgK/t;

    move-result-object v2

    iput-object v2, p0, LgK/e;->a:LgK/t;

    invoke-static {v0}, LgK/u;->a(LgK/t;)V

    :goto_2e
    return v1

    :cond_2f
    iput v4, v0, LgK/t;->b:I

    goto :goto_2e
.end method

.method public h(J)LgK/e;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    move-result-object p0

    :goto_c
    return-object p0

    :cond_d
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_121

    neg-long v2, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_22

    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, LgK/e;->a(Ljava/lang/String;)LgK/e;

    move-result-object p0

    goto :goto_c

    :cond_22
    const/4 v0, 0x1

    move v4, v0

    :goto_24
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-gez v0, :cond_8c

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gez v0, :cond_6e

    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-gez v0, :cond_64

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_62

    const/4 v0, 0x1

    :goto_3e
    if-eqz v4, :cond_42

    add-int/lit8 v0, v0, 0x1

    :cond_42
    invoke-virtual {p0, v0}, LgK/e;->e(I)LgK/t;

    move-result-object v5

    iget-object v6, v5, LgK/t;->a:[B

    iget v1, v5, LgK/t;->c:I

    add-int/2addr v1, v0

    :goto_4b
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_10c

    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    long-to-int v7, v8

    add-int/lit8 v1, v1, -0x1

    sget-object v8, LgK/e;->c:[B

    aget-byte v7, v8, v7

    aput-byte v7, v6, v1

    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    goto :goto_4b

    :cond_62
    const/4 v0, 0x2

    goto :goto_3e

    :cond_64
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_6c

    const/4 v0, 0x3

    goto :goto_3e

    :cond_6c
    const/4 v0, 0x4

    goto :goto_3e

    :cond_6e
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_80

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_7e

    const/4 v0, 0x5

    goto :goto_3e

    :cond_7e
    const/4 v0, 0x6

    goto :goto_3e

    :cond_80
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_89

    const/4 v0, 0x7

    goto :goto_3e

    :cond_89
    const/16 v0, 0x8

    goto :goto_3e

    :cond_8c
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_ba

    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_ab

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_a8

    const/16 v0, 0x9

    goto :goto_3e

    :cond_a8
    const/16 v0, 0xa

    goto :goto_3e

    :cond_ab
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_b7

    const/16 v0, 0xb

    goto :goto_3e

    :cond_b7
    const/16 v0, 0xc

    goto :goto_3e

    :cond_ba
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_e1

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d0

    const/16 v0, 0xd

    goto/16 :goto_3e

    :cond_d0
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_dd

    const/16 v0, 0xe

    goto/16 :goto_3e

    :cond_dd
    const/16 v0, 0xf

    goto/16 :goto_3e

    :cond_e1
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_fb

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f7

    const/16 v0, 0x10

    goto/16 :goto_3e

    :cond_f7
    const/16 v0, 0x11

    goto/16 :goto_3e

    :cond_fb
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_108

    const/16 v0, 0x12

    goto/16 :goto_3e

    :cond_108
    const/16 v0, 0x13

    goto/16 :goto_3e

    :cond_10c
    if-eqz v4, :cond_114

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    :cond_114
    iget v1, v5, LgK/t;->c:I

    add-int/2addr v1, v0

    iput v1, v5, LgK/t;->c:I

    iget-wide v2, p0, LgK/e;->b:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, LgK/e;->b:J

    goto/16 :goto_c

    :cond_121
    move v4, v0

    move-wide v2, p1

    goto/16 :goto_24
.end method

.method public synthetic h(I)LgK/f;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LgK/e;->b(I)LgK/e;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    iget-object v1, p0, LgK/e;->a:LgK/t;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    :cond_7
    iget v2, v1, LgK/t;->b:I

    iget v4, v1, LgK/t;->c:I

    :goto_b
    if-ge v2, v4, :cond_19

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, LgK/t;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_b

    :cond_19
    iget-object v1, v1, LgK/t;->f:LgK/t;

    iget-object v2, p0, LgK/e;->a:LgK/t;

    if-ne v1, v2, :cond_7

    goto :goto_5
.end method

.method public i(J)LgK/e;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, LgK/e;->b(I)LgK/e;

    move-result-object p0

    :goto_c
    return-object p0

    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, LgK/e;->e(I)LgK/t;

    move-result-object v2

    iget-object v3, v2, LgK/t;->a:[B

    iget v0, v2, LgK/t;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, LgK/t;->c:I

    :goto_26
    if-lt v0, v4, :cond_37

    sget-object v5, LgK/e;->c:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_37
    iget v0, v2, LgK/t;->c:I

    add-int/2addr v0, v1

    iput v0, v2, LgK/t;->c:I

    iget-wide v2, p0, LgK/e;->b:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, LgK/e;->b:J

    goto :goto_c
.end method

.method public i()S
    .registers 11

    const-wide/16 v8, 0x2

    iget-wide v0, p0, LgK/e;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, LgK/e;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iget-object v0, p0, LgK/e;->a:LgK/t;

    iget v1, v0, LgK/t;->b:I

    iget v2, v0, LgK/t;->c:I

    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3f

    invoke-virtual {p0}, LgK/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, LgK/e;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    :goto_3e
    return v0

    :cond_3f
    iget-object v3, v0, LgK/t;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iget-wide v6, p0, LgK/e;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, LgK/e;->b:J

    if-ne v5, v2, :cond_62

    invoke-virtual {v0}, LgK/t;->a()LgK/t;

    move-result-object v2

    iput-object v2, p0, LgK/e;->a:LgK/t;

    invoke-static {v0}, LgK/u;->a(LgK/t;)V

    :goto_60
    int-to-short v0, v1

    goto :goto_3e

    :cond_62
    iput v5, v0, LgK/t;->b:I

    goto :goto_60
.end method

.method public j()I
    .registers 11

    const-wide/16 v8, 0x4

    iget-wide v0, p0, LgK/e;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, LgK/e;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iget-object v1, p0, LgK/e;->a:LgK/t;

    iget v0, v1, LgK/t;->b:I

    iget v2, v1, LgK/t;->c:I

    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_50

    invoke-virtual {p0}, LgK/e;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, LgK/e;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, LgK/e;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, LgK/e;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :goto_4f
    return v0

    :cond_50
    iget-object v3, v1, LgK/t;->a:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    iget-wide v6, p0, LgK/e;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, LgK/e;->b:J

    if-ne v5, v2, :cond_84

    invoke-virtual {v1}, LgK/t;->a()LgK/t;

    move-result-object v2

    iput-object v2, p0, LgK/e;->a:LgK/t;

    invoke-static {v1}, LgK/u;->a(LgK/t;)V

    goto :goto_4f

    :cond_84
    iput v5, v1, LgK/t;->b:I

    goto :goto_4f
.end method

.method public synthetic j(J)LgK/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LgK/e;->i(J)LgK/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic k(J)LgK/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LgK/e;->h(J)LgK/e;

    move-result-object v0

    return-object v0
.end method

.method public k()S
    .registers 2

    invoke-virtual {p0}, LgK/e;->i()S

    move-result v0

    invoke-static {v0}, LgK/z;->a(S)S

    move-result v0

    return v0
.end method

.method public l()I
    .registers 2

    invoke-virtual {p0}, LgK/e;->j()I

    move-result v0

    invoke-static {v0}, LgK/z;->a(I)I

    move-result v0

    return v0
.end method

.method public m()J
    .registers 19

    move-object/from16 v0, p0

    iget-wide v2, v0, LgK/e;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, LgK/e;->a:LgK/t;

    iget-object v11, v10, LgK/t;->a:[B

    iget v6, v10, LgK/t;->b:I

    iget v12, v10, LgK/t;->c:I

    move v7, v6

    :goto_21
    if-ge v7, v12, :cond_9c

    aget-byte v8, v11, v7

    const/16 v6, 0x30

    if-lt v8, v6, :cond_62

    const/16 v6, 0x39

    if-gt v8, v6, :cond_62

    add-int/lit8 v6, v8, -0x30

    :goto_2f
    const-wide/high16 v14, -0x1000000000000000L

    and-long/2addr v14, v4

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_bd

    new-instance v2, LgK/e;

    invoke-direct {v2}, LgK/e;-><init>()V

    invoke-virtual {v2, v4, v5}, LgK/e;->i(J)LgK/e;

    move-result-object v2

    invoke-virtual {v2, v8}, LgK/e;->b(I)LgK/e;

    move-result-object v2

    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, LgK/e;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_62
    const/16 v6, 0x61

    if-lt v8, v6, :cond_6f

    const/16 v6, 0x66

    if-gt v8, v6, :cond_6f

    add-int/lit8 v6, v8, -0x61

    add-int/lit8 v6, v6, 0xa

    goto :goto_2f

    :cond_6f
    const/16 v6, 0x41

    if-lt v8, v6, :cond_7c

    const/16 v6, 0x46

    if-gt v8, v6, :cond_7c

    add-int/lit8 v6, v8, -0x41

    add-int/lit8 v6, v6, 0xa

    goto :goto_2f

    :cond_7c
    if-nez v3, :cond_9b

    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9b
    const/4 v2, 0x1

    :cond_9c
    if-ne v7, v12, :cond_c9

    invoke-virtual {v10}, LgK/t;->a()LgK/t;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, LgK/e;->a:LgK/t;

    invoke-static {v10}, LgK/u;->a(LgK/t;)V

    :goto_a9
    if-nez v2, :cond_b1

    move-object/from16 v0, p0

    iget-object v6, v0, LgK/e;->a:LgK/t;

    if-nez v6, :cond_16

    :cond_b1
    move-object/from16 v0, p0

    iget-wide v6, v0, LgK/e;->b:J

    int-to-long v2, v3

    sub-long v2, v6, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, LgK/e;->b:J

    return-wide v4

    :cond_bd
    const/4 v8, 0x4

    shl-long/2addr v4, v8

    int-to-long v8, v6

    or-long/2addr v8, v4

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move-wide v4, v8

    goto/16 :goto_21

    :cond_c9
    iput v7, v10, LgK/t;->b:I

    goto :goto_a9
.end method

.method public n()LgK/h;
    .registers 3

    new-instance v0, LgK/h;

    invoke-virtual {p0}, LgK/e;->q()[B

    move-result-object v1

    invoke-direct {v0, v1}, LgK/h;-><init>([B)V

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-wide v0, p0, LgK/e;->b:J

    sget-object v2, LgK/z;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, LgK/e;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public p()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, LgK/e;->a(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_54

    new-instance v1, LgK/e;

    invoke-direct {v1}, LgK/e;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-wide v6, p0, LgK/e;->b:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LgK/e;->a(LgK/e;JJ)LgK/e;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, LgK/e;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, LgK/e;->n()LgK/h;

    move-result-object v1

    invoke-virtual {v1}, LgK/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    invoke-virtual {p0, v0, v1}, LgK/e;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()[B
    .registers 3

    :try_start_0
    iget-wide v0, p0, LgK/e;->b:J

    invoke-virtual {p0, v0, v1}, LgK/e;->f(J)[B
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public r()V
    .registers 3

    :try_start_0
    iget-wide v0, p0, LgK/e;->b:J

    invoke-virtual {p0, v0, v1}, LgK/e;->g(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public s()LgK/e;
    .registers 7

    new-instance v1, LgK/e;

    invoke-direct {v1}, LgK/e;-><init>()V

    iget-wide v2, p0, LgK/e;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    new-instance v0, LgK/t;

    iget-object v2, p0, LgK/e;->a:LgK/t;

    invoke-direct {v0, v2}, LgK/t;-><init>(LgK/t;)V

    iput-object v0, v1, LgK/e;->a:LgK/t;

    iget-object v0, v1, LgK/e;->a:LgK/t;

    iget-object v2, v1, LgK/e;->a:LgK/t;

    iget-object v3, v1, LgK/e;->a:LgK/t;

    iput-object v3, v2, LgK/t;->g:LgK/t;

    iput-object v3, v0, LgK/t;->f:LgK/t;

    iget-object v0, p0, LgK/e;->a:LgK/t;

    iget-object v0, v0, LgK/t;->f:LgK/t;

    :goto_26
    iget-object v2, p0, LgK/e;->a:LgK/t;

    if-eq v0, v2, :cond_39

    iget-object v2, v1, LgK/e;->a:LgK/t;

    iget-object v2, v2, LgK/t;->g:LgK/t;

    new-instance v3, LgK/t;

    invoke-direct {v3, v0}, LgK/t;-><init>(LgK/t;)V

    invoke-virtual {v2, v3}, LgK/t;->a(LgK/t;)LgK/t;

    iget-object v0, v0, LgK/t;->f:LgK/t;

    goto :goto_26

    :cond_39
    iget-wide v2, p0, LgK/e;->b:J

    iput-wide v2, v1, LgK/e;->b:J

    move-object v0, v1

    goto :goto_e
.end method

.method public synthetic t()LgK/f;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LgK/e;->d()LgK/e;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-wide v0, p0, LgK/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const-string v0, "Buffer[size=0]"

    :goto_d
    return-object v0

    :cond_e
    iget-wide v0, p0, LgK/e;->b:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-gtz v0, :cond_35

    invoke-virtual {p0}, LgK/e;->s()LgK/e;

    move-result-object v0

    invoke-virtual {v0}, LgK/e;->n()LgK/h;

    move-result-object v0

    const-string v1, "Buffer[size=%s data=%s]"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p0, LgK/e;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0}, LgK/h;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_35
    :try_start_35
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v0, p0, LgK/e;->a:LgK/t;

    iget-object v0, v0, LgK/t;->a:[B

    iget-object v2, p0, LgK/e;->a:LgK/t;

    iget v2, v2, LgK/t;->b:I

    iget-object v3, p0, LgK/e;->a:LgK/t;

    iget v3, v3, LgK/t;->c:I

    iget-object v4, p0, LgK/e;->a:LgK/t;

    iget v4, v4, LgK/t;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, LgK/e;->a:LgK/t;

    iget-object v0, v0, LgK/t;->f:LgK/t;

    :goto_53
    iget-object v2, p0, LgK/e;->a:LgK/t;

    if-eq v0, v2, :cond_66

    iget-object v2, v0, LgK/t;->a:[B

    iget v3, v0, LgK/t;->b:I

    iget v4, v0, LgK/t;->c:I

    iget v5, v0, LgK/t;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, v0, LgK/t;->f:LgK/t;

    goto :goto_53

    :cond_66
    const-string v0, "Buffer[size=%s md5=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, LgK/e;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, LgK/h;->a([B)LgK/h;

    move-result-object v1

    invoke-virtual {v1}, LgK/h;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_86
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_35 .. :try_end_86} :catch_88

    move-result-object v0

    goto :goto_d

    :catch_88
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
