.class final Lss/ss/ss/p$a;
.super Ljava/lang/Object;

# interfaces
.implements LgK/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lss/ss/ss/p;

.field private final c:LgK/e;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lss/ss/ss/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lss/ss/ss/p$a;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lss/ss/ss/p;)V
    .registers 3

    iput-object p1, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LgK/e;

    invoke-direct {v0}, LgK/e;-><init>()V

    iput-object v0, p0, Lss/ss/ss/p$a;->c:LgK/e;

    return-void
.end method

.method private a(Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->g(Lss/ss/ss/p;)Lss/ss/ss/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lss/ss/ss/p$c;->c()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_37

    :goto_c
    :try_start_c
    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    iget-wide v2, v0, Lss/ss/ss/p;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3a

    iget-boolean v0, p0, Lss/ss/ss/p$a;->e:Z

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lss/ss/ss/p$a;->d:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->d(Lss/ss/ss/p;)Lss/ss/ss/a;

    move-result-object v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->e(Lss/ss/ss/p;)V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_2c

    goto :goto_c

    :catchall_2c
    move-exception v0

    :try_start_2d
    iget-object v2, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v2}, Lss/ss/ss/p;->g(Lss/ss/ss/p;)Lss/ss/ss/p$c;

    move-result-object v2

    invoke-virtual {v2}, Lss/ss/ss/p$c;->b()V

    throw v0

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_37

    throw v0

    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->g(Lss/ss/ss/p;)Lss/ss/ss/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lss/ss/ss/p$c;->b()V

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->h(Lss/ss/ss/p;)V

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    iget-wide v2, v0, Lss/ss/ss/p;->b:J

    iget-object v0, p0, Lss/ss/ss/p$a;->c:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    iget-wide v2, v0, Lss/ss/ss/p;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lss/ss/ss/p;->b:J

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_3a .. :try_end_5e} :catchall_37

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->g(Lss/ss/ss/p;)Lss/ss/ss/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lss/ss/ss/p$c;->c()V

    :try_start_67
    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->a(Lss/ss/ss/p;)Lss/ss/ss/d;

    move-result-object v0

    iget-object v1, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v1}, Lss/ss/ss/p;->b(Lss/ss/ss/p;)I

    move-result v1

    if-eqz p1, :cond_8f

    iget-object v2, p0, Lss/ss/ss/p$a;->c:LgK/e;

    invoke-virtual {v2}, LgK/e;->b()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_8f

    const/4 v2, 0x1

    :goto_80
    iget-object v3, p0, Lss/ss/ss/p$a;->c:LgK/e;

    invoke-virtual/range {v0 .. v5}, Lss/ss/ss/d;->a(IZLgK/e;J)V
    :try_end_85
    .catchall {:try_start_67 .. :try_end_85} :catchall_91

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->g(Lss/ss/ss/p;)Lss/ss/ss/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lss/ss/ss/p$c;->b()V

    return-void

    :cond_8f
    const/4 v2, 0x0

    goto :goto_80

    :catchall_91
    move-exception v0

    iget-object v1, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v1}, Lss/ss/ss/p;->g(Lss/ss/ss/p;)Lss/ss/ss/p$c;

    move-result-object v1

    invoke-virtual {v1}, Lss/ss/ss/p$c;->b()V

    throw v0
.end method

.method static synthetic a(Lss/ss/ss/p$a;)Z
    .registers 2

    iget-boolean v0, p0, Lss/ss/ss/p$a;->e:Z

    return v0
.end method

.method static synthetic a(Lss/ss/ss/p$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lss/ss/ss/p$a;->e:Z

    return p1
.end method

.method static synthetic b(Lss/ss/ss/p$a;)Z
    .registers 2

    iget-boolean v0, p0, Lss/ss/ss/p$a;->d:Z

    return v0
.end method


# virtual methods
.method public a()LgK/x;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->g(Lss/ss/ss/p;)Lss/ss/ss/p$c;

    move-result-object v0

    return-object v0
.end method

.method public a_(LgK/e;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lss/ss/ss/p$a;->a:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    iget-object v0, p0, Lss/ss/ss/p$a;->c:LgK/e;

    invoke-virtual {v0, p1, p2, p3}, LgK/e;->a_(LgK/e;J)V

    :goto_17
    iget-object v0, p0, Lss/ss/ss/p$a;->c:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lss/ss/ss/p$a;->a(Z)V

    goto :goto_17

    :cond_28
    return-void
.end method

.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Lss/ss/ss/p$a;->a:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    iget-object v1, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    monitor-enter v1

    :try_start_18
    iget-boolean v0, p0, Lss/ss/ss/p$a;->d:Z

    if-eqz v0, :cond_1e

    monitor-exit v1

    :goto_1d
    return-void

    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_3f

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    iget-object v0, v0, Lss/ss/ss/p;->c:Lss/ss/ss/p$a;

    iget-boolean v0, v0, Lss/ss/ss/p$a;->e:Z

    if-nez v0, :cond_52

    iget-object v0, p0, Lss/ss/ss/p$a;->c:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_42

    :goto_31
    iget-object v0, p0, Lss/ss/ss/p$a;->c:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_52

    invoke-direct {p0, v2}, Lss/ss/ss/p$a;->a(Z)V

    goto :goto_31

    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0

    :cond_42
    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->a(Lss/ss/ss/p;)Lss/ss/ss/d;

    move-result-object v0

    iget-object v1, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v1}, Lss/ss/ss/p;->b(Lss/ss/ss/p;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lss/ss/ss/d;->a(IZLgK/e;J)V

    :cond_52
    iget-object v1, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_56
    iput-boolean v0, p0, Lss/ss/ss/p$a;->d:Z

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_68

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->a(Lss/ss/ss/p;)Lss/ss/ss/d;

    move-result-object v0

    invoke-virtual {v0}, Lss/ss/ss/d;->c()V

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->f(Lss/ss/ss/p;)V

    goto :goto_1d

    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0
.end method

.method public flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lss/ss/ss/p$a;->a:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    iget-object v1, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    monitor-enter v1

    :try_start_15
    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->h(Lss/ss/ss/p;)V

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_35

    :goto_1b
    iget-object v0, p0, Lss/ss/ss/p$a;->c:LgK/e;

    invoke-virtual {v0}, LgK/e;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_38

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lss/ss/ss/p$a;->a(Z)V

    iget-object v0, p0, Lss/ss/ss/p$a;->b:Lss/ss/ss/p;

    invoke-static {v0}, Lss/ss/ss/p;->a(Lss/ss/ss/p;)Lss/ss/ss/d;

    move-result-object v0

    invoke-virtual {v0}, Lss/ss/ss/d;->c()V

    goto :goto_1b

    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    return-void
.end method
