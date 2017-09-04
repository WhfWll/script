.class public final Lss/ss/ss/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ss/ss/d$b;,
        Lss/ss/ss/d$c;,
        Lss/ss/ss/d$a;
    }
.end annotation


# static fields
.field static final synthetic k:Z

.field private static final l:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Lss/ae;

.field final b:Z

.field c:J

.field d:J

.field e:Lss/ss/ss/ac;

.field final f:Lss/ss/ss/ac;

.field final g:Lss/ss/ss/ae;

.field final h:Ljava/net/Socket;

.field final i:Lss/ss/ss/c;

.field final j:Lss/ss/ss/d$c;

.field private final m:Lss/ss/ss/d$b;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lss/ss/ss/p;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Z

.field private s:J

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lss/ss/ss/z;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lss/ss/ss/aa;

.field private w:I

.field private x:Z

.field private final y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-class v0, Lss/ss/ss/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v8

    :goto_b
    sput-boolean v0, Lss/ss/ss/d;->k:Z

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp FramedConnection"

    invoke-static {v0, v8}, Lss/ss/j;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lss/ss/ss/d;->l:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_27
    move v0, v2

    goto :goto_b
.end method

.method private constructor <init>(Lss/ss/ss/d$a;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lss/ss/ss/d;->n:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lss/ss/ss/d;->s:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lss/ss/ss/d;->c:J

    new-instance v0, Lss/ss/ss/ac;

    invoke-direct {v0}, Lss/ss/ss/ac;-><init>()V

    iput-object v0, p0, Lss/ss/ss/d;->e:Lss/ss/ss/ac;

    new-instance v0, Lss/ss/ss/ac;

    invoke-direct {v0}, Lss/ss/ss/ac;-><init>()V

    iput-object v0, p0, Lss/ss/ss/d;->f:Lss/ss/ss/ac;

    iput-boolean v2, p0, Lss/ss/ss/d;->x:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lss/ss/ss/d;->y:Ljava/util/Set;

    invoke-static {p1}, Lss/ss/ss/d$a;->a(Lss/ss/ss/d$a;)Lss/ae;

    move-result-object v0

    iput-object v0, p0, Lss/ss/ss/d;->a:Lss/ae;

    invoke-static {p1}, Lss/ss/ss/d$a;->b(Lss/ss/ss/d$a;)Lss/ss/ss/aa;

    move-result-object v0

    iput-object v0, p0, Lss/ss/ss/d;->v:Lss/ss/ss/aa;

    invoke-static {p1}, Lss/ss/ss/d$a;->c(Lss/ss/ss/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lss/ss/ss/d;->b:Z

    invoke-static {p1}, Lss/ss/ss/d$a;->d(Lss/ss/ss/d$a;)Lss/ss/ss/d$b;

    move-result-object v0

    iput-object v0, p0, Lss/ss/ss/d;->m:Lss/ss/ss/d$b;

    invoke-static {p1}, Lss/ss/ss/d$a;->c(Lss/ss/ss/d$a;)Z

    move-result v0

    if-eqz v0, :cond_f9

    move v0, v3

    :goto_4f
    iput v0, p0, Lss/ss/ss/d;->q:I

    invoke-static {p1}, Lss/ss/ss/d$a;->c(Lss/ss/ss/d$a;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lss/ss/ss/d;->a:Lss/ae;

    sget-object v4, Lss/ae;->d:Lss/ae;

    if-ne v0, v4, :cond_63

    iget v0, p0, Lss/ss/ss/d;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lss/ss/ss/d;->q:I

    :cond_63
    invoke-static {p1}, Lss/ss/ss/d$a;->c(Lss/ss/ss/d$a;)Z

    move-result v0

    if-eqz v0, :cond_6a

    move v1, v3

    :cond_6a
    iput v1, p0, Lss/ss/ss/d;->w:I

    invoke-static {p1}, Lss/ss/ss/d$a;->c(Lss/ss/ss/d$a;)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lss/ss/ss/d;->e:Lss/ss/ss/ac;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v2, v1}, Lss/ss/ss/ac;->a(III)Lss/ss/ss/ac;

    :cond_79
    invoke-static {p1}, Lss/ss/ss/d$a;->e(Lss/ss/ss/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/ss/ss/d;->o:Ljava/lang/String;

    iget-object v0, p0, Lss/ss/ss/d;->a:Lss/ae;

    sget-object v1, Lss/ae;->d:Lss/ae;

    if-ne v0, v1, :cond_fc

    new-instance v0, Lss/ss/ss/u;

    invoke-direct {v0}, Lss/ss/ss/u;-><init>()V

    iput-object v0, p0, Lss/ss/ss/d;->g:Lss/ss/ss/ae;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lss/ss/ss/d;->o:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lss/ss/j;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lss/ss/ss/d;->t:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lss/ss/ss/d;->f:Lss/ss/ss/ac;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lss/ss/ss/ac;->a(III)Lss/ss/ss/ac;

    iget-object v0, p0, Lss/ss/ss/d;->f:Lss/ss/ss/ac;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lss/ss/ss/ac;->a(III)Lss/ss/ss/ac;

    :goto_bc
    iget-object v0, p0, Lss/ss/ss/d;->f:Lss/ss/ss/ac;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lss/ss/ss/ac;->f(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lss/ss/ss/d;->d:J

    invoke-static {p1}, Lss/ss/ss/d$a;->f(Lss/ss/ss/d$a;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lss/ss/ss/d;->h:Ljava/net/Socket;

    iget-object v0, p0, Lss/ss/ss/d;->g:Lss/ss/ss/ae;

    invoke-static {p1}, Lss/ss/ss/d$a;->g(Lss/ss/ss/d$a;)LgK/f;

    move-result-object v1

    iget-boolean v2, p0, Lss/ss/ss/d;->b:Z

    invoke-interface {v0, v1, v2}, Lss/ss/ss/ae;->a(LgK/f;Z)Lss/ss/ss/c;

    move-result-object v0

    iput-object v0, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    new-instance v0, Lss/ss/ss/d$c;

    iget-object v1, p0, Lss/ss/ss/d;->g:Lss/ss/ss/ae;

    invoke-static {p1}, Lss/ss/ss/d$a;->h(Lss/ss/ss/d$a;)LgK/g;

    move-result-object v2

    iget-boolean v3, p0, Lss/ss/ss/d;->b:Z

    invoke-interface {v1, v2, v3}, Lss/ss/ss/ae;->a(LgK/g;Z)Lss/ss/ss/b;

    move-result-object v1

    invoke-direct {v0, p0, v1, v11}, Lss/ss/ss/d$c;-><init>(Lss/ss/ss/d;Lss/ss/ss/b;Lss/ss/ss/e;)V

    iput-object v0, p0, Lss/ss/ss/d;->j:Lss/ss/ss/d$c;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lss/ss/ss/d;->j:Lss/ss/ss/d$c;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_f9
    move v0, v1

    goto/16 :goto_4f

    :cond_fc
    iget-object v0, p0, Lss/ss/ss/d;->a:Lss/ae;

    sget-object v1, Lss/ae;->c:Lss/ae;

    if-ne v0, v1, :cond_10c

    new-instance v0, Lss/ss/ss/ad;

    invoke-direct {v0}, Lss/ss/ss/ad;-><init>()V

    iput-object v0, p0, Lss/ss/ss/d;->g:Lss/ss/ss/ae;

    iput-object v11, p0, Lss/ss/ss/d;->t:Ljava/util/concurrent/ExecutorService;

    goto :goto_bc

    :cond_10c
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lss/ss/ss/d;->a:Lss/ae;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(Lss/ss/ss/d$a;Lss/ss/ss/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lss/ss/ss/d;-><init>(Lss/ss/ss/d$a;)V

    return-void
.end method

.method static synthetic a(Lss/ss/ss/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/d;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(ILjava/util/List;ZZ)Lss/ss/ss/p;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;ZZ)",
            "Lss/ss/ss/p;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_1d

    move v3, v4

    :goto_5
    if-nez p4, :cond_1f

    :goto_7
    iget-object v8, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    monitor-enter v8

    :try_start_a
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_1a

    :try_start_b
    iget-boolean v0, p0, Lss/ss/ss/d;->r:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    :try_start_19
    throw v0

    :catchall_1a
    move-exception v0

    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    move v3, v0

    goto :goto_5

    :cond_1f
    move v4, v0

    goto :goto_7

    :cond_21
    :try_start_21
    iget v1, p0, Lss/ss/ss/d;->q:I

    iget v0, p0, Lss/ss/ss/d;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lss/ss/ss/d;->q:I

    new-instance v0, Lss/ss/ss/p;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lss/ss/ss/p;-><init>(ILss/ss/ss/d;ZZLjava/util/List;)V

    invoke-virtual {v0}, Lss/ss/ss/p;->b()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lss/ss/ss/d;->n:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lss/ss/ss/d;->a(Z)V

    :cond_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_21 .. :try_end_44} :catchall_17

    if-nez p1, :cond_57

    :try_start_46
    iget-object v2, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    move v5, v1

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lss/ss/ss/c;->a(ZZIILjava/util/List;)V

    :goto_4e
    monitor-exit v8
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_1a

    if-nez p3, :cond_56

    iget-object v1, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    invoke-interface {v1}, Lss/ss/ss/c;->b()V

    :cond_56
    return-object v0

    :cond_57
    :try_start_57
    iget-boolean v2, p0, Lss/ss/ss/d;->b:Z

    if-eqz v2, :cond_63

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    iget-object v2, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    invoke-interface {v2, p1, v1, p2}, Lss/ss/ss/c;->a(IILjava/util/List;)V
    :try_end_68
    .catchall {:try_start_57 .. :try_end_68} :catchall_1a

    goto :goto_4e
.end method

.method private a(ILgK/g;IZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, LgK/e;

    invoke-direct {v5}, LgK/e;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, LgK/g;->a(J)V

    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, LgK/g;->a(LgK/e;J)J

    invoke-virtual {v5}, LgK/e;->b()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_37

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, LgK/e;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-object v8, p0, Lss/ss/ss/d;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lss/ss/ss/j;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lss/ss/ss/d;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lss/ss/ss/j;-><init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ILgK/e;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lss/ss/ss/d;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lss/ss/ss/a;->b:Lss/ss/ss/a;

    invoke-virtual {p0, p1, v0}, Lss/ss/ss/d;->a(ILss/ss/ss/a;)V

    monitor-exit p0

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lss/ss/ss/d;->y:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3d

    iget-object v6, p0, Lss/ss/ss/d;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lss/ss/ss/h;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lss/ss/ss/d;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lss/ss/ss/h;-><init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method private a(ILjava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;Z)V"
        }
    .end annotation

    iget-object v7, p0, Lss/ss/ss/d;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lss/ss/ss/i;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lss/ss/ss/d;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lss/ss/ss/i;-><init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lss/ss/ss/a;Lss/ss/ss/a;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lss/ss/ss/d;->k:Z

    if-nez v0, :cond_12

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    :try_start_12
    invoke-virtual {p0, p1}, Lss/ss/ss/d;->a(Lss/ss/ss/a;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_6a

    move-object v1, v2

    :goto_16
    monitor-enter p0

    :try_start_17
    iget-object v0, p0, Lss/ss/ss/d;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9c

    iget-object v0, p0, Lss/ss/ss/d;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lss/ss/ss/d;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lss/ss/ss/p;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lss/ss/ss/p;

    iget-object v4, p0, Lss/ss/ss/d;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lss/ss/ss/d;->a(Z)V

    move-object v5, v0

    :goto_3d
    iget-object v0, p0, Lss/ss/ss/d;->u:Ljava/util/Map;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lss/ss/ss/d;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lss/ss/ss/d;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lss/ss/ss/z;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lss/ss/ss/z;

    const/4 v2, 0x0

    iput-object v2, p0, Lss/ss/ss/d;->u:Ljava/util/Map;

    move-object v4, v0

    :goto_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_17 .. :try_end_5a} :catchall_6d

    if-eqz v5, :cond_76

    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_5f
    if-ge v2, v6, :cond_75

    aget-object v1, v5, v2

    :try_start_63
    invoke-virtual {v1, p2}, Lss/ss/ss/p;->a(Lss/ss/ss/a;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_70

    :cond_66
    :goto_66
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5f

    :catch_6a
    move-exception v0

    move-object v1, v0

    goto :goto_16

    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v0

    :catch_70
    move-exception v1

    if-eqz v0, :cond_66

    move-object v0, v1

    goto :goto_66

    :cond_75
    move-object v1, v0

    :cond_76
    if-eqz v4, :cond_84

    array-length v2, v4

    move v0, v3

    :goto_7a
    if-ge v0, v2, :cond_84

    aget-object v3, v4, v0

    invoke-virtual {v3}, Lss/ss/ss/z;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    :cond_84
    :try_start_84
    iget-object v0, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    invoke-interface {v0}, Lss/ss/ss/c;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_89} :catch_92

    move-object v0, v1

    :cond_8a
    :goto_8a
    :try_start_8a
    iget-object v1, p0, Lss/ss/ss/d;->h:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8f} :catch_98

    :goto_8f
    if-eqz v0, :cond_97

    throw v0

    :catch_92
    move-exception v0

    if-eqz v1, :cond_8a

    move-object v0, v1

    goto :goto_8a

    :cond_97
    return-void

    :catch_98
    move-exception v0

    goto :goto_8f

    :cond_9a
    move-object v4, v2

    goto :goto_59

    :cond_9c
    move-object v5, v2

    goto :goto_3d
.end method

.method static synthetic a(Lss/ss/ss/d;ILgK/g;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lss/ss/ss/d;->a(ILgK/g;IZ)V

    return-void
.end method

.method static synthetic a(Lss/ss/ss/d;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lss/ss/ss/d;->a(ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lss/ss/ss/d;ILjava/util/List;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lss/ss/ss/d;->a(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lss/ss/ss/d;ILss/ss/ss/a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lss/ss/ss/d;->c(ILss/ss/ss/a;)V

    return-void
.end method

.method static synthetic a(Lss/ss/ss/d;Lss/ss/ss/a;Lss/ss/ss/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lss/ss/ss/d;->a(Lss/ss/ss/a;Lss/ss/ss/a;)V

    return-void
.end method

.method static synthetic a(Lss/ss/ss/d;ZIILss/ss/ss/z;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lss/ss/ss/d;->b(ZIILss/ss/ss/z;)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_b

    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_7
    iput-wide v0, p0, Lss/ss/ss/d;->s:J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    monitor-exit p0

    return-void

    :cond_b
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_7

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(ZIILss/ss/ss/z;)V
    .registers 14

    sget-object v8, Lss/ss/ss/d;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lss/ss/ss/g;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lss/ss/ss/d;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lss/ss/ss/g;-><init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ZIILss/ss/ss/z;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lss/ss/ss/d;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lss/ss/ss/d;->d(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lss/ss/ss/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lss/ss/ss/d;->x:Z

    return p1
.end method

.method static synthetic b(Lss/ss/ss/d;I)I
    .registers 2

    iput p1, p0, Lss/ss/ss/d;->p:I

    return p1
.end method

.method static synthetic b(Lss/ss/ss/d;ZIILss/ss/ss/z;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lss/ss/ss/d;->a(ZIILss/ss/ss/z;)V

    return-void
.end method

.method private b(ZIILss/ss/ss/z;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    monitor-enter v1

    if-eqz p4, :cond_8

    :try_start_5
    invoke-virtual {p4}, Lss/ss/ss/z;->a()V

    :cond_8
    iget-object v0, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    invoke-interface {v0, p1, p2, p3}, Lss/ss/ss/c;->a(ZII)V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0
.end method

.method static synthetic b(Lss/ss/ss/d;)Z
    .registers 2

    iget-boolean v0, p0, Lss/ss/ss/d;->r:Z

    return v0
.end method

.method static synthetic b(Lss/ss/ss/d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lss/ss/ss/d;->r:Z

    return p1
.end method

.method static synthetic c(Lss/ss/ss/d;)I
    .registers 2

    iget v0, p0, Lss/ss/ss/d;->p:I

    return v0
.end method

.method private declared-synchronized c(I)Lss/ss/ss/z;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lss/ss/ss/d;->u:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lss/ss/ss/d;->u:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/z;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lss/ss/ss/d;I)Lss/ss/ss/z;
    .registers 3

    invoke-direct {p0, p1}, Lss/ss/ss/d;->c(I)Lss/ss/ss/z;

    move-result-object v0

    return-object v0
.end method

.method private c(ILss/ss/ss/a;)V
    .registers 10

    iget-object v6, p0, Lss/ss/ss/d;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lss/ss/ss/k;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lss/ss/ss/d;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lss/ss/ss/k;-><init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ILss/ss/ss/a;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lss/ss/ss/d;)I
    .registers 2

    iget v0, p0, Lss/ss/ss/d;->q:I

    return v0
.end method

.method private d(I)Z
    .registers 4

    iget-object v0, p0, Lss/ss/ss/d;->a:Lss/ae;

    sget-object v1, Lss/ae;->d:Lss/ae;

    if-ne v0, v1, :cond_e

    if-eqz p1, :cond_e

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic e(Lss/ss/ss/d;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/d;->n:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/ExecutorService;
    .registers 1

    sget-object v0, Lss/ss/ss/d;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic f(Lss/ss/ss/d;)Lss/ss/ss/d$b;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/d;->m:Lss/ss/ss/d$b;

    return-object v0
.end method

.method static synthetic g(Lss/ss/ss/d;)Z
    .registers 2

    iget-boolean v0, p0, Lss/ss/ss/d;->x:Z

    return v0
.end method

.method static synthetic h(Lss/ss/ss/d;)Lss/ss/ss/aa;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/d;->v:Lss/ss/ss/aa;

    return-object v0
.end method

.method static synthetic i(Lss/ss/ss/d;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/d;->y:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()Lss/ae;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/d;->a:Lss/ae;

    return-object v0
.end method

.method declared-synchronized a(I)Lss/ss/ss/p;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lss/ss/ss/d;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/p;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/List;ZZ)Lss/ss/ss/p;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;ZZ)",
            "Lss/ss/ss/p;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lss/ss/ss/d;->a(ILjava/util/List;ZZ)Lss/ss/ss/p;

    move-result-object v0

    return-object v0
.end method

.method a(IJ)V
    .registers 12

    sget-object v0, Lss/ss/ss/d;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lss/ss/ss/f;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lss/ss/ss/d;->o:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lss/ss/ss/f;-><init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(ILss/ss/ss/a;)V
    .registers 10

    sget-object v6, Lss/ss/ss/d;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lss/ss/ss/e;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lss/ss/ss/d;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lss/ss/ss/e;-><init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ILss/ss/ss/a;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(IZLgK/e;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    cmp-long v0, p4, v8

    if-nez v0, :cond_33

    iget-object v0, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    invoke-interface {v0, p2, p1, p3, v1}, Lss/ss/ss/c;->a(ZILgK/e;I)V

    :cond_c
    return-void

    :cond_d
    :try_start_d
    iget-wide v2, p0, Lss/ss/ss/d;->d:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v2, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    invoke-interface {v2}, Lss/ss/ss/c;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lss/ss/ss/d;->d:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lss/ss/ss/d;->d:J

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_59

    int-to-long v4, v2

    sub-long/2addr p4, v4

    iget-object v3, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    if-eqz p2, :cond_60

    cmp-long v0, p4, v8

    if-nez v0, :cond_60

    const/4 v0, 0x1

    :goto_30
    invoke-interface {v3, v0, p1, p3, v2}, Lss/ss/ss/c;->a(ZILgK/e;I)V

    :cond_33
    cmp-long v0, p4, v8

    if-lez v0, :cond_c

    monitor-enter p0

    :goto_38
    :try_start_38
    iget-wide v2, p0, Lss/ss/ss/d;->d:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_d

    iget-object v0, p0, Lss/ss/ss/d;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_52} :catch_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_59

    :catch_52
    move-exception v0

    :try_start_53
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_59

    throw v0

    :cond_5c
    :try_start_5c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5f} :catch_52
    .catchall {:try_start_5c .. :try_end_5f} :catchall_59

    goto :goto_38

    :cond_60
    move v0, v1

    goto :goto_30
.end method

.method a(J)V
    .registers 6

    iget-wide v0, p0, Lss/ss/ss/d;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lss/ss/ss/d;->d:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method public a(Lss/ss/ss/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    monitor-enter v1

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1a

    :try_start_4
    iget-boolean v0, p0, Lss/ss/ss/d;->r:Z

    if-eqz v0, :cond_b

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1d

    :try_start_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1a

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lss/ss/ss/d;->r:Z

    iget v0, p0, Lss/ss/ss/d;->p:I

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1d

    :try_start_11
    iget-object v2, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    sget-object v3, Lss/ss/j;->a:[B

    invoke-interface {v2, v0, p1, v3}, Lss/ss/ss/c;->a(ILss/ss/ss/a;[B)V

    monitor-exit v1

    goto :goto_a

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1a
.end method

.method public declared-synchronized b()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lss/ss/ss/d;->f:Lss/ss/ss/ac;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lss/ss/ss/ac;->d(I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(I)Lss/ss/ss/p;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lss/ss/ss/d;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/p;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lss/ss/ss/d;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lss/ss/ss/d;->a(Z)V

    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(ILss/ss/ss/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    invoke-interface {v0, p1, p2}, Lss/ss/ss/c;->a(ILss/ss/ss/a;)V

    return-void
.end method

.method public c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    invoke-interface {v0}, Lss/ss/ss/c;->b()V

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lss/ss/ss/a;->a:Lss/ss/ss/a;

    sget-object v1, Lss/ss/ss/a;->l:Lss/ss/ss/a;

    invoke-direct {p0, v0, v1}, Lss/ss/ss/d;->a(Lss/ss/ss/a;Lss/ss/ss/a;)V

    return-void
.end method

.method public d()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v3, 0x10000

    iget-object v0, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    invoke-interface {v0}, Lss/ss/ss/c;->a()V

    iget-object v0, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    iget-object v1, p0, Lss/ss/ss/d;->e:Lss/ss/ss/ac;

    invoke-interface {v0, v1}, Lss/ss/ss/c;->b(Lss/ss/ss/ac;)V

    iget-object v0, p0, Lss/ss/ss/d;->e:Lss/ss/ss/ac;

    invoke-virtual {v0, v3}, Lss/ss/ss/ac;->f(I)I

    move-result v0

    if-eq v0, v3, :cond_1e

    iget-object v1, p0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    int-to-long v4, v0

    invoke-interface {v1, v2, v4, v5}, Lss/ss/ss/c;->a(IJ)V

    :cond_1e
    return-void
.end method
