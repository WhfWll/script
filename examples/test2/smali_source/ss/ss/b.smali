.class public final Lss/ss/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ss/b$b;,
        Lss/ss/b$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final synthetic b:Z

.field private static final p:LgK/v;


# instance fields
.field private final c:Lss/ss/pK/a;

.field private d:J

.field private final e:I

.field private f:J

.field private g:LgK/f;

.field private final h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lss/ss/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lss/ss/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lss/ss/b;->b:Z

    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lss/ss/b;->a:Ljava/util/regex/Pattern;

    new-instance v0, Lss/ss/c;

    invoke-direct {v0}, Lss/ss/c;-><init>()V

    sput-object v0, Lss/ss/b;->p:LgK/v;

    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private declared-synchronized a(Lss/ss/b$a;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Lss/ss/b$a;->a(Lss/ss/b$a;)Lss/ss/b$b;

    move-result-object v2

    invoke-static {v2}, Lss/ss/b$b;->a(Lss/ss/b$b;)Lss/ss/b$a;

    move-result-object v1

    if-eq v1, p1, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    if-eqz p2, :cond_5c

    :try_start_17
    invoke-static {v2}, Lss/ss/b$b;->f(Lss/ss/b$b;)Z

    move-result v1

    if-nez v1, :cond_5c

    move v1, v0

    :goto_1e
    iget v3, p0, Lss/ss/b;->e:I

    if-ge v1, v3, :cond_5c

    invoke-static {p1}, Lss/ss/b$a;->b(Lss/ss/b$a;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_46

    invoke-virtual {p1}, Lss/ss/b$a;->a()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    iget-object v3, p0, Lss/ss/b;->c:Lss/ss/pK/a;

    invoke-static {v2}, Lss/ss/b$b;->d(Lss/ss/b$b;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lss/ss/pK/a;->b(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_59

    invoke-virtual {p1}, Lss/ss/b$a;->a()V
    :try_end_57
    .catchall {:try_start_17 .. :try_end_57} :catchall_12

    :cond_57
    :goto_57
    monitor-exit p0

    return-void

    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_5c
    :goto_5c
    :try_start_5c
    iget v1, p0, Lss/ss/b;->e:I

    if-ge v0, v1, :cond_9d

    invoke-static {v2}, Lss/ss/b$b;->d(Lss/ss/b$b;)[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz p2, :cond_97

    iget-object v3, p0, Lss/ss/b;->c:Lss/ss/pK/a;

    invoke-interface {v3, v1}, Lss/ss/pK/a;->b(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_94

    invoke-static {v2}, Lss/ss/b$b;->c(Lss/ss/b$b;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v4, p0, Lss/ss/b;->c:Lss/ss/pK/a;

    invoke-interface {v4, v1, v3}, Lss/ss/pK/a;->a(Ljava/io/File;Ljava/io/File;)V

    invoke-static {v2}, Lss/ss/b$b;->b(Lss/ss/b$b;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    iget-object v1, p0, Lss/ss/b;->c:Lss/ss/pK/a;

    invoke-interface {v1, v3}, Lss/ss/pK/a;->c(Ljava/io/File;)J

    move-result-wide v6

    invoke-static {v2}, Lss/ss/b$b;->b(Lss/ss/b$b;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    iget-wide v8, p0, Lss/ss/b;->f:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lss/ss/b;->f:J

    :cond_94
    :goto_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_97
    iget-object v3, p0, Lss/ss/b;->c:Lss/ss/pK/a;

    invoke-interface {v3, v1}, Lss/ss/pK/a;->a(Ljava/io/File;)V

    goto :goto_94

    :cond_9d
    iget v0, p0, Lss/ss/b;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lss/ss/b;->i:I

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lss/ss/b$b;->a(Lss/ss/b$b;Lss/ss/b$a;)Lss/ss/b$a;

    invoke-static {v2}, Lss/ss/b$b;->f(Lss/ss/b$b;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_fc

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lss/ss/b$b;->a(Lss/ss/b$b;Z)Z

    iget-object v0, p0, Lss/ss/b;->g:LgK/f;

    const-string v1, "CLEAN"

    invoke-interface {v0, v1}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, LgK/f;->h(I)LgK/f;

    iget-object v0, p0, Lss/ss/b;->g:LgK/f;

    invoke-static {v2}, Lss/ss/b$b;->e(Lss/ss/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    iget-object v0, p0, Lss/ss/b;->g:LgK/f;

    invoke-virtual {v2, v0}, Lss/ss/b$b;->a(LgK/f;)V

    iget-object v0, p0, Lss/ss/b;->g:LgK/f;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, LgK/f;->h(I)LgK/f;

    if-eqz p2, :cond_e0

    iget-wide v0, p0, Lss/ss/b;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lss/ss/b;->m:J

    invoke-static {v2, v0, v1}, Lss/ss/b$b;->a(Lss/ss/b$b;J)J

    :cond_e0
    :goto_e0
    iget-object v0, p0, Lss/ss/b;->g:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V

    iget-wide v0, p0, Lss/ss/b;->f:J

    iget-wide v2, p0, Lss/ss/b;->d:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f3

    invoke-direct {p0}, Lss/ss/b;->b()Z

    move-result v0

    if-eqz v0, :cond_57

    :cond_f3
    iget-object v0, p0, Lss/ss/b;->n:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lss/ss/b;->o:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_57

    :cond_fc
    iget-object v0, p0, Lss/ss/b;->h:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lss/ss/b$b;->e(Lss/ss/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lss/ss/b;->g:LgK/f;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, LgK/f;->h(I)LgK/f;

    iget-object v0, p0, Lss/ss/b;->g:LgK/f;

    invoke-static {v2}, Lss/ss/b$b;->e(Lss/ss/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    iget-object v0, p0, Lss/ss/b;->g:LgK/f;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, LgK/f;->h(I)LgK/f;
    :try_end_122
    .catchall {:try_start_5c .. :try_end_122} :catchall_12

    goto :goto_e0
.end method

.method static synthetic a(Lss/ss/b;Lss/ss/b$a;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lss/ss/b;->a(Lss/ss/b$a;Z)V

    return-void
.end method

.method private a(Lss/ss/b$b;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    invoke-static {p1}, Lss/ss/b$b;->a(Lss/ss/b$b;)Lss/ss/b$a;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lss/ss/b$b;->a(Lss/ss/b$b;)Lss/ss/b$a;

    move-result-object v0

    invoke-static {v0, v6}, Lss/ss/b$a;->a(Lss/ss/b$a;Z)Z

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget v1, p0, Lss/ss/b;->e:I

    if-ge v0, v1, :cond_34

    iget-object v1, p0, Lss/ss/b;->c:Lss/ss/pK/a;

    invoke-static {p1}, Lss/ss/b$b;->c(Lss/ss/b$b;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lss/ss/pK/a;->a(Ljava/io/File;)V

    iget-wide v2, p0, Lss/ss/b;->f:J

    invoke-static {p1}, Lss/ss/b$b;->b(Lss/ss/b$b;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lss/ss/b;->f:J

    invoke-static {p1}, Lss/ss/b$b;->b(Lss/ss/b$b;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_34
    iget v0, p0, Lss/ss/b;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lss/ss/b;->i:I

    iget-object v0, p0, Lss/ss/b;->g:LgK/f;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, LgK/f;->h(I)LgK/f;

    move-result-object v0

    invoke-static {p1}, Lss/ss/b$b;->e(Lss/ss/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LgK/f;->b(Ljava/lang/String;)LgK/f;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, LgK/f;->h(I)LgK/f;

    iget-object v0, p0, Lss/ss/b;->h:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lss/ss/b$b;->e(Lss/ss/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lss/ss/b;->b()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lss/ss/b;->n:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lss/ss/b;->o:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6b
    return v6
.end method

.method private b()Z
    .registers 3

    iget v0, p0, Lss/ss/b;->i:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lss/ss/b;->i:I

    iget-object v1, p0, Lss/ss/b;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lss/ss/b;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    monitor-exit p0

    return-void
.end method

.method private d()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Lss/ss/b;->f:J

    iget-wide v2, p0, Lss/ss/b;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    iget-object v0, p0, Lss/ss/b;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/b$b;

    invoke-direct {p0, v0}, Lss/ss/b;->a(Lss/ss/b$b;)Z

    goto :goto_0

    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lss/ss/b;->l:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/b;->k:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/b;->j:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lss/ss/b;->k:Z

    if-eqz v0, :cond_e

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lss/ss/b;->k:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_47

    :goto_c
    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    iget-object v0, p0, Lss/ss/b;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lss/ss/b;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lss/ss/b$b;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lss/ss/b$b;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_38

    aget-object v3, v0, v1

    invoke-static {v3}, Lss/ss/b$b;->a(Lss/ss/b$b;)Lss/ss/b$a;

    move-result-object v4

    if-eqz v4, :cond_35

    invoke-static {v3}, Lss/ss/b$b;->a(Lss/ss/b$b;)Lss/ss/b$a;

    move-result-object v3

    invoke-virtual {v3}, Lss/ss/b$a;->a()V

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_38
    invoke-direct {p0}, Lss/ss/b;->d()V

    iget-object v0, p0, Lss/ss/b;->g:LgK/f;

    invoke-interface {v0}, LgK/f;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lss/ss/b;->g:LgK/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lss/ss/b;->k:Z
    :try_end_46
    .catchall {:try_start_e .. :try_end_46} :catchall_47

    goto :goto_c

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lss/ss/b;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-direct {p0}, Lss/ss/b;->c()V

    invoke-direct {p0}, Lss/ss/b;->d()V

    iget-object v0, p0, Lss/ss/b;->g:LgK/f;

    invoke-interface {v0}, LgK/f;->flush()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_5

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
