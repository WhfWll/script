.class public Lcom/tencent/wxop/stat/au;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/tencent/wxop/stat/common/StatLogger;

.field private static i:Landroid/content/Context;

.field private static j:Lcom/tencent/wxop/stat/au;


# instance fields
.field volatile a:I

.field b:Lcom/tencent/wxop/stat/common/a;

.field private c:Lcom/tencent/wxop/stat/bc;

.field private d:Lcom/tencent/wxop/stat/bc;

.field private e:Lcom/tencent/wxop/stat/common/e;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private k:I

.field private l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/tencent/wxop/stat/a/e;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/wxop/stat/common/k;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    sput-object v1, Lcom/tencent/wxop/stat/au;->i:Landroid/content/Context;

    sput-object v1, Lcom/tencent/wxop/stat/au;->j:Lcom/tencent/wxop/stat/au;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    iput-object v1, p0, Lcom/tencent/wxop/stat/au;->d:Lcom/tencent/wxop/stat/bc;

    iput-object v1, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->g:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/wxop/stat/au;->a:I

    iput-object v1, p0, Lcom/tencent/wxop/stat/au;->b:Lcom/tencent/wxop/stat/common/a;

    iput v2, p0, Lcom/tencent/wxop/stat/au;->k:I

    iput-object v1, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean v2, p0, Lcom/tencent/wxop/stat/au;->m:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->n:Ljava/util/HashMap;

    :try_start_24
    new-instance v0, Lcom/tencent/wxop/stat/common/e;

    invoke-direct {v0}, Lcom/tencent/wxop/stat/common/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/au;->i:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/k;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pri_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/k;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->g:Ljava/lang/String;

    new-instance v0, Lcom/tencent/wxop/stat/bc;

    sget-object v1, Lcom/tencent/wxop/stat/au;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/wxop/stat/au;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/wxop/stat/bc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    new-instance v0, Lcom/tencent/wxop/stat/bc;

    sget-object v1, Lcom/tencent/wxop/stat/au;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/wxop/stat/au;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/wxop/stat/bc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/wxop/stat/au;->d:Lcom/tencent/wxop/stat/bc;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/wxop/stat/au;->a(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/wxop/stat/au;->a(Z)V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->f()V

    sget-object v0, Lcom/tencent/wxop/stat/au;->i:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/au;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/a;

    invoke-virtual {p0}, Lcom/tencent/wxop/stat/au;->d()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->j()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_7f} :catch_80

    :goto_7f
    return-void

    :catch_80
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_7f
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;
    .registers 3

    sget-object v0, Lcom/tencent/wxop/stat/au;->j:Lcom/tencent/wxop/stat/au;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/wxop/stat/au;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/wxop/stat/au;->j:Lcom/tencent/wxop/stat/au;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/wxop/stat/au;

    invoke-direct {v0, p0}, Lcom/tencent/wxop/stat/au;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/wxop/stat/au;->j:Lcom/tencent/wxop/stat/au;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tencent/wxop/stat/au;->j:Lcom/tencent/wxop/stat/au;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wxop/stat/bd;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "event_id in ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wxop/stat/bd;

    iget-wide v6, v0, Lcom/tencent/wxop/stat/bd;->a:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, -0x1

    if-eq v1, v0, :cond_34

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    :cond_38
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(IZ)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    if-lez v0, :cond_d

    if-lez p1, :cond_d

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->a()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_76
    .catchall {:try_start_1 .. :try_end_a} :catchall_7d

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsent events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/wxop/stat/au;->b(Ljava/util/List;IZ)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_63

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Peek "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unsent events."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_63
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/wxop/stat/au;->a(Ljava/util/List;IZ)V

    sget-object v1, Lcom/tencent/wxop/stat/au;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/wxop/stat/i;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/i;

    move-result-object v1

    new-instance v2, Lcom/tencent/wxop/stat/ba;

    invoke-direct {v2, p0, v0, p2}, Lcom/tencent/wxop/stat/ba;-><init>(Lcom/tencent/wxop/stat/au;Ljava/util/List;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/wxop/stat/i;->b(Ljava/util/List;Lcom/tencent/wxop/stat/h;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_75} :catch_76
    .catchall {:try_start_f .. :try_end_75} :catchall_7d

    goto :goto_d

    :catch_76
    move-exception v0

    :try_start_77
    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_7d

    goto :goto_d

    :catchall_7d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/tencent/wxop/stat/a/e;Lcom/tencent/wxop/stat/h;Z)V
    .registers 10

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p3}, Lcom/tencent/wxop/stat/au;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez p3, :cond_2d

    iget v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getMaxStoreEventCount()I

    move-result v2

    if-le v0, v2, :cond_2d

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v2, "Too many events stored in db."

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    iget v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    iget-object v2, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "events"

    const-string v4, "event_id in (select event_id from events where timestamp in (select min(timestamp) from events) limit 1)"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    :cond_2d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v3

    if-eqz v3, :cond_50

    sget-object v3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insert 1 event, content:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_50
    invoke-static {v2}, Lcom/tencent/wxop/stat/common/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "send_count"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp"

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a/e;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "events"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_81} :catch_bf
    .catchall {:try_start_1 .. :try_end_81} :catchall_d6

    if-eqz v1, :cond_fd

    :try_start_83
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_86} :catch_b7

    move-wide v0, v2

    :goto_87
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e4

    iget v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_b1

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "directStoreEvent insert event to db, event:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_b1
    if-eqz p2, :cond_b6

    invoke-interface {p2}, Lcom/tencent/wxop/stat/h;->a()V

    :cond_b6
    :goto_b6
    return-void

    :catch_b7
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_87

    :catch_bf
    move-exception v0

    const-wide/16 v2, -0x1

    :try_start_c2
    sget-object v4, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v4, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_c7
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_d6

    if-eqz v1, :cond_fd

    :try_start_c9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_cc} :catch_ce

    move-wide v0, v2

    goto :goto_87

    :catch_ce
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_87

    :catchall_d6
    move-exception v0

    if-eqz v1, :cond_dc

    :try_start_d9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_dc} :catch_dd

    :cond_dc
    :goto_dc
    throw v0

    :catch_dd
    move-exception v1

    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_dc

    :cond_e4
    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to store event:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_b6

    :cond_fd
    move-wide v0, v2

    goto :goto_87
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/au;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->i()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/au;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tencent/wxop/stat/au;->b(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/au;Lcom/tencent/wxop/stat/a/e;Lcom/tencent/wxop/stat/h;ZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/wxop/stat/au;->b(Lcom/tencent/wxop/stat/a/e;Lcom/tencent/wxop/stat/h;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/au;Lcom/tencent/wxop/stat/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/au;->b(Lcom/tencent/wxop/stat/f;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/au;Ljava/util/List;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wxop/stat/au;->a(Ljava/util/List;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/au;Ljava/util/List;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tencent/wxop/stat/au;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;IZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wxop/stat/bd;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7e

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    invoke-direct {p0, p3}, Lcom/tencent/wxop/stat/au;->b(Z)I
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7e

    move-result v3

    :try_start_e
    invoke-direct {p0, p3}, Lcom/tencent/wxop/stat/au;->c(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_e1
    .catchall {:try_start_e .. :try_end_11} :catchall_d0

    move-result-object v1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_81

    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "update events set status="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", send_count=send_count+1  where "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/au;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_32
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v3

    if-eqz v3, :cond_4c

    sget-object v3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "update sql:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_4c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz v2, :cond_6e

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update for delete sql:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->f()V

    :cond_6e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_71} :catch_bb
    .catchall {:try_start_15 .. :try_end_71} :catchall_df

    if-eqz v1, :cond_8

    :try_start_73
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_76} :catch_77
    .catchall {:try_start_73 .. :try_end_76} :catchall_7e

    goto :goto_8

    :catch_77
    move-exception v0

    :try_start_78
    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_7e

    goto :goto_8

    :catchall_7e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_81
    :try_start_81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "update events set status="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " where "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/au;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/tencent/wxop/stat/au;->k:I

    rem-int/lit8 v4, v4, 0x3

    if-nez v4, :cond_b3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "delete from events where send_count>"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_b3
    iget v3, p0, Lcom/tencent/wxop/stat/au;->k:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tencent/wxop/stat/au;->k:I
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_b9} :catch_bb
    .catchall {:try_start_81 .. :try_end_b9} :catchall_df

    goto/16 :goto_32

    :catch_bb
    move-exception v0

    :goto_bc
    :try_start_bc
    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_df

    if-eqz v1, :cond_8

    :try_start_c3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_c6} :catch_c8
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_7e

    goto/16 :goto_8

    :catch_c8
    move-exception v0

    :try_start_c9
    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_ce
    .catchall {:try_start_c9 .. :try_end_ce} :catchall_7e

    goto/16 :goto_8

    :catchall_d0
    move-exception v0

    move-object v1, v2

    :goto_d2
    if-eqz v1, :cond_d7

    :try_start_d4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_d7} :catch_d8
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_7e

    :cond_d7
    :goto_d7
    :try_start_d7
    throw v0

    :catch_d8
    move-exception v1

    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_de
    .catchall {:try_start_d7 .. :try_end_de} :catchall_7e

    goto :goto_d7

    :catchall_df
    move-exception v0

    goto :goto_d2

    :catch_e1
    move-exception v0

    move-object v1, v2

    goto :goto_bc
