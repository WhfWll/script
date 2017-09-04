.class public final Lss/ss/ss/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ss/ss/p$c;,
        Lss/ss/ss/p$a;,
        Lss/ss/ss/p$b;
    }
.end annotation


# static fields
.field static final synthetic d:Z


# instance fields
.field a:J

.field b:J

.field final c:Lss/ss/ss/p$a;

.field private final e:I

.field private final f:Lss/ss/ss/d;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lss/ss/ss/p$b;

.field private final j:Lss/ss/ss/p$c;

.field private final k:Lss/ss/ss/p$c;

.field private l:Lss/ss/ss/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lss/ss/ss/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lss/ss/ss/p;->d:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(ILss/ss/ss/d;ZZLjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lss/ss/ss/d;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/high16 v2, 0x10000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lss/ss/ss/p;->a:J

    new-instance v0, Lss/ss/ss/p$c;

    invoke-direct {v0, p0}, Lss/ss/ss/p$c;-><init>(Lss/ss/ss/p;)V

    iput-object v0, p0, Lss/ss/ss/p;->j:Lss/ss/ss/p$c;

    new-instance v0, Lss/ss/ss/p$c;

    invoke-direct {v0, p0}, Lss/ss/ss/p$c;-><init>(Lss/ss/ss/p;)V

    iput-object v0, p0, Lss/ss/ss/p;->k:Lss/ss/ss/p$c;

    iput-object v4, p0, Lss/ss/ss/p;->l:Lss/ss/ss/a;

    if-nez p2, :cond_24

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    if-nez p5, :cond_2e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iput p1, p0, Lss/ss/ss/p;->e:I

    iput-object p2, p0, Lss/ss/ss/p;->f:Lss/ss/ss/d;

    iget-object v0, p2, Lss/ss/ss/d;->f:Lss/ss/ss/ac;

    invoke-virtual {v0, v2}, Lss/ss/ss/ac;->f(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lss/ss/ss/p;->b:J

    new-instance v0, Lss/ss/ss/p$b;

    iget-object v1, p2, Lss/ss/ss/d;->e:Lss/ss/ss/ac;

    invoke-virtual {v1, v2}, Lss/ss/ss/ac;->f(I)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3, v4}, Lss/ss/ss/p$b;-><init>(Lss/ss/ss/p;JLss/ss/ss/q;)V

    iput-object v0, p0, Lss/ss/ss/p;->i:Lss/ss/ss/p$b;

    new-instance v0, Lss/ss/ss/p$a;

    invoke-direct {v0, p0}, Lss/ss/ss/p$a;-><init>(Lss/ss/ss/p;)V

    iput-object v0, p0, Lss/ss/ss/p;->c:Lss/ss/ss/p$a;

    iget-object v0, p0, Lss/ss/ss/p;->i:Lss/ss/ss/p$b;

    invoke-static {v0, p4}, Lss/ss/ss/p$b;->a(Lss/ss/ss/p$b;Z)Z

    iget-object v0, p0, Lss/ss/ss/p;->c:Lss/ss/ss/p$a;

    invoke-static {v0, p3}, Lss/ss/ss/p$a;->a(Lss/ss/ss/p$a;Z)Z

    iput-object p5, p0, Lss/ss/ss/p;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lss/ss/ss/p;)Lss/ss/ss/d;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/p;->f:Lss/ss/ss/d;

    return-object v0
.end method

.method static synthetic b(Lss/ss/ss/p;)I
    .registers 2

    iget v0, p0, Lss/ss/ss/p;->e:I

    return v0
.end method

.method static synthetic c(Lss/ss/ss/p;)Lss/ss/ss/p$c;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/p;->j:Lss/ss/ss/p$c;

    return-object v0
.end method

.method static synthetic d(Lss/ss/ss/p;)Lss/ss/ss/a;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/p;->l:Lss/ss/ss/a;

    return-object v0
.end method

