.class final Lhy;
.super Lib;


# instance fields
.field private a:I

.field private a:Z

.field private b:I

.field private b:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lib;-><init>(Ljava/io/InputStream;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhy;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhy;->b:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lhy;->a:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lhy;->b:I

    iget v0, p0, Lhy;->b:I

    if-gez v0, :cond_1f

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1f
    invoke-direct {p0}, Lhy;->a()Z

    return-void
.end method

.method private a()Z
    .registers 2

    iget-boolean v0, p0, Lhy;->a:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lhy;->b:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lhy;->a:I

    if-nez v0, :cond_16

    iget v0, p0, Lhy;->b:I

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhy;->a:Z

    invoke-virtual {p0}, Lhy;->a()V

    :cond_16
    iget-boolean v0, p0, Lhy;->a:Z

    return v0
.end method


# virtual methods
.method final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lhy;->b:Z

    invoke-direct {p0}, Lhy;->a()Z

    return-void
.end method

.method public final read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lhy;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lhy;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_16

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_16
    iget v0, p0, Lhy;->a:I

    iget v2, p0, Lhy;->b:I

    iput v2, p0, Lhy;->a:I

    iput v1, p0, Lhy;->b:I

    goto :goto_7
.end method

.method public final read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lhy;->b:Z

    if-nez v0, :cond_7

    const/4 v0, 0x3

    if-ge p3, v0, :cond_c

    :cond_7
    invoke-super {p0, p1, p2, p3}, Lib;->read([BII)I

    move-result v0

    :goto_b
    return v0

    :cond_c
    iget-boolean v0, p0, Lhy;->a:Z

    if-eqz v0, :cond_12

    const/4 v0, -0x1

    goto :goto_b

    :cond_12
    iget-object v0, p0, Lhy;->a:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_24

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_24
    iget v1, p0, Lhy;->a:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Lhy;->b:I

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, Lhy;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lhy;->a:I

    iget-object v1, p0, Lhy;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lhy;->b:I

    iget v1, p0, Lhy;->b:I

    if-gez v1, :cond_4a

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_4a
    add-int/lit8 v0, v0, 0x2

    goto :goto_b
.end method