.end method

.method private declared-synchronized a(Ljava/util/List;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wxop/stat/bd;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_ce

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " events, important:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "event_id in ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_4c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wxop/stat/bd;

    iget-wide v6, v0, Lcom/tencent/wxop/stat/bd;->a:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, -0x1

    if-eq v2, v0, :cond_66

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_66
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4c

    :cond_6a
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6f
    .catchall {:try_start_a .. :try_end_6f} :catchall_ce

    :try_start_6f
    invoke-direct {p0, p2}, Lcom/tencent/wxop/stat/au;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "events"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_b3

    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delete "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", success delete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_b3
    iget v2, p0, Lcom/tencent/wxop/stat/au;->a:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->f()V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_bf} :catch_d1
    .catchall {:try_start_6f .. :try_end_bf} :catchall_e6

    if-eqz v1, :cond_8

    :try_start_c1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c4} :catch_c6
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_ce

    goto/16 :goto_8

    :catch_c6
    move-exception v0

    :try_start_c7
    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_cc
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_ce

    goto/16 :goto_8

    :catchall_ce
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_d1
    move-exception v0

    :try_start_d2
    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_d7
    .catchall {:try_start_d2 .. :try_end_d7} :catchall_e6

    if-eqz v1, :cond_8

    :try_start_d9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_dc} :catch_de
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_ce

    goto/16 :goto_8

    :catch_de
    move-exception v0

    :try_start_df
    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_e4
    .catchall {:try_start_df .. :try_end_e4} :catchall_ce

    goto/16 :goto_8

    :catchall_e6
    move-exception v0

    if-eqz v1, :cond_ec

    :try_start_e9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_e9 .. :try_end_ec} :catch_ed
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_ce

    :cond_ec
    :goto_ec
    :try_start_ec
    throw v0

    :catch_ed
    move-exception v1

    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_f3
    .catchall {:try_start_ec .. :try_end_f3} :catchall_ce

    goto :goto_ec
