.class final LgK/u;
.super Ljava/lang/Object;


# static fields
.field static a:LgK/t;

.field static b:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()LgK/t;
    .registers 6

    const-class v1, LgK/u;

    monitor-enter v1

    :try_start_3
    sget-object v0, LgK/u;->a:LgK/t;

    if-eqz v0, :cond_19

    sget-object v0, LgK/u;->a:LgK/t;

    iget-object v2, v0, LgK/t;->f:LgK/t;

    sput-object v2, LgK/u;->a:LgK/t;

    const/4 v2, 0x0

    iput-object v2, v0, LgK/t;->f:LgK/t;

    sget-wide v2, LgK/u;->b:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, LgK/u;->b:J

    monitor-exit v1

    :goto_18
    return-object v0

    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_20

    new-instance v0, LgK/t;

    invoke-direct {v0}, LgK/t;-><init>()V

    goto :goto_18

    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method static a(LgK/t;)V
    .registers 9

    const-wide/16 v6, 0x2000

    iget-object v0, p0, LgK/t;->f:LgK/t;

    if-nez v0, :cond_a

    iget-object v0, p0, LgK/t;->g:LgK/t;

    if-eqz v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    iget-boolean v0, p0, LgK/t;->d:Z

    if-eqz v0, :cond_15

    :goto_14
    return-void

    :cond_15
    const-class v1, LgK/u;

    monitor-enter v1

    :try_start_18
    sget-wide v2, LgK/u;->b:J

    add-long/2addr v2, v6

    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-lez v0, :cond_27

    monitor-exit v1

    goto :goto_14

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    sget-wide v2, LgK/u;->b:J

    add-long/2addr v2, v6

    sput-wide v2, LgK/u;->b:J

    sget-object v0, LgK/u;->a:LgK/t;

    iput-object v0, p0, LgK/t;->f:LgK/t;

    const/4 v0, 0x0

    iput v0, p0, LgK/t;->c:I

    iput v0, p0, LgK/t;->b:I

    sput-object p0, LgK/u;->a:LgK/t;

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_24

    goto :goto_14
.end method
