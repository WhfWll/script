.class final Lgo;
.super Ljava/io/InputStream;


# instance fields
.field private final a:Lga;

.field private a:Ljava/io/InputStream;

.field private a:Z


# direct methods
.method constructor <init>(Lga;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgo;->a:Z

    iput-object p1, p0, Lgo;->a:Lga;

    return-void
.end method


# virtual methods
.method public final read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v0, p0, Lgo;->a:Ljava/io/InputStream;

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lgo;->a:Z

    if-nez v0, :cond_b

    move v0, v1

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lgo;->a:Lga;

    invoke-virtual {v0}, Lga;->a()Lfg;

    move-result-object v0

    check-cast v0, Lfr;

    if-nez v0, :cond_17

    move v0, v1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    iput-boolean v2, p0, Lgo;->a:Z

    invoke-interface {v0}, Lfr;->a()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgo;->a:Ljava/io/InputStream;

    :cond_20
    :goto_20
    iget-object v0, p0, Lgo;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_a

    iget-object v0, p0, Lgo;->a:Lga;

    invoke-virtual {v0}, Lga;->a()Lfg;

    move-result-object v0

    check-cast v0, Lfr;

    if-nez v0, :cond_37

    const/4 v0, 0x0

    iput-object v0, p0, Lgo;->a:Ljava/io/InputStream;

    move v0, v1

    goto :goto_a

    :cond_37
    invoke-interface {v0}, Lfr;->a()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgo;->a:Ljava/io/InputStream;

    goto :goto_20
.end method

.method public final read([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lgo;->a:Ljava/io/InputStream;

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lgo;->a:Z

    if-nez v0, :cond_c

    move v0, v2

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lgo;->a:Lga;

    invoke-virtual {v0}, Lga;->a()Lfg;

    move-result-object v0

    check-cast v0, Lfr;

    if-nez v0, :cond_18

    move v0, v2

    goto :goto_b

    :cond_18
    iput-boolean v1, p0, Lgo;->a:Z

    invoke-interface {v0}, Lfr;->a()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgo;->a:Ljava/io/InputStream;

    :cond_20
    :goto_20
    iget-object v0, p0, Lgo;->a:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v0, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_31

    add-int/2addr v0, v1

    if-eq v0, p3, :cond_b

    :goto_2f
    move v1, v0

    goto :goto_20

    :cond_31
    iget-object v0, p0, Lgo;->a:Lga;

    invoke-virtual {v0}, Lga;->a()Lfg;

    move-result-object v0

    check-cast v0, Lfr;

    if-nez v0, :cond_44

    const/4 v0, 0x0

    iput-object v0, p0, Lgo;->a:Ljava/io/InputStream;

    if-gtz v1, :cond_42

    move v0, v2

    goto :goto_b

    :cond_42
    move v0, v1

    goto :goto_b

    :cond_44
    invoke-interface {v0}, Lfr;->a()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lgo;->a:Ljava/io/InputStream;

    move v0, v1

    goto :goto_2f
.end method
