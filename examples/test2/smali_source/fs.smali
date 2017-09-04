.class public Lfs;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfs;->a:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method a()Lfs;
    .registers 3

    new-instance v0, Lhg;

    iget-object v1, p0, Lfs;->a:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lhg;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method final a(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7f

    if-le p1, v0, :cond_23

    const/4 v0, 0x1

    move v1, v0

    move v0, p1

    :goto_7
    ushr-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    or-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lfs;->b(I)V

    add-int/lit8 v0, v1, -0x1

    shl-int/lit8 v0, v0, 0x3

    :goto_18
    if-ltz v0, :cond_27

    shr-int v1, p1, v0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lfs;->b(I)V

    add-int/lit8 v0, v0, -0x8

    goto :goto_18

    :cond_23
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lfs;->b(I)V

    :cond_27
    return-void
.end method

.method final a(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_a

    or-int v0, p1, p2

    invoke-virtual {p0, v0}, Lfs;->b(I)V

    :goto_9
    return-void

    :cond_a
    or-int/lit8 v0, p1, 0x1f

    invoke-virtual {p0, v0}, Lfs;->b(I)V

    const/16 v0, 0x80

    if-ge p2, v0, :cond_17

    invoke-virtual {p0, p2}, Lfs;->b(I)V

    goto :goto_9

    :cond_17
    const/4 v0, 0x5

    new-array v1, v0, [B

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_22
    shr-int/lit8 p2, p2, 0x7

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v2, 0x7f

    if-gt p2, v2, :cond_22

    array-length v2, v1

    sub-int/2addr v2, v0

    iget-object v3, p0, Lfs;->a:Ljava/io/OutputStream;

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9
.end method

.method final a(II[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lfs;->a(II)V

    array-length v0, p3

    invoke-virtual {p0, v0}, Lfs;->a(I)V

    invoke-virtual {p0, p3}, Lfs;->a([B)V

    return-void
.end method

.method final a(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lfs;->b(I)V

    array-length v0, p2

    invoke-virtual {p0, v0}, Lfs;->a(I)V

    invoke-virtual {p0, p2}, Lfs;->a([B)V

    return-void
.end method

.method public a(Lfg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lfg;->b()Lfv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfv;->a(Lfs;)V

    return-void

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(Lfv;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_d

    new-instance v0, Lft;

    iget-object v1, p0, Lfs;->a:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lft;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lfv;->a(Lfs;)V

    return-void

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lfs;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method b()Lfs;
    .registers 3

    new-instance v0, Lhs;

    iget-object v1, p0, Lfs;->a:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lhs;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method b(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lfs;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