.method private d(Lss/ss/ss/a;)Z
    .registers 4

    const/4 v0, 0x0

    sget-boolean v1, Lss/ss/ss/p;->d:Z

    if-nez v1, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    monitor-enter p0

    :try_start_12
    iget-object v1, p0, Lss/ss/ss/p;->l:Lss/ss/ss/a;

    if-eqz v1, :cond_18

    monitor-exit p0

    :goto_17
    return v0

    :cond_18
    iget-object v1, p0, Lss/ss/ss/p;->i:Lss/ss/ss/p$b;

    invoke-static {v1}, Lss/ss/ss/p$b;->a(Lss/ss/ss/p$b;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lss/ss/ss/p;->c:Lss/ss/ss/p$a;

    invoke-static {v1}, Lss/ss/ss/p$a;->a(Lss/ss/ss/p$a;)Z

    move-result v1

    if-eqz v1, :cond_2d

    monitor-exit p0

    goto :goto_17

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    iput-object p1, p0, Lss/ss/ss/p;->l:Lss/ss/ss/a;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_2a

    iget-object v0, p0, Lss/ss/ss/p;->f:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/p;->e:I

    invoke-virtual {v0, v1}, Lss/ss/ss/d;->b(I)Lss/ss/ss/p;

    const/4 v0, 0x1

    goto :goto_17
.end method

.method static synthetic e(Lss/ss/ss/p;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/ss/p;->l()V

    return-void
.end method

.method static synthetic f(Lss/ss/ss/p;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/ss/p;->j()V

    return-void
.end method

.method static synthetic g(Lss/ss/ss/p;)Lss/ss/ss/p$c;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/p;->k:Lss/ss/ss/p$c;

    return-object v0
.end method

.method static synthetic h(Lss/ss/ss/p;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/ss/p;->k()V

    return-void
.end method

.method private j()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lss/ss/ss/p;->d:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    monitor-enter p0

    :try_start_11
    iget-object v0, p0, Lss/ss/ss/p;->i:Lss/ss/ss/p$b;

    invoke-static {v0}, Lss/ss/ss/p$b;->a(Lss/ss/ss/p$b;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lss/ss/ss/p;->i:Lss/ss/ss/p$b;

    invoke-static {v0}, Lss/ss/ss/p$b;->b(Lss/ss/ss/p$b;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lss/ss/ss/p;->c:Lss/ss/ss/p$a;

    invoke-static {v0}, Lss/ss/ss/p$a;->a(Lss/ss/ss/p$a;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lss/ss/ss/p;->c:Lss/ss/ss/p$a;

    invoke-static {v0}, Lss/ss/ss/p$a;->b(Lss/ss/ss/p$a;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_31
    const/4 v0, 0x1

    :goto_32
    invoke-virtual {p0}, Lss/ss/ss/p;->b()Z

    move-result v1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_41

    if-eqz v0, :cond_44

    sget-object v0, Lss/ss/ss/a;->l:Lss/ss/ss/a;

    invoke-virtual {p0, v0}, Lss/ss/ss/p;->a(Lss/ss/ss/a;)V

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    const/4 v0, 0x0

    goto :goto_32

    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0

    :cond_44
    if-nez v1, :cond_3e

    iget-object v0, p0, Lss/ss/ss/p;->f:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/p;->e:I

    invoke-virtual {v0, v1}, Lss/ss/ss/d;->b(I)Lss/ss/ss/p;

    goto :goto_3e
.end method

.method private k()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/p;->c:Lss/ss/ss/p$a;

    invoke-static {v0}, Lss/ss/ss/p$a;->b(Lss/ss/ss/p$a;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lss/ss/ss/p;->c:Lss/ss/ss/p$a;

    invoke-static {v0}, Lss/ss/ss/p$a;->a(Lss/ss/ss/p$a;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget-object v0, p0, Lss/ss/ss/p;->l:Lss/ss/ss/a;

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/ss/p;->l:Lss/ss/ss/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    return-void
.end method

.method private l()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lss/ss/ss/p;->e:I

    return v0
.end method

.method a(J)V
    .registers 6

    iget-wide v0, p0, Lss/ss/ss/p;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lss/ss/ss/p;->b:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method a(LgK/g;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lss/ss/ss/p;->d:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lss/ss/ss/p;->i:Lss/ss/ss/p$b;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lss/ss/ss/p$b;->a(LgK/g;J)V

    return-void
.end method

.method a(Ljava/util/List;Lss/ss/ss/s;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;",
            "Lss/ss/ss/s;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lss/ss/ss/p;->d:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_13
    iget-object v2, p0, Lss/ss/ss/p;->h:Ljava/util/List;

    if-nez v2, :cond_33

    invoke-virtual {p2}, Lss/ss/ss/s;->c()Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v1, Lss/ss/ss/a;->b:Lss/ss/ss/a;

    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_30

    if-eqz v1, :cond_4c

    invoke-virtual {p0, v1}, Lss/ss/ss/p;->b(Lss/ss/ss/a;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    :try_start_26
    iput-object p1, p0, Lss/ss/ss/p;->h:Ljava/util/List;

    invoke-virtual {p0}, Lss/ss/ss/p;->b()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1f

    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    throw v0

    :cond_33
    :try_start_33
    invoke-virtual {p2}, Lss/ss/ss/s;->d()Z

    move-result v2

    if-eqz v2, :cond_3c

    sget-object v1, Lss/ss/ss/a;->e:Lss/ss/ss/a;

    goto :goto_1f

    :cond_3c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lss/ss/ss/p;->h:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v2, p0, Lss/ss/ss/p;->h:Ljava/util/List;
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_30

    goto :goto_1f

    :cond_4c
    if-nez v0, :cond_25

    iget-object v0, p0, Lss/ss/ss/p;->f:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/p;->e:I

    invoke-virtual {v0, v1}, Lss/ss/ss/d;->b(I)Lss/ss/ss/p;

    goto :goto_25
.end method

.method public a(Lss/ss/ss/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lss/ss/ss/p;->d(Lss/ss/ss/a;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lss/ss/ss/p;->f:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/p;->e:I

    invoke-virtual {v0, v1, p1}, Lss/ss/ss/d;->b(ILss/ss/ss/a;)V

    goto :goto_6
.end method

.method public b(Lss/ss/ss/a;)V
    .registers 4

    invoke-direct {p0, p1}, Lss/ss/ss/p;->d(Lss/ss/ss/a;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lss/ss/ss/p;->f:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/p;->e:I

    invoke-virtual {v0, v1, p1}, Lss/ss/ss/d;->a(ILss/ss/ss/a;)V

    goto :goto_6
.end method

.method public declared-synchronized b()Z
    .registers 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lss/ss/ss/p;->l:Lss/ss/ss/a;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_2e

    if-eqz v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v1, p0, Lss/ss/ss/p;->i:Lss/ss/ss/p$b;

    invoke-static {v1}, Lss/ss/ss/p$b;->a(Lss/ss/ss/p$b;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lss/ss/ss/p;->i:Lss/ss/ss/p$b;

    invoke-static {v1}, Lss/ss/ss/p$b;->b(Lss/ss/ss/p$b;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_18
    iget-object v1, p0, Lss/ss/ss/p;->c:Lss/ss/ss/p$a;

    invoke-static {v1}, Lss/ss/ss/p$a;->a(Lss/ss/ss/p$a;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lss/ss/ss/p;->c:Lss/ss/ss/p$a;

    invoke-static {v1}, Lss/ss/ss/p$a;->b(Lss/ss/ss/p$a;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_28
    iget-object v1, p0, Lss/ss/ss/p;->h:Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2e

    if-nez v1, :cond_6

    :cond_2c
    const/4 v0, 0x1

    goto :goto_6

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Lss/ss/ss/a;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lss/ss/ss/p;->l:Lss/ss/ss/a;

    if-nez v0, :cond_a

    iput-object p1, p0, Lss/ss/ss/p;->l:Lss/ss/ss/a;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lss/ss/ss/p;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    move v0, v1

    :goto_9
    iget-object v3, p0, Lss/ss/ss/p;->f:Lss/ss/ss/d;

    iget-boolean v3, v3, Lss/ss/ss/d;->b:Z

    if-ne v3, v0, :cond_12

    :goto_f
    return v1

    :cond_10
    move v0, v2

    goto :goto_9

    :cond_12
    move v1, v2

    goto :goto_f
.end method

.method public declared-synchronized d()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lss/ss/ss/p;->j:Lss/ss/ss/p$c;

    invoke-virtual {v0}, Lss/ss/ss/p$c;->c()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19

    :goto_6
    :try_start_6
    iget-object v0, p0, Lss/ss/ss/p;->h:Ljava/util/List;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lss/ss/ss/p;->l:Lss/ss/ss/a;

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lss/ss/ss/p;->l()V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    goto :goto_6

    :catchall_12
    move-exception v0

    :try_start_13
    iget-object v1, p0, Lss/ss/ss/p;->j:Lss/ss/ss/p$c;

    invoke-virtual {v1}, Lss/ss/ss/p$c;->b()V

    throw v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lss/ss/ss/p;->j:Lss/ss/ss/p$c;

    invoke-virtual {v0}, Lss/ss/ss/p$c;->b()V

    iget-object v0, p0, Lss/ss/ss/p;->h:Ljava/util/List;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lss/ss/ss/p;->h:Ljava/util/List;
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_19

    monitor-exit p0

    return-object v0

    :cond_29
    :try_start_29
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/ss/p;->l:Lss/ss/ss/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_19
.end method

.method public e()LgK/x;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/p;->j:Lss/ss/ss/p$c;

    return-object v0
.end method

.method public f()LgK/x;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/p;->k:Lss/ss/ss/p$c;

    return-object v0
.end method

.method public g()LgK/w;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/p;->i:Lss/ss/ss/p$b;

    return-object v0
.end method

.method public h()LgK/v;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lss/ss/ss/p;->h:Ljava/util/List;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lss/ss/ss/p;->c()Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_13

    iget-object v0, p0, Lss/ss/ss/p;->c:Lss/ss/ss/p$a;

    return-object v0
.end method

.method i()V
    .registers 3

    sget-boolean v0, Lss/ss/ss/p;->d:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    monitor-enter p0

    :try_start_11
    iget-object v0, p0, Lss/ss/ss/p;->i:Lss/ss/ss/p$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lss/ss/ss/p$b;->a(Lss/ss/ss/p$b;Z)Z

    invoke-virtual {p0}, Lss/ss/ss/p;->b()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_29

    if-nez v0, :cond_28

    iget-object v0, p0, Lss/ss/ss/p;->f:Lss/ss/ss/d;

    iget v1, p0, Lss/ss/ss/p;->e:I

    invoke-virtual {v0, v1}, Lss/ss/ss/d;->b(I)Lss/ss/ss/p;

    :cond_28
    return-void

    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method
