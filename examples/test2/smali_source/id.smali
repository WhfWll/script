.class final Lid;
.super Ljava/lang/Object;


# static fields
.field private static final a:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lid;->a:J

    return-void
.end method

.method static a(I)I
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x7f

    if-le p0, v1, :cond_18

    move v1, v0

    :goto_6
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v1, v1, 0x3

    :goto_11
    if-ltz v1, :cond_18

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x8

    goto :goto_11

    :cond_18
    return v0
.end method

.method static a(Ljava/io/InputStream;)I
    .registers 7

    const-wide/32 v4, 0x7fffffff

    instance-of v0, p0, Lib;

    if-eqz v0, :cond_e

    check-cast p0, Lib;

    invoke-virtual {p0}, Lib;->a()I

    move-result v0

    :goto_d
    return v0

    :cond_e
    instance-of v0, p0, Lfl;

    if-eqz v0, :cond_19

    check-cast p0, Lfl;

    invoke-virtual {p0}, Lfl;->a()I

    move-result v0

    goto :goto_d

    :cond_19
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_24

    check-cast p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    goto :goto_d

    :cond_24
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_39

    :try_start_28
    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_31} :catch_38

    move-result-wide v0

    cmp-long v2, v0, v4

    if-gez v2, :cond_39

    long-to-int v0, v0

    goto :goto_d

    :catch_38
    move-exception v0

    :cond_39
    sget-wide v0, Lid;->a:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_43

    const v0, 0x7fffffff

    goto :goto_d

    :cond_43
    sget-wide v0, Lid;->a:J

    long-to-int v0, v0

    goto :goto_d
.end method

.method static b(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x1f

    if-lt p0, v1, :cond_a

    const/16 v0, 0x80

    if-ge p0, v0, :cond_b

    const/4 v0, 0x2

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x5

    new-array v1, v0, [B

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p0, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_16
    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p0, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v2, 0x7f

    if-gt p0, v2, :cond_16

    array-length v1, v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method