.end method

.method private a(Z)V
    .registers 10

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/wxop/stat/au;->c(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "events"

    const-string v3, "status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_4b

    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " unsent events."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_4b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4e} :catch_5b
    .catchall {:try_start_1 .. :try_end_4e} :catchall_6e

    if-eqz v1, :cond_53

    :try_start_50
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_54

    :cond_53
    :goto_53
    return-void

    :catch_54
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_53

    :catch_5b
    move-exception v0

    :try_start_5c
    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_6e

    if-eqz v1, :cond_53

    :try_start_63
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_53

    :catch_67
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_53

    :catchall_6e
    move-exception v0

    if-eqz v1, :cond_74

    :try_start_71
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_75

    :cond_74
    :goto_74
    throw v0

    :catch_75
    move-exception v1

    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_74
.end method

.method private b(Z)I
    .registers 3

    if-nez p1, :cond_7

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getMaxSendRetryCount()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getMaxImportantDataSendRetryCount()I

    move-result v0

    goto :goto_6
.end method

.method public static b()Lcom/tencent/wxop/stat/au;
    .registers 1

    sget-object v0, Lcom/tencent/wxop/stat/au;->j:Lcom/tencent/wxop/stat/au;

    return-object v0
.end method

.method private b(IZ)V
    .registers 11

    const/4 v0, -0x1

    if-ne p1, v0, :cond_79

    if-nez p2, :cond_6e

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->g()I

    move-result v0

    :goto_9
    if-lez v0, :cond_78

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getSendPeriodMinutes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getNumEventsCommitPerSec()I

    move-result v2

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_1b

    if-lez v1, :cond_1b

    move v0, v1

    :cond_1b
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->a()I

    move-result v2

    div-int v3, v0, v2

    rem-int v4, v0, v2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v5

    if-eqz v5, :cond_65

    sget-object v5, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sentStoreEventsByDb sendNumbers="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",important="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",maxSendNumPerFor1Period="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",restNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_65
    const/4 v0, 0x0

    :goto_66
    if-ge v0, v3, :cond_73

    invoke-direct {p0, v2, p2}, Lcom/tencent/wxop/stat/au;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_6e
    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->h()I

    move-result v0

    goto :goto_9

    :cond_73
    if-lez v4, :cond_78

    invoke-direct {p0, v4, p2}, Lcom/tencent/wxop/stat/au;->a(IZ)V

    :cond_78
    return-void

    :cond_79
    move v0, p1

    goto :goto_9
