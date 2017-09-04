.class final Lss/ss/ss/p$b;
.super Ljava/lang/Object;

# interfaces
.implements LgK/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lss/ss/ss/p;

.field private final c:LgK/e;

.field private final d:LgK/e;

.field private final e:J

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lss/ss/ss/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lss/ss/ss/p$b;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lss/ss/ss/p;J)V
    .registers 6

    iput-object p1, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LgK/e;

    invoke-direct {v0}, LgK/e;-><init>()V

    iput-object v0, p0, Lss/ss/ss/p$b;->c:LgK/e;

    new-instance v0, LgK/e;

    invoke-direct {v0}, LgK/e;-><init>()V

    iput-object v0, p0, Lss/ss/ss/p$b;->d:LgK/e;

    iput-wide p2, p0, Lss/ss/ss/p$b;->e:J

    return-void
.end method

.method synthetic constructor <init>(Lss/ss/ss/p;JLss/ss/ss/q;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lss/ss/ss/p$b;-><init>(Lss/ss/ss/p;J)V

    return-void
.end method

.method static synthetic a(Lss/ss/ss/p$b;)Z
    .registers 2

    iget-boolean v0, p0, Lss/ss/ss/p$b;->g:Z

    return v0
.end method

.method static synthetic a(Lss/ss/ss/p$b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lss/ss/ss/p$b;->g:Z

    return p1
.end method

.method private b()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->c(Lss/ss/ss/p;)Lss/ss/ss/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lss/ss/ss/p$c;->c()V

    :goto_9
    :try_start_9
    iget-object v0, p0, Lss/ss/ss/p$b;->d:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lss/ss/ss/p$b;->g:Z

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lss/ss/ss/p$b;->f:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->d(Lss/ss/ss/p;)Lss/ss/ss/a;

    move-result-object v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->e(Lss/ss/ss/p;)V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_2b

    goto :goto_9

    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v1}, Lss/ss/ss/p;->c(Lss/ss/ss/p;)Lss/ss/ss/p$c;

    move-result-object v1

    invoke-virtual {v1}, Lss/ss/ss/p$c;->b()V

    throw v0

    :cond_36
    iget-object v0, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->c(Lss/ss/ss/p;)Lss/ss/ss/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lss/ss/ss/p$c;->b()V

    return-void
.end method

.method static synthetic b(Lss/ss/ss/p$b;)Z
    .registers 2

    iget-boolean v0, p0, Lss/ss/ss/p$b;->f:Z

    return v0
.end method

.method private c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lss/ss/ss/p$b;->f:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->d(Lss/ss/ss/p;)Lss/ss/ss/a;

    move-result-object v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v2}, Lss/ss/ss/p;->d(Lss/ss/ss/p;)Lss/ss/ss/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    return-void
.end method


