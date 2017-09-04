.class public Lha;
.super Lfv;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3

    invoke-direct {p0}, Lfv;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lha;->a:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lfv;-><init>()V

    iput-object p1, p0, Lha;->a:[B

    return-void
.end method


# virtual methods
.method final a()I
    .registers 3

    iget-object v0, p0, Lha;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lid;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lha;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a()Ljava/math/BigInteger;
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lha;->a:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method final a(Lfs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    iget-object v1, p0, Lha;->a:[B

    invoke-virtual {p1, v0, v1}, Lfs;->a(I[B)V

    return-void
.end method

.method final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final a(Lfv;)Z
    .registers 4

    instance-of v0, p1, Lha;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, Lha;

    iget-object v0, p0, Lha;->a:[B

    iget-object v1, p1, Lha;->a:[B

    invoke-static {v0, v1}, Lat;->a([B[B)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lha;->a:[B

    array-length v2, v2

    if-eq v0, v2, :cond_14

    iget-object v2, p0, Lha;->a:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v3, v0, 0x4

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lha;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
