.class public final Llc;
.super Lkv;


# instance fields
.field public a:Ljava/lang/String;

.field public a:Ljn;

.field private a:[B


# direct methods
.method public constructor <init>(B[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkv;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Llc;->a:[B

    new-instance v0, Lld;

    invoke-direct {v0}, Lld;-><init>()V

    iput-object v0, p0, Llc;->a:Ljn;

    iget-object v0, p0, Llc;->a:Ljn;

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljn;->a(I)V

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_21

    iget-object v0, p0, Llc;->a:Ljn;

    invoke-virtual {v0, v2}, Ljn;->a(Z)V

    :cond_21
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Llc;->a:Ljn;

    check-cast v0, Lld;

    invoke-virtual {v0, v2}, Lld;->b(Z)V

    :cond_2e
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lko;

    invoke-direct {v1, v0}, Lko;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llc;->a:Ljava/lang/String;

    iget-object v2, p0, Llc;->a:Ljn;

    iget v2, v2, Ljn;->a:I

    if-lez v2, :cond_4f

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Llc;->b:I

    :cond_4f
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    array-length v2, p2

    invoke-virtual {v1}, Lko;->a()I

    move-result v1

    sub-int v1, v2, v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    iget-object v0, p0, Llc;->a:Ljn;

    invoke-virtual {v0, v1}, Ljn;->a([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljn;)V
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkv;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Llc;->a:[B

    iput-object p1, p0, Llc;->a:Ljava/lang/String;

    iput-object p2, p0, Llc;->a:Ljn;

    return-void
.end method


# virtual methods
.method protected final a()B
    .registers 3

    iget-object v0, p0, Llc;->a:Ljn;

    iget v0, v0, Ljn;->a:I

    shl-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iget-object v1, p0, Llc;->a:Ljn;

    iget-boolean v1, v1, Ljn;->a:Z

    if-eqz v1, :cond_10

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_10
    iget-object v1, p0, Llc;->a:Ljn;

    iget-boolean v1, v1, Ljn;->b:Z

    if-eqz v1, :cond_19

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_19
    return v0
.end method

.method public final a(I)V
    .registers 3

    invoke-super {p0, p1}, Lkv;->a(I)V

    iget-object v0, p0, Llc;->a:Ljn;

    instance-of v0, v0, Lld;

    if-eqz v0, :cond_b

    iget-object v0, p0, Llc;->a:Ljn;

    :cond_b
    return-void
.end method

.method public final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final b()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Llc;->b()[B

    move-result-object v1

    array-length v0, v1
    :try_end_6
    .catch Ljm; {:try_start_1 .. :try_end_6} :catch_7

    :goto_6
    return v0

    :catch_7
    move-exception v1

    goto :goto_6
.end method

.method public final b()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    iget-object v0, p0, Llc;->a:[B

    if-nez v0, :cond_a

    iget-object v0, p0, Llc;->a:Ljn;

    iget-object v0, v0, Ljn;->a:[B

    iput-object v0, p0, Llc;->a:[B

    :cond_a
    iget-object v0, p0, Llc;->a:[B

    return-object v0
.end method

.method protected final b_()[B
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

    iget-object v2, p0, Llc;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Llc;->a:Ljn;

    iget v2, v2, Ljn;->a:I

    if-lez v2, :cond_1a

    iget v2, p0, Llc;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    :cond_1a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_22

    move-result-object v0

    return-object v0

    :catch_22
    move-exception v0

    new-instance v1, Ljm;

    invoke-direct {v1, v0}, Ljm;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
