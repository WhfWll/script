.class public LgK/a;
.super LgK/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LgK/a$a;
    }
.end annotation


# static fields
.field private static a:LgK/a;


# instance fields
.field private c:Z

.field private d:LgK/a;

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LgK/x;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(LgK/a;JZ)V
    .registers 13

    const-wide/16 v4, 0x0

    const-class v1, LgK/a;

    monitor-enter v1

    :try_start_5
    sget-object v0, LgK/a;->a:LgK/a;

    if-nez v0, :cond_18

    new-instance v0, LgK/a;

    invoke-direct {v0}, LgK/a;-><init>()V

    sput-object v0, LgK/a;->a:LgK/a;

    new-instance v0, LgK/a$a;

    invoke-direct {v0}, LgK/a$a;-><init>()V

    invoke-virtual {v0}, LgK/a$a;->start()V

    :cond_18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    cmp-long v0, p1, v4

    if-eqz v0, :cond_53

    if-eqz p3, :cond_53

    invoke-virtual {p0}, LgK/a;->d()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, LgK/a;->e:J

    :goto_2e
    invoke-direct {p0, v2, v3}, LgK/a;->b(J)J

    move-result-wide v4

    sget-object v0, LgK/a;->a:LgK/a;

    :goto_34
    iget-object v6, v0, LgK/a;->d:LgK/a;

    if-eqz v6, :cond_42

    iget-object v6, v0, LgK/a;->d:LgK/a;

    invoke-direct {v6, v2, v3}, LgK/a;->b(J)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_6e

    :cond_42
    iget-object v2, v0, LgK/a;->d:LgK/a;

    iput-object v2, p0, LgK/a;->d:LgK/a;

    iput-object p0, v0, LgK/a;->d:LgK/a;

    sget-object v2, LgK/a;->a:LgK/a;

    if-ne v0, v2, :cond_51

    const-class v0, LgK/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_5c

    :cond_51
    monitor-exit v1

    return-void

    :cond_53
    cmp-long v0, p1, v4

    if-eqz v0, :cond_5f

    add-long v4, v2, p1

    :try_start_59
    iput-wide v4, p0, LgK/a;->e:J
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5c

    goto :goto_2e

    :catchall_5c
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5f
    if-eqz p3, :cond_68

    :try_start_61
    invoke-virtual {p0}, LgK/a;->d()J

    move-result-wide v4

    iput-wide v4, p0, LgK/a;->e:J

    goto :goto_2e

    :cond_68
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6e
    iget-object v0, v0, LgK/a;->d:LgK/a;
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_5c

    goto :goto_34
.end method

.method private static declared-synchronized a(LgK/a;)Z
    .registers 4

    const-class v1, LgK/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, LgK/a;->a:LgK/a;

    :goto_5
    if-eqz v0, :cond_18

    iget-object v2, v0, LgK/a;->d:LgK/a;

    if-ne v2, p0, :cond_15

    iget-object v2, p0, LgK/a;->d:LgK/a;

    iput-object v2, v0, LgK/a;->d:LgK/a;

    const/4 v0, 0x0

    iput-object v0, p0, LgK/a;->d:LgK/a;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    const/4 v0, 0x0

    :goto_13
    monitor-exit v1

    return v0

    :cond_15
    :try_start_15
    iget-object v0, v0, LgK/a;->d:LgK/a;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1a

    goto :goto_5

    :cond_18
    const/4 v0, 0x1

    goto :goto_13

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(J)J
    .registers 6

    iget-wide v0, p0, LgK/a;->e:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method static declared-synchronized e()LgK/a;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/32 v8, 0xf4240

    const/4 v0, 0x0

    const-class v2, LgK/a;

    monitor-enter v2

    :try_start_7
    sget-object v1, LgK/a;->a:LgK/a;

    iget-object v1, v1, LgK/a;->d:LgK/a;

    if-nez v1, :cond_14

    const-class v1, LgK/a;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_30

    :goto_12
    monitor-exit v2

    return-object v0

    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, LgK/a;->b(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_33

    const-wide/32 v6, 0xf4240

    div-long v6, v4, v6

    mul-long/2addr v8, v6

    sub-long/2addr v4, v8

    const-class v1, LgK/a;

    long-to-int v3, v4

    invoke-virtual {v1, v6, v7, v3}, Ljava/lang/Object;->wait(JI)V
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_30

    goto :goto_12

    :catchall_30
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_33
    :try_start_33
    sget-object v0, LgK/a;->a:LgK/a;

    iget-object v3, v1, LgK/a;->d:LgK/a;

    iput-object v3, v0, LgK/a;->d:LgK/a;

    const/4 v0, 0x0

    iput-object v0, v1, LgK/a;->d:LgK/a;
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_30

    move-object v0, v1

    goto :goto_12
.end method


# virtual methods
.method public final a(LgK/v;)LgK/v;
    .registers 3

    new-instance v0, LgK/b;

    invoke-direct {v0, p0, p1}, LgK/b;-><init>(LgK/a;LgK/v;)V

    return-object v0
.end method

.method public final a(LgK/w;)LgK/w;
    .registers 3

    new-instance v0, LgK/c;

    invoke-direct {v0, p0, p1}, LgK/c;-><init>(LgK/a;LgK/w;)V

    return-object v0
.end method

.method protected a(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method protected a()V
    .registers 1

    return-void
.end method

.method final a(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LgK/a;->a_()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LgK/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_e
    return-void
.end method

.method public final a_()Z
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, LgK/a;->c:Z

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iput-boolean v0, p0, LgK/a;->c:Z

    invoke-static {p0}, LgK/a;->a(LgK/a;)Z

    move-result v0

    goto :goto_5
.end method

.method final b(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LgK/a;->a_()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0, p1}, LgK/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_6
.end method

.method public final c()V
    .registers 7

    iget-boolean v0, p0, LgK/a;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, LgK/a;->b_()J

    move-result-wide v0

    invoke-virtual {p0}, LgK/a;->c_()Z

    move-result v2

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1d

    if-nez v2, :cond_1d

    :goto_1c
    return-void

    :cond_1d
    const/4 v3, 0x1

    iput-boolean v3, p0, LgK/a;->c:Z

    invoke-static {p0, v0, v1, v2}, LgK/a;->a(LgK/a;JZ)V

    goto :goto_1c
.end method
