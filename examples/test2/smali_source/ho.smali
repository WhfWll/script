.class public Lho;
.super Lfv;


# instance fields
.field private a:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lfv;-><init>()V

    iput-object p1, p0, Lho;->a:[B

    return-void
.end method


# virtual methods
.method final a()I
    .registers 3

    iget-object v0, p0, Lho;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lid;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method final a(Lfs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lfs;->b(I)V

    iget-object v0, p0, Lho;->a:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Lfs;->a(I)V

    const/4 v0, 0x0

    :goto_c
    if-eq v0, v1, :cond_18

    iget-object v2, p0, Lho;->a:[B

    aget-byte v2, v2, v0

    invoke-virtual {p1, v2}, Lfs;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return-void
.end method

.method final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final a(Lfv;)Z
    .registers 4

    instance-of v0, p1, Lho;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lho;->a:[B

    check-cast p1, Lho;

    iget-object v1, p1, Lho;->a:[B

    invoke-static {v0, v1}, Lat;->a([B[B)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lho;->a:[B

    invoke-static {v0}, Lat;->a([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lho;->a:[B

    invoke-static {v0}, Lat;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
