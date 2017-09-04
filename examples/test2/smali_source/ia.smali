.class final Lia;
.super Lfw;


# instance fields
.field private a:[B


# direct methods
.method constructor <init>([B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lfw;-><init>()V

    iput-object p1, p0, Lia;->a:[B

    return-void
.end method

.method private a()V
    .registers 4

    new-instance v0, Lhz;

    iget-object v1, p0, Lia;->a:[B

    invoke-direct {v0, v1}, Lhz;-><init>([B)V

    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lia;->a:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lia;->a:[B

    return-void
.end method


# virtual methods
.method final a()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lia;->a:[B

    if-eqz v0, :cond_12

    iget-object v0, p0, Lia;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lid;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lia;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    :goto_11
    return v0

    :cond_12
    invoke-super {p0}, Lfw;->d()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->a()I

    move-result v0

    goto :goto_11
.end method

.method public final declared-synchronized a()Ljava/util/Enumeration;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lia;->a:[B

    if-nez v0, :cond_b

    invoke-super {p0}, Lfw;->a()Ljava/util/Enumeration;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_13

    move-result-object v0

    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Lhz;

    iget-object v1, p0, Lia;->a:[B

    invoke-direct {v0, v1}, Lhz;-><init>([B)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_9

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lfs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lia;->a:[B

    if-eqz v0, :cond_c

    const/16 v0, 0x30

    iget-object v1, p0, Lia;->a:[B

    invoke-virtual {p1, v0, v1}, Lfs;->a(I[B)V

    :goto_b
    return-void

    :cond_c
    invoke-super {p0}, Lfw;->d()Lfv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfv;->a(Lfs;)V

    goto :goto_b
.end method

.method public final declared-synchronized b()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lia;->a:[B

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lia;->a()V

    :cond_8
    invoke-super {p0}, Lfw;->b()I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result v0

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final c()Lfv;
    .registers 2

    iget-object v0, p0, Lia;->a:[B

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lia;->a()V

    :cond_7
    invoke-super {p0}, Lfw;->c()Lfv;

    move-result-object v0

    return-object v0
.end method

.method final d()Lfv;
    .registers 2

    iget-object v0, p0, Lia;->a:[B

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lia;->a()V

    :cond_7
    invoke-super {p0}, Lfw;->d()Lfv;

    move-result-object v0

    return-object v0
.end method
