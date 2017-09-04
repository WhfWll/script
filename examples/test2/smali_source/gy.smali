.class public Lgy;
.super Lfv;


# instance fields
.field private a:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lfv;-><init>()V

    iput-object p1, p0, Lgy;->a:[B

    return-void
.end method


# virtual methods
.method final a()I
    .registers 3

    iget-object v0, p0, Lgy;->a:[B

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

    const/16 v0, 0x18

    iget-object v1, p0, Lgy;->a:[B

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

    instance-of v0, p1, Lgy;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lgy;->a:[B

    check-cast p1, Lgy;

    iget-object v1, p1, Lgy;->a:[B

    invoke-static {v0, v1}, Lat;->a([B[B)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lgy;->a:[B

    invoke-static {v0}, Lat;->a([B)I

    move-result v0

    return v0
.end method
