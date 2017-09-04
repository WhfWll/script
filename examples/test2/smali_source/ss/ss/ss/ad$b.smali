.class final Lss/ss/ss/ad$b;
.super Ljava/lang/Object;

# interfaces
.implements Lss/ss/ss/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:LgK/f;

.field private final b:LgK/e;

.field private final c:LgK/f;

.field private final d:Z

.field private e:Z


# direct methods
.method constructor <init>(LgK/f;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    iput-boolean p2, p0, Lss/ss/ss/ad$b;->d:Z

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    sget-object v1, Lss/ss/ss/ad;->a:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    new-instance v1, LgK/e;

    invoke-direct {v1}, LgK/e;-><init>()V

    iput-object v1, p0, Lss/ss/ss/ad$b;->b:LgK/e;

    new-instance v1, LgK/i;

    iget-object v2, p0, Lss/ss/ss/ad$b;->b:LgK/e;

    invoke-direct {v1, v2, v0}, LgK/i;-><init>(LgK/v;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, LgK/n;->a(LgK/v;)LgK/f;

    move-result-object v0

    iput-object v0, p0, Lss/ss/ss/ad$b;->c:LgK/f;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/ad$b;->c:LgK/f;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_f
    if-ge v1, v2, :cond_41

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/r;

    iget-object v0, v0, Lss/ss/ss/r;->h:LgK/h;

    iget-object v3, p0, Lss/ss/ss/ad$b;->c:LgK/f;

    invoke-virtual {v0}, LgK/h;->f()I

    move-result v4

    invoke-interface {v3, v4}, LgK/f;->f(I)LgK/f;

    iget-object v3, p0, Lss/ss/ss/ad$b;->c:LgK/f;

    invoke-interface {v3, v0}, LgK/f;->b(LgK/h;)LgK/f;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/r;

    iget-object v0, v0, Lss/ss/ss/r;->i:LgK/h;

    iget-object v3, p0, Lss/ss/ss/ad$b;->c:LgK/f;

    invoke-virtual {v0}, LgK/h;->f()I

    move-result v4

    invoke-interface {v3, v4}, LgK/f;->f(I)LgK/f;

    iget-object v3, p0, Lss/ss/ss/ad$b;->c:LgK/f;

    invoke-interface {v3, v0}, LgK/f;->b(LgK/h;)LgK/f;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_41
    iget-object v0, p0, Lss/ss/ss/ad$b;->c:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method a(IILgK/e;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/ss/ad$b;->e:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    if-lez p4, :cond_4c

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, LgK/f;->a_(LgK/e;J)V

    :cond_4c
    return-void
.end method

.method public a(IILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized a(IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/ss/ad$b;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1d

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_36

    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    invoke-interface {v0, p1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    long-to-int v1, p2

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_55
    .catchall {:try_start_1d .. :try_end_55} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILss/ss/ss/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/ss/ad$b;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget v0, p2, Lss/ss/ss/a;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1b
    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    iget v1, p2, Lss/ss/ss/a;->t:I

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_3f
    .catchall {:try_start_10 .. :try_end_3f} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILss/ss/ss/a;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/ss/ad$b;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget v0, p2, Lss/ss/ss/a;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    const v1, -0x7ffcfff9

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    invoke-interface {v0, p1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    iget v1, p2, Lss/ss/ss/a;->u:I

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public a(Lss/ss/ss/ac;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized a(ZII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lss/ss/ss/ad$b;->e:Z

    if-eqz v2, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    :try_start_12
    iget-boolean v3, p0, Lss/ss/ss/ad$b;->d:Z

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_25

    move v2, v0

    :goto_19
    if-eq v3, v2, :cond_27

    :goto_1b
    if-eq p1, v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move v2, v1

    goto :goto_19

    :cond_27
    move v0, v1

    goto :goto_1b

    :cond_29
    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    const v1, -0x7ffcfffa

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    invoke-interface {v0, p2}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_41
    .catchall {:try_start_12 .. :try_end_41} :catchall_f

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZILgK/e;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_4
    :try_start_4
    invoke-virtual {p0, p2, v0, p3, p4}, Lss/ss/ss/ad$b;->a(IILgK/e;I)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ZZIILjava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v6, 0x7fffffff

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_5
    iget-boolean v1, p0, Lss/ss/ss/ad$b;->e:Z

    if-eqz v1, :cond_14

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_14
    :try_start_14
    invoke-direct {p0, p5}, Lss/ss/ss/ad$b;->a(Ljava/util/List;)V

    const-wide/16 v2, 0xa

    iget-object v1, p0, Lss/ss/ss/ad$b;->b:LgK/e;

    invoke-virtual {v1}, LgK/e;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    if-eqz p1, :cond_60

    const/4 v1, 0x1

    :goto_24
    if-eqz p2, :cond_27

    const/4 v0, 0x2

    :cond_27
    or-int/2addr v0, v1

    iget-object v1, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    const v3, -0x7ffcffff

    invoke-interface {v1, v3}, LgK/f;->f(I)LgK/f;

    iget-object v1, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    and-int v1, p3, v6

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    and-int v1, p4, v6

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LgK/f;->g(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    iget-object v1, p0, Lss/ss/ss/ad$b;->b:LgK/e;

    invoke-interface {v0, v1}, LgK/f;->a(LgK/w;)J

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_5e
    .catchall {:try_start_14 .. :try_end_5e} :catchall_11

    monitor-exit p0

    return-void

    :cond_60
    move v1, v0

    goto :goto_24
.end method

.method public declared-synchronized b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/ss/ad$b;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lss/ss/ss/ac;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v4, 0xffffff

    monitor-enter p0

    :try_start_4
    iget-boolean v0, p0, Lss/ss/ss/ad$b;->e:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    :try_start_13
    invoke-virtual {p1}, Lss/ss/ss/ac;->b()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, LgK/f;->f(I)LgK/f;

    iget-object v2, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    and-int/2addr v1, v4

    or-int/lit8 v1, v1, 0x0

    invoke-interface {v2, v1}, LgK/f;->f(I)LgK/f;

    iget-object v1, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    invoke-interface {v1, v0}, LgK/f;->f(I)LgK/f;

    const/4 v0, 0x0

    :goto_31
    const/16 v1, 0xa

    if-gt v0, v1, :cond_58

    invoke-virtual {p1, v0}, Lss/ss/ss/ac;->a(I)Z

    move-result v1

    if-nez v1, :cond_3e

    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3e
    invoke-virtual {p1, v0}, Lss/ss/ss/ac;->c(I)I

    move-result v1

    iget-object v2, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v3, v0, v4

    or-int/2addr v1, v3

    invoke-interface {v2, v1}, LgK/f;->f(I)LgK/f;

    iget-object v1, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    invoke-virtual {p1, v0}, Lss/ss/ss/ac;->b(I)I

    move-result v2

    invoke-interface {v1, v2}, LgK/f;->f(I)LgK/f;

    goto :goto_3b

    :cond_58
    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_5d
    .catchall {:try_start_13 .. :try_end_5d} :catchall_10

    monitor-exit p0

    return-void
.end method

.method public c()I
    .registers 2

    const/16 v0, 0x3fff

    return v0
.end method

.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lss/ss/ss/ad$b;->e:Z

    iget-object v0, p0, Lss/ss/ss/ad$b;->a:LgK/f;

    iget-object v1, p0, Lss/ss/ss/ad$b;->c:LgK/f;

    invoke-static {v0, v1}, Lss/ss/j;->a(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
