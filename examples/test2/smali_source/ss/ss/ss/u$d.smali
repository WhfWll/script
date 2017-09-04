.class final Lss/ss/ss/u$d;
.super Ljava/lang/Object;

# interfaces
.implements Lss/ss/ss/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final a:LgK/f;

.field private final b:Z

.field private final c:LgK/e;

.field private final d:Lss/ss/ss/t$b;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(LgK/f;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/ss/u$d;->a:LgK/f;

    iput-boolean p2, p0, Lss/ss/ss/u$d;->b:Z

    new-instance v0, LgK/e;

    invoke-direct {v0}, LgK/e;-><init>()V

    iput-object v0, p0, Lss/ss/ss/u$d;->c:LgK/e;

    new-instance v0, Lss/ss/ss/t$b;

    iget-object v1, p0, Lss/ss/ss/u$d;->c:LgK/e;

    invoke-direct {v0, v1}, Lss/ss/ss/t$b;-><init>(LgK/e;)V

    iput-object v0, p0, Lss/ss/ss/u$d;->d:Lss/ss/ss/t$b;

    const/16 v0, 0x4000

    iput v0, p0, Lss/ss/ss/u$d;->e:I

    return-void
.end method

.method private b(IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    :goto_2
    cmp-long v0, p2, v6

    if-lez v0, :cond_25

    iget v0, p0, Lss/ss/ss/u$d;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v2, v1

    sub-long/2addr p2, v2

    const/16 v2, 0x9

    cmp-long v0, p2, v6

    if-nez v0, :cond_23

    const/4 v0, 0x4

    :goto_17
    invoke-virtual {p0, p1, v1, v2, v0}, Lss/ss/ss/u$d;->a(IIBB)V

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    iget-object v2, p0, Lss/ss/ss/u$d;->c:LgK/e;

    int-to-long v4, v1

    invoke-interface {v0, v2, v4, v5}, LgK/f;->a_(LgK/e;J)V

    goto :goto_2

    :cond_23
    const/4 v0, 0x0

    goto :goto_17

    :cond_25
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/ss/u$d;->f:Z

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
    iget-boolean v0, p0, Lss/ss/ss/u$d;->b:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_d

    if-nez v0, :cond_16

    :goto_14
    monitor-exit p0

    return-void

    :cond_16
    :try_start_16
    invoke-static {}, Lss/ss/ss/u;->b()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {}, Lss/ss/ss/u;->b()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lss/ss/ss/u;->a()LgK/h;

    move-result-object v4

    invoke-virtual {v4}, LgK/h;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3d
    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-static {}, Lss/ss/ss/u;->a()LgK/h;

    move-result-object v1

    invoke-virtual {v1}, LgK/h;->g()[B

    move-result-object v1

    invoke-interface {v0, v1}, LgK/f;->c([B)LgK/f;

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_4f
    .catchall {:try_start_16 .. :try_end_4f} :catchall_d

    goto :goto_14
.end method

.method a(IBLgK/e;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p4, v0, p2}, Lss/ss/ss/u$d;->a(IIBB)V

    if-lez p4, :cond_c

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, LgK/f;->a_(LgK/e;J)V

    :cond_c
    return-void
.end method

.method a(IIBB)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lss/ss/ss/u;->b()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lss/ss/ss/u;->b()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v3, p1, p2, p3, p4}, Lss/ss/ss/u$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_19
    iget v0, p0, Lss/ss/ss/u$d;->e:I

    if-le p2, v0, :cond_35

    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lss/ss/ss/u$d;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lss/ss/ss/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_35
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_49

    const-string v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lss/ss/ss/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_49
    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-static {v0, p2}, Lss/ss/ss/u;->a(LgK/f;I)V

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, LgK/f;->h(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, LgK/f;->h(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    return-void
.end method

.method public declared-synchronized a(IILjava/util/List;)V
    .registers 12
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

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/ss/u$d;->f:Z

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
    iget-object v0, p0, Lss/ss/ss/u$d;->d:Lss/ss/ss/t$b;

    invoke-virtual {v0, p3}, Lss/ss/ss/t$b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lss/ss/ss/u$d;->c:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v2

    iget v0, p0, Lss/ss/ss/u$d;->e:I

    add-int/lit8 v0, v0, -0x4

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v4, 0x5

    int-to-long v6, v1

    cmp-long v0, v2, v6

    if-nez v0, :cond_4f

    const/4 v0, 0x4

    :goto_2c
    add-int/lit8 v5, v1, 0x4

    invoke-virtual {p0, p1, v5, v4, v0}, Lss/ss/ss/u$d;->a(IIBB)V

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v0, v4}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    iget-object v4, p0, Lss/ss/ss/u$d;->c:LgK/e;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, LgK/f;->a_(LgK/e;J)V

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_4d

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p1, v0, v1}, Lss/ss/ss/u$d;->b(IJ)V
    :try_end_4d
    .catchall {:try_start_10 .. :try_end_4d} :catchall_d

    :cond_4d
    monitor-exit p0

    return-void

    :cond_4f
    const/4 v0, 0x0

    goto :goto_2c
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
    iget-boolean v0, p0, Lss/ss/ss/u$d;->f:Z

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

    if-lez v0, :cond_2e

    :cond_1d
    :try_start_1d
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lss/ss/ss/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_2e
    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lss/ss/ss/u$d;->a(IIBB)V

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    long-to-int v1, p2

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILss/ss/ss/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/ss/u$d;->f:Z

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
    iget v0, p2, Lss/ss/ss/a;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1b
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lss/ss/ss/u$d;->a(IIBB)V

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    iget v1, p2, Lss/ss/ss/a;->s:I

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILss/ss/ss/a;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/ss/u$d;->f:Z

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
    iget v0, p2, Lss/ss/ss/a;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lss/ss/ss/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1f
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lss/ss/ss/u$d;->a(IIBB)V

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v0, p1}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    iget v1, p2, Lss/ss/ss/a;->s:I

    invoke-interface {v0, v1}, LgK/f;->f(I)LgK/f;

    array-length v0, p3

    if-lez v0, :cond_3c

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v0, p3}, LgK/f;->c([B)LgK/f;

    :cond_3c
    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_41
    .catchall {:try_start_10 .. :try_end_41} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lss/ss/ss/ac;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/ss/u$d;->f:Z

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
    iget v0, p0, Lss/ss/ss/u$d;->e:I

    invoke-virtual {p1, v0}, Lss/ss/ss/ac;->e(I)I

    move-result v0

    iput v0, p0, Lss/ss/ss/u$d;->e:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lss/ss/ss/u$d;->a(IIBB)V

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lss/ss/ss/u$d;->f:Z

    if-eqz v1, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    const/16 v1, 0x8

    const/4 v2, 0x6

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    const/4 v3, 0x0

    :try_start_18
    invoke-virtual {p0, v3, v1, v2, v0}, Lss/ss/ss/u$d;->a(IIBB)V

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v0, p2}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v0, p3}, LgK/f;->f(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_e

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZILgK/e;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/ss/u$d;->f:Z

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
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    int-to-byte v0, v0

    :cond_15
    :try_start_15
    invoke-virtual {p0, p2, v0, p3, p4}, Lss/ss/ss/u$d;->a(IBLgK/e;I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_d

    monitor-exit p0

    return-void
.end method

.method a(ZILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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

    iget-boolean v0, p0, Lss/ss/ss/u$d;->f:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lss/ss/ss/u$d;->d:Lss/ss/ss/t$b;

    invoke-virtual {v0, p3}, Lss/ss/ss/t$b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lss/ss/ss/u$d;->c:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v2

    iget v0, p0, Lss/ss/ss/u$d;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v4, 0x1

    int-to-long v6, v1

    cmp-long v0, v2, v6

    if-nez v0, :cond_42

    const/4 v0, 0x4

    :goto_26
    if-eqz p1, :cond_2b

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_2b
    invoke-virtual {p0, p2, v1, v4, v0}, Lss/ss/ss/u$d;->a(IIBB)V

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    iget-object v4, p0, Lss/ss/ss/u$d;->c:LgK/e;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, LgK/f;->a_(LgK/e;J)V

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_41

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p2, v0, v1}, Lss/ss/ss/u$d;->b(IJ)V

    :cond_41
    return-void

    :cond_42
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public declared-synchronized a(ZZIILjava/util/List;)V
    .registers 8
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

    monitor-enter p0

    if-eqz p2, :cond_c

    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c
    :try_start_c
    iget-boolean v0, p0, Lss/ss/ss/u$d;->f:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {p0, p1, p3, p5}, Lss/ss/ss/u$d;->a(ZILjava/util/List;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_9

    monitor-exit p0

    return-void
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
    iget-boolean v0, p0, Lss/ss/ss/u$d;->f:Z

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
    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lss/ss/ss/ac;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lss/ss/ss/u$d;->f:Z

    if-eqz v0, :cond_12

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
    invoke-virtual {p1}, Lss/ss/ss/ac;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v0, v3, v4}, Lss/ss/ss/u$d;->a(IIBB)V

    :goto_1e
    const/16 v0, 0xa

    if-ge v2, v0, :cond_42

    invoke-virtual {p1, v2}, Lss/ss/ss/ac;->a(I)Z

    move-result v0

    if-nez v0, :cond_2b

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2b
    if-ne v2, v1, :cond_3d

    const/4 v0, 0x3

    :goto_2e
    iget-object v3, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v3, v0}, LgK/f;->g(I)LgK/f;

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-virtual {p1, v2}, Lss/ss/ss/ac;->b(I)I

    move-result v3

    invoke-interface {v0, v3}, LgK/f;->f(I)LgK/f;

    goto :goto_28

    :cond_3d
    const/4 v0, 0x7

    if-ne v2, v0, :cond_49

    move v0, v1

    goto :goto_2e

    :cond_42
    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_f

    monitor-exit p0

    return-void

    :cond_49
    move v0, v2

    goto :goto_2e
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lss/ss/ss/u$d;->e:I

    return v0
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lss/ss/ss/u$d;->f:Z

    iget-object v0, p0, Lss/ss/ss/u$d;->a:LgK/f;

    invoke-interface {v0}, LgK/f;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
