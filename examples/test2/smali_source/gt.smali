.class public Lgt;
.super Lfv;


# static fields
.field private static a:[Lfi;


# instance fields
.field private a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [Lfi;

    sput-object v0, Lgt;->a:[Lfi;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lfv;-><init>()V

    iput-object p1, p0, Lgt;->a:[B

    return-void
.end method

.method static a([B)Lfi;
    .registers 5

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    new-instance v0, Lfi;

    invoke-static {p0}, Lat;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lfi;-><init>([B)V

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    array-length v0, p0

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ENUMERATED has zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v1, v0, 0xff

    sget-object v0, Lgt;->a:[Lfi;

    array-length v0, v0

    if-lt v1, v0, :cond_2d

    new-instance v0, Lfi;

    invoke-static {p0}, Lat;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lfi;-><init>([B)V

    goto :goto_d

    :cond_2d
    sget-object v0, Lgt;->a:[Lfi;

    aget-object v0, v0, v1

    if-nez v0, :cond_d

    sget-object v2, Lgt;->a:[Lfi;

    new-instance v0, Lfi;

    invoke-static {p0}, Lat;->a([B)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lfi;-><init>([B)V

    aput-object v0, v2, v1

    goto :goto_d
.end method


# virtual methods
.method final a()I
    .registers 3

    iget-object v0, p0, Lgt;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lid;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lgt;->a:[B

    array-length v1, v1

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

    const/16 v0, 0xa

    iget-object v1, p0, Lgt;->a:[B

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

    instance-of v0, p1, Lgt;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, Lgt;

    iget-object v0, p0, Lgt;->a:[B

    iget-object v1, p1, Lgt;->a:[B

    invoke-static {v0, v1}, Lat;->a([B[B)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lgt;->a:[B

    invoke-static {v0}, Lat;->a([B)I

    move-result v0

    return v0
.end method
