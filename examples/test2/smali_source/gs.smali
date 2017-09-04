.class public Lgs;
.super Lfv;


# static fields
.field private static a:Lfe;

.field private static final a:[B

.field private static b:Lfe;

.field private static final b:[B


# instance fields
.field private c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    sput-object v0, Lgs;->a:[B

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lgs;->b:[B

    new-instance v0, Lfe;

    invoke-direct {v0, v2}, Lfe;-><init>(Z)V

    sput-object v0, Lgs;->a:Lfe;

    new-instance v0, Lfe;

    invoke-direct {v0, v3}, Lfe;-><init>(Z)V

    sput-object v0, Lgs;->b:Lfe;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Lfv;-><init>()V

    if-eqz p1, :cond_a

    sget-object v0, Lgs;->a:[B

    :goto_7
    iput-object v0, p0, Lgs;->c:[B

    return-void

    :cond_a
    sget-object v0, Lgs;->b:[B

    goto :goto_7
.end method

.method constructor <init>([B)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lfv;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    aget-byte v0, p1, v2

    if-nez v0, :cond_19

    sget-object v0, Lgs;->b:[B

    iput-object v0, p0, Lgs;->c:[B

    :goto_18
    return-void

    :cond_19
    aget-byte v0, p1, v2

    const/16 v1, 0xff

    if-ne v0, v1, :cond_24

    sget-object v0, Lgs;->a:[B

    iput-object v0, p0, Lgs;->c:[B

    goto :goto_18

    :cond_24
    invoke-static {p1}, Lat;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lgs;->c:[B

    goto :goto_18
.end method

.method static a([B)Lfe;
    .registers 4

    const/4 v2, 0x0

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    aget-byte v0, p0, v2

    if-nez v0, :cond_14

    sget-object v0, Lgs;->a:Lfe;

    :goto_13
    return-object v0

    :cond_14
    aget-byte v0, p0, v2

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1d

    sget-object v0, Lgs;->b:Lfe;

    goto :goto_13

    :cond_1d
    new-instance v0, Lfe;

    invoke-direct {v0, p0}, Lfe;-><init>([B)V

    goto :goto_13
.end method


# virtual methods
.method final a()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method final a(Lfs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lgs;->c:[B

    invoke-virtual {p1, v0, v1}, Lfs;->a(I[B)V

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

    if-eqz p1, :cond_7

    instance-of v1, p1, Lgs;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lgs;->c:[B

    aget-byte v1, v1, v0

    check-cast p1, Lgs;

    iget-object v2, p1, Lgs;->c:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lgs;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lgs;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_a

    const-string v0, "TRUE"

    :goto_9
    return-object v0

    :cond_a
    const-string v0, "FALSE"

    goto :goto_9
.end method