# virtual methods
.method public a(LgK/e;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v2, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    monitor-enter v2

    :try_start_22
    invoke-direct {p0}, Lss/ss/ss/p$b;->b()V

    invoke-direct {p0}, Lss/ss/ss/p$b;->c()V

    iget-object v0, p0, Lss/ss/ss/p$b;->d:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_36

    const-wide/16 v0, -0x1

    monitor-exit v2

    :goto_35
    return-wide v0

    :cond_36
    iget-object v0, p0, Lss/ss/ss/p$b;->d:LgK/e;

    iget-object v1, p0, Lss/ss/ss/p$b;->d:LgK/e;

    invoke-virtual {v1}, LgK/e;->b()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, LgK/e;->a(LgK/e;J)J

    move-result-wide v0

    iget-object v3, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    iget-wide v4, v3, Lss/ss/ss/p;->a:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lss/ss/ss/p;->a:J

    iget-object v3, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    iget-wide v4, v3, Lss/ss/ss/p;->a:J

    iget-object v3, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v3}, Lss/ss/ss/p;->a(Lss/ss/ss/p;)Lss/ss/ss/d;

    move-result-object v3

    iget-object v3, v3, Lss/ss/ss/d;->e:Lss/ss/ss/ac;

    const/high16 v6, 0x10000

    invoke-virtual {v3, v6}, Lss/ss/ss/ac;->f(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_7f

    iget-object v3, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v3}, Lss/ss/ss/p;->a(Lss/ss/ss/p;)Lss/ss/ss/d;

    move-result-object v3

    iget-object v4, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v4}, Lss/ss/ss/p;->b(Lss/ss/ss/p;)I

    move-result v4

    iget-object v5, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    iget-wide v6, v5, Lss/ss/ss/p;->a:J

    invoke-virtual {v3, v4, v6, v7}, Lss/ss/ss/d;->a(IJ)V

    iget-object v3, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lss/ss/ss/p;->a:J

    :cond_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_22 .. :try_end_80} :catchall_d1

    iget-object v2, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v2}, Lss/ss/ss/p;->a(Lss/ss/ss/p;)Lss/ss/ss/d;

    move-result-object v2

    monitor-enter v2

    :try_start_87
    iget-object v3, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v3}, Lss/ss/ss/p;->a(Lss/ss/ss/p;)Lss/ss/ss/d;

    move-result-object v3

    iget-wide v4, v3, Lss/ss/ss/d;->c:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lss/ss/ss/d;->c:J

    iget-object v3, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v3}, Lss/ss/ss/p;->a(Lss/ss/ss/p;)Lss/ss/ss/d;

    move-result-object v3

    iget-wide v4, v3, Lss/ss/ss/d;->c:J

    iget-object v3, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v3}, Lss/ss/ss/p;->a(Lss/ss/ss/p;)Lss/ss/ss/d;

    move-result-object v3

    iget-object v3, v3, Lss/ss/ss/d;->e:Lss/ss/ss/ac;

    const/high16 v6, 0x10000

    invoke-virtual {v3, v6}, Lss/ss/ss/ac;->f(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_cb

    iget-object v3, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v3}, Lss/ss/ss/p;->a(Lss/ss/ss/p;)Lss/ss/ss/d;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v5}, Lss/ss/ss/p;->a(Lss/ss/ss/p;)Lss/ss/ss/d;

    move-result-object v5

    iget-wide v6, v5, Lss/ss/ss/d;->c:J

    invoke-virtual {v3, v4, v6, v7}, Lss/ss/ss/d;->a(IJ)V

    iget-object v3, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v3}, Lss/ss/ss/p;->a(Lss/ss/ss/p;)Lss/ss/ss/d;

    move-result-object v3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lss/ss/ss/d;->c:J

    :cond_cb
    monitor-exit v2

    goto/16 :goto_35

    :catchall_ce
    move-exception v0

    monitor-exit v2
    :try_end_d0
    .catchall {:try_start_87 .. :try_end_d0} :catchall_ce

    throw v0

    :catchall_d1
    move-exception v0

    :try_start_d2
    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v0
.end method

.method public a()LgK/x;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->c(Lss/ss/ss/p;)Lss/ss/ss/p$c;

    move-result-object v0

    return-object v0
.end method

.method a(LgK/g;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lss/ss/ss/p$b;->a:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_16
    sub-long/2addr p2, v4

    iget-object v3, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    monitor-enter v3

    :try_start_1a
    iget-object v0, p0, Lss/ss/ss/p$b;->d:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-nez v0, :cond_76

    move v0, v1

    :goto_25
    iget-object v4, p0, Lss/ss/ss/p$b;->d:LgK/e;

    iget-object v5, p0, Lss/ss/ss/p$b;->c:LgK/e;

    invoke-virtual {v4, v5}, LgK/e;->a(LgK/w;)J

    if-eqz v0, :cond_33

    iget-object v0, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_78

    :cond_34
    cmp-long v0, p2, v10

    if-lez v0, :cond_58

    iget-object v3, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    monitor-enter v3

    :try_start_3b
    iget-boolean v4, p0, Lss/ss/ss/p$b;->g:Z

    iget-object v0, p0, Lss/ss/ss/p$b;->d:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v6

    add-long/2addr v6, p2

    iget-wide v8, p0, Lss/ss/ss/p$b;->e:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_59

    move v0, v1

    :goto_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_5b

    if-eqz v0, :cond_5e

    invoke-interface {p1, p2, p3}, LgK/g;->g(J)V

    iget-object v0, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    sget-object v1, Lss/ss/ss/a;->h:Lss/ss/ss/a;

    invoke-virtual {v0, v1}, Lss/ss/ss/p;->b(Lss/ss/ss/a;)V

    :cond_58
    :goto_58
    return-void

    :cond_59
    move v0, v2

    goto :goto_4b

    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    :cond_5e
    if-eqz v4, :cond_64

    invoke-interface {p1, p2, p3}, LgK/g;->g(J)V

    goto :goto_58

    :cond_64
    iget-object v0, p0, Lss/ss/ss/p$b;->c:LgK/e;

    invoke-interface {p1, v0, p2, p3}, LgK/g;->a(LgK/e;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_16

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_76
    move v0, v2

    goto :goto_25

    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lss/ss/ss/p$b;->f:Z

    iget-object v0, p0, Lss/ss/ss/p$b;->d:LgK/e;

    invoke-virtual {v0}, LgK/e;->r()V

    iget-object v0, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    iget-object v0, p0, Lss/ss/ss/p$b;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->f(Lss/ss/ss/p;)V

    return-void

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