.end method

.method private declared-synchronized b(Lcom/tencent/wxop/stat/a/e;Lcom/tencent/wxop/stat/h;ZZ)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getMaxStoreEventCount()I

    move-result v0

    if-lez v0, :cond_12

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->m:I

    if-lez v0, :cond_f

    if-nez p3, :cond_f

    if-eqz p4, :cond_14

    :cond_f
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/a/e;Lcom/tencent/wxop/stat/h;Z)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_8d

    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    sget v0, Lcom/tencent/wxop/stat/StatConfig;->m:I

    if-lez v0, :cond_12

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cacheEventsInMemory.size():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",numEventsCachedInMemory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/wxop/stat/StatConfig;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",numStoredEvents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cache event:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_68
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sget v1, Lcom/tencent/wxop/stat/StatConfig;->m:I

    if-lt v0, v1, :cond_7c

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->i()V

    :cond_7c
    if-eqz p2, :cond_12

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_89

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->i()V

    :cond_89
    invoke-interface {p2}, Lcom/tencent/wxop/stat/h;->a()V
    :try_end_8c
    .catchall {:try_start_14 .. :try_end_8c} :catchall_8d

    goto :goto_12

    :catchall_8d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/tencent/wxop/stat/f;)V
    .registers 15

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_4
    invoke-virtual {p1}, Lcom/tencent/wxop/stat/f;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/wxop/stat/common/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "content"

    iget-object v2, p1, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "md5sum"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/tencent/wxop/stat/f;->c:Ljava/lang/String;

    const-string v0, "version"

    iget v1, p1, Lcom/tencent/wxop/stat/f;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "config"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_3f} :catch_106
    .catchall {:try_start_4 .. :try_end_3f} :catchall_ee

    move-result-object v1

    :cond_40
    :try_start_40
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_10b

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget v2, p1, Lcom/tencent/wxop/stat/f;->a:I

    if-ne v0, v2, :cond_40

    move v0, v9

    :goto_50
    iget-object v2, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-ne v9, v0, :cond_a9

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "config"

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p1, Lcom/tencent/wxop/stat/f;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v12, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    :goto_76
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_c2

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to store cfg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :goto_90
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_99} :catch_d7
    .catchall {:try_start_40 .. :try_end_99} :catchall_104

    if-eqz v1, :cond_9e

    :try_start_9b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_ff

    :cond_9e
    :try_start_9e
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a7} :catch_109
    .catchall {:try_start_9e .. :try_end_a7} :catchall_ff

    :goto_a7
    monitor-exit p0

    return-void

    :cond_a9
    :try_start_a9
    const-string v0, "type"

    iget v2, p1, Lcom/tencent/wxop/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "config"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_76

    :cond_c2
    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sucessed to store cfg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_d6} :catch_d7
    .catchall {:try_start_a9 .. :try_end_d6} :catchall_104

    goto :goto_90

    :catch_d7
    move-exception v0

    :goto_d8
    :try_start_d8
    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_dd
    .catchall {:try_start_d8 .. :try_end_dd} :catchall_104

    if-eqz v1, :cond_e2

    :try_start_df
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_ff

    :cond_e2
    :try_start_e2
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_eb} :catch_ec
    .catchall {:try_start_e2 .. :try_end_eb} :catchall_ff

    goto :goto_a7

    :catch_ec
    move-exception v0

    goto :goto_a7

    :catchall_ee
    move-exception v0

    move-object v1, v8

    :goto_f0
    if-eqz v1, :cond_f5

    :try_start_f2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_ff

    :cond_f5
    :try_start_f5
    iget-object v1, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_fe} :catch_102
    .catchall {:try_start_f5 .. :try_end_fe} :catchall_ff

    :goto_fe
    :try_start_fe
    throw v0
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_ff

    :catchall_ff
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_102
    move-exception v1

    goto :goto_fe

    :catchall_104
    move-exception v0

    goto :goto_f0

    :catch_106
    move-exception v0

    move-object v1, v8

    goto :goto_d8

    :catch_109
    move-exception v0

    goto :goto_a7

    :cond_10b
    move v0, v10

    goto/16 :goto_50
