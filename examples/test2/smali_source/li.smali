.class public abstract Lli;
.super Ljava/lang/Object;


# instance fields
.field private a:B

.field private a:[B

.field protected b:I


# direct methods
.method public constructor <init>(B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lli;->a:[B

    iput-byte p1, p0, Lli;->a:B

    const/4 v0, 0x0

    iput v0, p0, Lli;->b:I

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lli;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v8, 0x6

    :try_start_1
    new-instance v0, Lko;

    invoke-direct {v0, p0}, Lko;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    shr-int/lit8 v3, v2, 0x4

    int-to-byte v3, v3

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    invoke-static {v1}, Lli;->a(Ljava/io/DataInputStream;)Llk;

    move-result-object v4

    iget-wide v4, v4, Llk;->a:J

    invoke-virtual {v0}, Lko;->a()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v0}, Lko;->a()I

    move-result v0

    int-to-long v6, v0

    sub-long/2addr v4, v6

    const/4 v0, 0x0

    new-array v0, v0, [B

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_38

    long-to-int v0, v4

    new-array v0, v0, [B

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    :cond_38
    move-object v1, v0

    const/4 v0, 0x3

    if-ne v3, v0, :cond_42

    new-instance v0, Llc;

    invoke-direct {v0, v2, v1}, Llc;-><init>(B[B)V

    :goto_41
    return-object v0

    :cond_42
    const/4 v0, 0x4

    if-ne v3, v0, :cond_52

    new-instance v0, Lky;

    invoke-direct {v0, v1}, Lky;-><init>([B)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4a} :catch_4b

    goto :goto_41

    :catch_4b
    move-exception v0

    new-instance v1, Ljm;

    invoke-direct {v1, v0}, Ljm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_52
    const/4 v0, 0x7

    if-ne v3, v0, :cond_5b

    :try_start_55
    new-instance v0, Lkz;

    invoke-direct {v0, v1}, Lkz;-><init>([B)V

    goto :goto_41

    :cond_5b
    const/4 v0, 0x2

    if-ne v3, v0, :cond_64

    new-instance v0, Lkq;

    invoke-direct {v0, v1}, Lkq;-><init>([B)V

    goto :goto_41

    :cond_64
    const/16 v0, 0xd

    if-ne v3, v0, :cond_6e

    new-instance v0, Lkx;

    invoke-direct {v0}, Lkx;-><init>()V

    goto :goto_41

    :cond_6e
    const/16 v0, 0x9

    if-ne v3, v0, :cond_78

    new-instance v0, Lle;

    invoke-direct {v0, v1}, Lle;-><init>([B)V

    goto :goto_41

    :cond_78
    const/16 v0, 0xb

    if-ne v3, v0, :cond_82

    new-instance v0, Llg;

    invoke-direct {v0, v1}, Llg;-><init>([B)V

    goto :goto_41

    :cond_82
    if-ne v3, v8, :cond_8a

    new-instance v0, Llb;

    invoke-direct {v0, v1}, Llb;-><init>([B)V

    goto :goto_41

    :cond_8a
    const/4 v0, 0x5

    if-ne v3, v0, :cond_93

    new-instance v0, Lla;

    invoke-direct {v0, v1}, Lla;-><init>([B)V

    goto :goto_41

    :cond_93
    const/4 v0, 0x6

    invoke-static {v0}, Lat;->a(I)Ljm;

    move-result-object v0

    throw v0
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_99} :catch_4b
.end method

.method protected static a(Ljava/io/DataInputStream;)Llk;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit8 v4, v1, 0x7f

    mul-int/2addr v4, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    shl-int/lit8 v0, v0, 0x7

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_3

    new-instance v0, Llk;

    invoke-direct {v0, v2, v3}, Llk;-><init>(J)V

    return-object v0
.end method

.method protected static a(J)[B
    .registers 12

    const-wide/16 v8, 0x80

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_a
    rem-long v4, p0, v8

    long-to-int v1, v4

    int-to-byte v1, v1

    div-long/2addr p0, v8

    cmp-long v3, p0, v6

    if-lez v3, :cond_16

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    :cond_16
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    cmp-long v1, p0, v6

    if-lez v1, :cond_22

    const/4 v1, 0x4

    if-lt v0, v1, :cond_a

    :cond_22
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a()B
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lli;->b:I

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected abstract b_()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lli;->b:I

    return v0
.end method

.method public final c()[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    iget-object v0, p0, Lli;->a:[B

    if-nez v0, :cond_3d

    :try_start_4
    iget-byte v0, p0, Lli;->a:B

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lli;->a()B

    move-result v1

    and-int/lit8 v1, v1, 0xf

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lli;->b_()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p0}, Lli;->b()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    int-to-long v6, v2

    invoke-static {v6, v7}, Lli;->a(J)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lli;->a:[B
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3d} :catch_40

    :cond_3d
    iget-object v0, p0, Lli;->a:[B

    return-object v0

    :catch_40
    move-exception v0

    new-instance v1, Ljm;

    invoke-direct {v1, v0}, Ljm;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final d()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lli;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Ljm;

    invoke-direct {v1, v0}, Ljm;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