.end method

.method private b(Ljava/util/List;IZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wxop/stat/bd;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v9, 0x0

    :try_start_1
    invoke-direct {p0, p3}, Lcom/tencent/wxop/stat/au;->d(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    const/4 v2, 0x0

    const-string v3, "status=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_9e
    .catchall {:try_start_1 .. :try_end_1f} :catchall_91

    move-result-object v7

    :goto_20
    :try_start_20
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->g:Z

    if-nez v0, :cond_38

    invoke-static {v4}, Lcom/tencent/wxop/stat/common/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_38
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v1, Lcom/tencent/wxop/stat/bd;

    invoke-direct/range {v1 .. v6}, Lcom/tencent/wxop/stat/bd;-><init>(JLjava/lang/String;II)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_7a

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "peek event, id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",send_count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_7a
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_7d} :catch_7e
    .catchall {:try_start_20 .. :try_end_7d} :catchall_99

    goto :goto_20

    :catch_7e
    move-exception v0

    move-object v1, v7

    :goto_80
    :try_start_80
    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_9b

    if-eqz v1, :cond_8a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8a
    :goto_8a
    return-void

    :cond_8b
    if-eqz v7, :cond_8a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_8a

    :catchall_91
    move-exception v0

    move-object v7, v9

    :goto_93
    if-eqz v7, :cond_98

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_98
    throw v0

    :catchall_99
    move-exception v0

    goto :goto_93

    :catchall_9b
    move-exception v0

    move-object v7, v1

    goto :goto_93

    :catch_9e
    move-exception v0

    move-object v1, v9

    goto :goto_80
.end method

.method private c(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->d:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_8
.end method

.method private d(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->d:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_8
.end method

.method static synthetic e()Lcom/tencent/wxop/stat/common/StatLogger;
    .registers 1

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    return-object v0
.end method

.method private f()V
    .registers 3

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->g()I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->h()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    return-void
.end method

.method private g()I
    .registers 3

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private h()I
    .registers 3

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->d:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private i()V
    .registers 10

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/au;->m:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v2, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    :try_start_9
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_16

    monitor-exit v2

    goto :goto_5

    :catchall_13
    move-exception v0

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    const/4 v0, 0x1

    :try_start_17
    iput-boolean v0, p0, Lcom/tencent/wxop/stat/au;->m:Z

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insert "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events ,numEventsCachedInMemory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/wxop/stat/StatConfig;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",numStoredEvents:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_17 .. :try_end_51} :catchall_13

    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_116

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/wxop/stat/a/e;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/a/e;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v6

    if-eqz v6, :cond_99

    sget-object v6, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "insert content:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_99
    invoke-static {v5}, Lcom/tencent/wxop/stat/common/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "send_count"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "timestamp"

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/a/e;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "events"

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_c9} :catch_ca
    .catchall {:try_start_51 .. :try_end_c9} :catchall_130

    goto :goto_64

    :catch_ca
    move-exception v0

    :try_start_cb
    sget-object v3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v3, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_d0
    .catchall {:try_start_cb .. :try_end_d0} :catchall_130

    if-eqz v1, :cond_d8

    :try_start_d2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->f()V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_d8} :catch_129
    .catchall {:try_start_d2 .. :try_end_d8} :catchall_13

    :cond_d8
    :goto_d8
    const/4 v0, 0x0

    :try_start_d9
    iput-boolean v0, p0, Lcom/tencent/wxop/stat/au;->m:Z

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_113

    sget-object v0, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "after insert, cacheEventsInMemory.size():"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/wxop/stat/au;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",numEventsCachedInMemory:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/tencent/wxop/stat/StatConfig;->m:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",numStoredEvents:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/tencent/wxop/stat/au;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_113
    monitor-exit v2
    :try_end_114
    .catchall {:try_start_d9 .. :try_end_114} :catchall_13

    goto/16 :goto_5

    :cond_116
    :try_start_116
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_119
    .catch Ljava/lang/Throwable; {:try_start_116 .. :try_end_119} :catch_ca
    .catchall {:try_start_116 .. :try_end_119} :catchall_130

    if-eqz v1, :cond_d8

    :try_start_11b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->f()V
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_11b .. :try_end_121} :catch_122
    .catchall {:try_start_11b .. :try_end_121} :catchall_13

    goto :goto_d8

    :catch_122
    move-exception v0

    :try_start_123
    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_d8

    :catch_129
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_12f
    .catchall {:try_start_123 .. :try_end_12f} :catchall_13

    goto :goto_d8

    :catchall_130
    move-exception v0

    if-eqz v1, :cond_139

    :try_start_133
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/au;->f()V
    :try_end_139
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_139} :catch_13a
    .catchall {:try_start_133 .. :try_end_139} :catchall_13

    :cond_139
    :goto_139
    :try_start_139
    throw v0

    :catch_13a
    move-exception v1

    sget-object v3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v3, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_140
    .catchall {:try_start_139 .. :try_end_140} :catchall_13

    goto :goto_139
.end method

.method private j()V
    .registers 10

    const/4 v8, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "keyvalues"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_45
    .catchall {:try_start_1 .. :try_end_12} :catchall_3b

    move-result-object v1

    :goto_13
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->n:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_28} :catch_29
    .catchall {:try_start_13 .. :try_end_28} :catchall_43

    goto :goto_13

    :catch_29
    move-exception v0

    :goto_2a
    :try_start_2a
    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_43

    if-eqz v1, :cond_34

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_34
    :goto_34
    return-void

    :cond_35
    if-eqz v1, :cond_34

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_34

    :catchall_3b
    move-exception v0

    move-object v1, v8

    :goto_3d
    if-eqz v1, :cond_42

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_42
    throw v0

    :catchall_43
    move-exception v0

    goto :goto_3d

    :catch_45
    move-exception v0

    move-object v1, v8

    goto :goto_2a
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/tencent/wxop/stat/au;->a:I

    return v0
.end method

.method a(I)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/bb;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wxop/stat/bb;-><init>(Lcom/tencent/wxop/stat/au;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lcom/tencent/wxop/stat/a/e;Lcom/tencent/wxop/stat/h;ZZ)V
    .registers 12

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    if-eqz v0, :cond_13

    iget-object v6, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    new-instance v0, Lcom/tencent/wxop/stat/ay;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/wxop/stat/ay;-><init>(Lcom/tencent/wxop/stat/au;Lcom/tencent/wxop/stat/a/e;Lcom/tencent/wxop/stat/h;ZZ)V

    invoke-virtual {v6, v0}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method a(Lcom/tencent/wxop/stat/f;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/az;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wxop/stat/az;-><init>(Lcom/tencent/wxop/stat/au;Lcom/tencent/wxop/stat/f;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method a(Ljava/util/List;IZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wxop/stat/bd;",
            ">;IZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    if-eqz v0, :cond_13

    iget-object v6, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    new-instance v0, Lcom/tencent/wxop/stat/av;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/wxop/stat/av;-><init>(Lcom/tencent/wxop/stat/au;Ljava/util/List;IZZ)V

    invoke-virtual {v6, v0}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method a(Ljava/util/List;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/wxop/stat/bd;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/aw;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/wxop/stat/aw;-><init>(Lcom/tencent/wxop/stat/au;Ljava/util/List;ZZ)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public declared-synchronized b(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/a;
    .registers 21

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/wxop/stat/au;->b:Lcom/tencent/wxop/stat/common/a;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/wxop/stat/au;->b:Lcom/tencent/wxop/stat/common/a;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1f5

    :goto_b
    monitor-exit p0

    return-object v2

    :cond_d
    const/4 v11, 0x0

    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v3, "try to load user info from db."

    invoke-virtual {v2, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_3a} :catch_1f8
    .catchall {:try_start_e .. :try_end_3a} :catchall_217

    move-result-object v5

    const/4 v2, 0x0

    :try_start_3c
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_12d

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/wxop/stat/common/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v2, 0x2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const/4 v2, 0x1

    if-eq v9, v2, :cond_249

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    invoke-static {v12, v13}, Lcom/tencent/wxop/stat/common/k;->a(J)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/tencent/wxop/stat/common/k;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_249

    const/4 v2, 0x1

    :goto_7c
    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/k;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_246

    or-int/lit8 v2, v2, 0x2

    move v8, v2

    :goto_89
    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x0

    if-eqz v11, :cond_1c0

    array-length v3, v11

    if-lez v3, :cond_1c0

    const/4 v3, 0x0

    aget-object v4, v11, v3

    if-eqz v4, :cond_a2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v12, 0xb

    if-ge v3, v12, :cond_23f

    :cond_a2
    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xa

    if-le v12, v13, :cond_23c

    const/4 v2, 0x1

    :goto_b1
    move-object v4, v7

    move-object v7, v3

    :goto_b3
    if-eqz v11, :cond_1c8

    array-length v3, v11

    const/4 v12, 0x2

    if-lt v3, v12, :cond_1c8

    const/4 v3, 0x1

    aget-object v3, v11, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_d3
    :goto_d3
    new-instance v11, Lcom/tencent/wxop/stat/common/a;

    invoke-direct {v11, v7, v3, v8}, Lcom/tencent/wxop/stat/common/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/tencent/wxop/stat/au;->b:Lcom/tencent/wxop/stat/common/a;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4}, Lcom/tencent/wxop/stat/common/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "uid"

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "user_type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "app_ver"

    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/k;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ts"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v2, :cond_11c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "user"

    const-string v7, "uid=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-virtual {v2, v4, v3, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_11c
    if-eq v8, v9, :cond_12c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v4, "user"

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_12c
    move v2, v6

    :cond_12d
    if-nez v2, :cond_19f

    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_239

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_239

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/k;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v2}, Lcom/tencent/wxop/stat/common/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "uid"

    invoke-virtual {v9, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_type"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "app_ver"

    invoke-virtual {v9, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ts"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v6, "user"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance v2, Lcom/tencent/wxop/stat/common/a;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6}, Lcom/tencent/wxop/stat/common/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/wxop/stat/au;->b:Lcom/tencent/wxop/stat/common/a;

    :cond_19f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1aa
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_1aa} :catch_236
    .catchall {:try_start_3c .. :try_end_1aa} :catchall_231

    if-eqz v5, :cond_1af

    :try_start_1ac
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1ba
    .catch Ljava/lang/Throwable; {:try_start_1ac .. :try_end_1ba} :catch_1ee
    .catchall {:try_start_1ac .. :try_end_1ba} :catchall_1f5

    :goto_1ba
    :try_start_1ba
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/wxop/stat/au;->b:Lcom/tencent/wxop/stat/common/a;
    :try_end_1be
    .catchall {:try_start_1ba .. :try_end_1be} :catchall_1f5

    goto/16 :goto_b

    :cond_1c0
    :try_start_1c0
    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    move-object v7, v4

    goto/16 :goto_b3

    :cond_1c8
    invoke-static/range {p1 .. p1}, Lcom/tencent/wxop/stat/common/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_d3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1ea
    .catch Ljava/lang/Throwable; {:try_start_1c0 .. :try_end_1ea} :catch_236
    .catchall {:try_start_1c0 .. :try_end_1ea} :catchall_231

    move-result-object v4

    const/4 v2, 0x1

    goto/16 :goto_d3

    :catch_1ee
    move-exception v2

    :try_start_1ef
    sget-object v3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v3, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1f4
    .catchall {:try_start_1ef .. :try_end_1f4} :catchall_1f5

    goto :goto_1ba

    :catchall_1f5
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_1f8
    move-exception v2

    move-object v3, v11

    :goto_1fa
    :try_start_1fa
    sget-object v4, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v4, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1ff
    .catchall {:try_start_1fa .. :try_end_1ff} :catchall_233

    if-eqz v3, :cond_204

    :try_start_201
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_20f
    .catch Ljava/lang/Throwable; {:try_start_201 .. :try_end_20f} :catch_210
    .catchall {:try_start_201 .. :try_end_20f} :catchall_1f5

    goto :goto_1ba

    :catch_210
    move-exception v2

    :try_start_211
    sget-object v3, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v3, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_216
    .catchall {:try_start_211 .. :try_end_216} :catchall_1f5

    goto :goto_1ba

    :catchall_217
    move-exception v2

    move-object v5, v11

    :goto_219
    if-eqz v5, :cond_21e

    :try_start_21b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_21e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v3}, Lcom/tencent/wxop/stat/bc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_229
    .catch Ljava/lang/Throwable; {:try_start_21b .. :try_end_229} :catch_22a
    .catchall {:try_start_21b .. :try_end_229} :catchall_1f5

    :goto_229
    :try_start_229
    throw v2

    :catch_22a
    move-exception v3

    sget-object v4, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v4, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_230
    .catchall {:try_start_229 .. :try_end_230} :catchall_1f5

    goto :goto_229

    :catchall_231
    move-exception v2

    goto :goto_219

    :catchall_233
    move-exception v2

    move-object v5, v3

    goto :goto_219

    :catch_236
    move-exception v2

    move-object v3, v5

    goto :goto_1fa

    :cond_239
    move-object v2, v3

    goto/16 :goto_156

    :cond_23c
    move-object v3, v4

    goto/16 :goto_b1

    :cond_23f
    move-object/from16 v18, v4

    move-object v4, v7

    move-object/from16 v7, v18

    goto/16 :goto_b3

    :cond_246
    move v8, v2

    goto/16 :goto_89

    :cond_249
    move v2, v9

    goto/16 :goto_7c
.end method

.method c()V
    .registers 3

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->e:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/ax;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/ax;-><init>(Lcom/tencent/wxop/stat/au;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_11} :catch_12

    goto :goto_6

    :catch_12
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method d()V
    .registers 10

    const/4 v8, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/wxop/stat/au;->c:Lcom/tencent/wxop/stat/bc;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/bc;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "config"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_61
    .catchall {:try_start_1 .. :try_end_12} :catchall_57

    move-result-object v1

    :goto_13
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-instance v5, Lcom/tencent/wxop/stat/f;

    invoke-direct {v5, v0}, Lcom/tencent/wxop/stat/f;-><init>(I)V

    iput v0, v5, Lcom/tencent/wxop/stat/f;->a:I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v5, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    iput-object v3, v5, Lcom/tencent/wxop/stat/f;->c:Ljava/lang/String;

    iput v4, v5, Lcom/tencent/wxop/stat/f;->d:I

    sget-object v0, Lcom/tencent/wxop/stat/au;->i:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/tencent/wxop/stat/StatConfig;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_44} :catch_45
    .catchall {:try_start_13 .. :try_end_44} :catchall_5f

    goto :goto_13

    :catch_45
    move-exception v0

    :goto_46
    :try_start_46
    sget-object v2, Lcom/tencent/wxop/stat/au;->h:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_5f

    if-eqz v1, :cond_50

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_50
    :goto_50
    return-void

    :cond_51
    if-eqz v1, :cond_50

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_50

    :catchall_57
    move-exception v0

    move-object v1, v8

    :goto_59
    if-eqz v1, :cond_5e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5e
    throw v0

    :catchall_5f
    move-exception v0

    goto :goto_59

    :catch_61
    move-exception v0

    move-object v1, v8

    goto :goto_46
.end method
