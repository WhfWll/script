.class Lss/ss/ss/d$c;
.super Lss/ss/f;

# interfaces
.implements Lss/ss/ss/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final b:Lss/ss/ss/b;

.field final synthetic c:Lss/ss/ss/d;


# direct methods
.method private constructor <init>(Lss/ss/ss/d;Lss/ss/ss/b;)V
    .registers 7

    iput-object p1, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lss/ss/ss/d;->a(Lss/ss/ss/d;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lss/ss/f;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lss/ss/ss/d$c;->b:Lss/ss/ss/b;

    return-void
.end method

.method synthetic constructor <init>(Lss/ss/ss/d;Lss/ss/ss/b;Lss/ss/ss/e;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lss/ss/ss/d$c;-><init>(Lss/ss/ss/d;Lss/ss/ss/b;)V

    return-void
.end method

.method private a(Lss/ss/ss/ac;)V
    .registers 8

    invoke-static {}, Lss/ss/ss/d;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lss/ss/ss/o;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v5}, Lss/ss/ss/d;->a(Lss/ss/ss/d;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lss/ss/ss/o;-><init>(Lss/ss/ss/d$c;Ljava/lang/String;[Ljava/lang/Object;Lss/ss/ss/ac;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 6

    sget-object v0, Lss/ss/ss/a;->g:Lss/ss/ss/a;

    sget-object v2, Lss/ss/ss/a;->g:Lss/ss/ss/a;

    :try_start_4
    iget-object v1, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    iget-boolean v1, v1, Lss/ss/ss/d;->b:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lss/ss/ss/d$c;->b:Lss/ss/ss/b;

    invoke-interface {v1}, Lss/ss/ss/b;->a()V

    :cond_f
    iget-object v1, p0, Lss/ss/ss/d$c;->b:Lss/ss/ss/b;

    invoke-interface {v1, p0}, Lss/ss/ss/b;->a(Lss/ss/ss/b$a;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v0, Lss/ss/ss/a;->a:Lss/ss/ss/a;

    sget-object v1, Lss/ss/ss/a;->l:Lss/ss/ss/a;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1b} :catch_26
    .catchall {:try_start_4 .. :try_end_1b} :catchall_36

    :try_start_1b
    iget-object v2, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v2, v0, v1}, Lss/ss/ss/d;->a(Lss/ss/ss/d;Lss/ss/ss/a;Lss/ss/ss/a;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_4b

    :goto_20
    iget-object v0, p0, Lss/ss/ss/d$c;->b:Lss/ss/ss/b;

    invoke-static {v0}, Lss/ss/j;->a(Ljava/io/Closeable;)V

    :goto_25
    return-void

    :catch_26
    move-exception v1

    :try_start_27
    sget-object v1, Lss/ss/ss/a;->b:Lss/ss/ss/a;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_36

    :try_start_29
    sget-object v0, Lss/ss/ss/a;->b:Lss/ss/ss/a;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_47

    :try_start_2b
    iget-object v2, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v2, v1, v0}, Lss/ss/ss/d;->a(Lss/ss/ss/d;Lss/ss/ss/a;Lss/ss/ss/a;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_49

    :goto_30
    iget-object v0, p0, Lss/ss/ss/d$c;->b:Lss/ss/ss/b;

    invoke-static {v0}, Lss/ss/j;->a(Ljava/io/Closeable;)V

    goto :goto_25

    :catchall_36
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3a
    :try_start_3a
    iget-object v3, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v3, v1, v2}, Lss/ss/ss/d;->a(Lss/ss/ss/d;Lss/ss/ss/a;Lss/ss/ss/a;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_45

    :goto_3f
    iget-object v1, p0, Lss/ss/ss/d$c;->b:Lss/ss/ss/b;

    invoke-static {v1}, Lss/ss/j;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_45
    move-exception v1

    goto :goto_3f

    :catchall_47
    move-exception v0

    goto :goto_3a

    :catch_49
    move-exception v0

    goto :goto_30

    :catch_4b
    move-exception v0

    goto :goto_20
.end method

.method public a(IIIZ)V
    .registers 5

    return-void
.end method

.method public a(IILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0, p2, p3}, Lss/ss/ss/d;->a(Lss/ss/ss/d;ILjava/util/List;)V

    return-void
.end method

.method public a(IJ)V
    .registers 8

    if-nez p1, :cond_16

    iget-object v1, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    iget-wide v2, v0, Lss/ss/ss/d;->d:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lss/ss/ss/d;->d:J

    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :cond_12
    :goto_12
    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-virtual {v0, p1}, Lss/ss/ss/d;->a(I)Lss/ss/ss/p;

    move-result-object v1

    if-eqz v1, :cond_12

    monitor-enter v1

    :try_start_1f
    invoke-virtual {v1, p2, p3}, Lss/ss/ss/p;->a(J)V

    monitor-exit v1

    goto :goto_12

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw v0
.end method

.method public a(ILss/ss/ss/a;)V
    .registers 4

    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0, p1}, Lss/ss/ss/d;->a(Lss/ss/ss/d;I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0, p1, p2}, Lss/ss/ss/d;->a(Lss/ss/ss/d;ILss/ss/ss/a;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-virtual {v0, p1}, Lss/ss/ss/d;->b(I)Lss/ss/ss/p;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, p2}, Lss/ss/ss/p;->c(Lss/ss/ss/a;)V

    goto :goto_d
.end method

.method public a(ILss/ss/ss/a;LgK/h;)V
    .registers 9

    invoke-virtual {p3}, LgK/h;->f()I

    move-result v0

    if-lez v0, :cond_6

    :cond_6
    iget-object v1, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->e(Lss/ss/ss/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v2}, Lss/ss/ss/d;->e(Lss/ss/ss/d;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lss/ss/ss/p;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lss/ss/ss/p;

    iget-object v2, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lss/ss/ss/d;->b(Lss/ss/ss/d;Z)Z

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_4f

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v2, :cond_52

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lss/ss/ss/p;->a()I

    move-result v4

    if-le v4, p1, :cond_4c

    invoke-virtual {v3}, Lss/ss/ss/p;->c()Z

    move-result v4

    if-eqz v4, :cond_4c

    sget-object v4, Lss/ss/ss/a;->k:Lss/ss/ss/a;

    invoke-virtual {v3, v4}, Lss/ss/ss/p;->c(Lss/ss/ss/a;)V

    iget-object v4, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-virtual {v3}, Lss/ss/ss/p;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Lss/ss/ss/d;->b(I)Lss/ss/ss/p;

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0

    :cond_52
    return-void
.end method

.method public a(ZII)V
    .registers 7

    if-eqz p1, :cond_e

    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0, p2}, Lss/ss/ss/d;->c(Lss/ss/ss/d;I)Lss/ss/ss/z;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lss/ss/ss/z;->b()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, p3, v2}, Lss/ss/ss/d;->b(Lss/ss/ss/d;ZIILss/ss/ss/z;)V

    goto :goto_d
.end method

.method public a(ZILgK/g;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0, p2}, Lss/ss/ss/d;->a(Lss/ss/ss/d;I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0, p2, p3, p4, p1}, Lss/ss/ss/d;->a(Lss/ss/ss/d;ILgK/g;IZ)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-virtual {v0, p2}, Lss/ss/ss/d;->a(I)Lss/ss/ss/p;

    move-result-object v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    sget-object v1, Lss/ss/ss/a;->c:Lss/ss/ss/a;

    invoke-virtual {v0, p2, v1}, Lss/ss/ss/d;->a(ILss/ss/ss/a;)V

    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, LgK/g;->g(J)V

    goto :goto_d

    :cond_22
    invoke-virtual {v0, p3, p4}, Lss/ss/ss/p;->a(LgK/g;I)V

    if-eqz p1, :cond_d

    invoke-virtual {v0}, Lss/ss/ss/p;->i()V

    goto :goto_d
.end method

.method public a(ZLss/ss/ss/ac;)V
    .registers 16

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v8, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    monitor-enter v8

    :try_start_7
    iget-object v2, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    iget-object v2, v2, Lss/ss/ss/d;->f:Lss/ss/ss/ac;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lss/ss/ss/ac;->f(I)I

    move-result v2

    if-eqz p1, :cond_1a

    iget-object v3, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    iget-object v3, v3, Lss/ss/ss/d;->f:Lss/ss/ss/ac;

    invoke-virtual {v3}, Lss/ss/ss/ac;->a()V

    :cond_1a
    iget-object v3, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    iget-object v3, v3, Lss/ss/ss/d;->f:Lss/ss/ss/ac;

    invoke-virtual {v3, p2}, Lss/ss/ss/ac;->a(Lss/ss/ss/ac;)V

    iget-object v3, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-virtual {v3}, Lss/ss/ss/d;->a()Lss/ae;

    move-result-object v3

    sget-object v4, Lss/ae;->d:Lss/ae;

    if-ne v3, v4, :cond_2e

    invoke-direct {p0, p2}, Lss/ss/ss/d$c;->a(Lss/ss/ss/ac;)V

    :cond_2e
    iget-object v3, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    iget-object v3, v3, Lss/ss/ss/d;->f:Lss/ss/ss/ac;

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Lss/ss/ss/ac;->f(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b6

    if-eq v3, v2, :cond_b6

    sub-int v2, v3, v2

    int-to-long v2, v2

    iget-object v4, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v4}, Lss/ss/ss/d;->g(Lss/ss/ss/d;)Z

    move-result v4

    if-nez v4, :cond_53

    iget-object v4, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-virtual {v4, v2, v3}, Lss/ss/ss/d;->a(J)V

    iget-object v4, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lss/ss/ss/d;->a(Lss/ss/ss/d;Z)Z

    :cond_53
    iget-object v4, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v4}, Lss/ss/ss/d;->e(Lss/ss/ss/d;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b3

    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->e(Lss/ss/ss/d;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v4}, Lss/ss/ss/d;->e(Lss/ss/ss/d;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lss/ss/ss/p;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lss/ss/ss/p;

    move-wide v4, v2

    move-object v2, v0

    :goto_7d
    invoke-static {}, Lss/ss/ss/d;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lss/ss/ss/n;

    const-string v9, "OkHttp %s settings"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v12}, Lss/ss/ss/d;->a(Lss/ss/ss/d;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v3, p0, v9, v10}, Lss/ss/ss/n;-><init>(Lss/ss/ss/d$c;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v8
    :try_end_98
    .catchall {:try_start_7 .. :try_end_98} :catchall_ac

    if-eqz v2, :cond_b2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_b2

    array-length v3, v2

    move v0, v1

    :goto_a0
    if-ge v0, v3, :cond_b2

    aget-object v1, v2, v0

    monitor-enter v1

    :try_start_a5
    invoke-virtual {v1, v4, v5}, Lss/ss/ss/p;->a(J)V

    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_af

    add-int/lit8 v0, v0, 0x1

    goto :goto_a0

    :catchall_ac
    move-exception v0

    :try_start_ad
    monitor-exit v8
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v0

    :catchall_af
    move-exception v0

    :try_start_b0
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw v0

    :cond_b2
    return-void

    :cond_b3
    move-wide v4, v2

    move-object v2, v0

    goto :goto_7d

    :cond_b6
    move-object v2, v0

    move-wide v4, v6

    goto :goto_7d
.end method

.method public a(ZZIILjava/util/List;Lss/ss/ss/s;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;",
            "Lss/ss/ss/s;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0, p3}, Lss/ss/ss/d;->a(Lss/ss/ss/d;I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0, p3, p5, p2}, Lss/ss/ss/d;->a(Lss/ss/ss/d;ILjava/util/List;Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v6, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    monitor-enter v6

    :try_start_11
    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->b(Lss/ss/ss/d;)Z

    move-result v0

    if-eqz v0, :cond_1e

    monitor-exit v6

    goto :goto_d

    :catchall_1b
    move-exception v0

    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-virtual {v0, p3}, Lss/ss/ss/d;->a(I)Lss/ss/ss/p;

    move-result-object v0

    if-nez v0, :cond_8d

    invoke-virtual {p6}, Lss/ss/ss/s;->a()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    sget-object v1, Lss/ss/ss/a;->c:Lss/ss/ss/a;

    invoke-virtual {v0, p3, v1}, Lss/ss/ss/d;->a(ILss/ss/ss/a;)V

    monitor-exit v6

    goto :goto_d

    :cond_35
    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->c(Lss/ss/ss/d;)I

    move-result v0

    if-gt p3, v0, :cond_3f

    monitor-exit v6

    goto :goto_d

    :cond_3f
    rem-int/lit8 v0, p3, 0x2

    iget-object v1, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v1}, Lss/ss/ss/d;->d(Lss/ss/ss/d;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_4d

    monitor-exit v6

    goto :goto_d

    :cond_4d
    new-instance v0, Lss/ss/ss/p;

    iget-object v2, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lss/ss/ss/p;-><init>(ILss/ss/ss/d;ZZLjava/util/List;)V

    iget-object v1, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v1, p3}, Lss/ss/ss/d;->b(Lss/ss/ss/d;I)I

    iget-object v1, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v1}, Lss/ss/ss/d;->e(Lss/ss/ss/d;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lss/ss/ss/d;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lss/ss/ss/m;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-static {v7}, Lss/ss/ss/d;->a(Lss/ss/ss/d;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lss/ss/ss/m;-><init>(Lss/ss/ss/d$c;Ljava/lang/String;[Ljava/lang/Object;Lss/ss/ss/p;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v6

    goto :goto_d

    :cond_8d
    monitor-exit v6
    :try_end_8e
    .catchall {:try_start_1e .. :try_end_8e} :catchall_1b

    invoke-virtual {p6}, Lss/ss/ss/s;->b()Z

    move-result v1

    if-eqz v1, :cond_a0

    sget-object v1, Lss/ss/ss/a;->b:Lss/ss/ss/a;

    invoke-virtual {v0, v1}, Lss/ss/ss/p;->b(Lss/ss/ss/a;)V

    iget-object v0, p0, Lss/ss/ss/d$c;->c:Lss/ss/ss/d;

    invoke-virtual {v0, p3}, Lss/ss/ss/d;->b(I)Lss/ss/ss/p;

    goto/16 :goto_d

    :cond_a0
    invoke-virtual {v0, p5, p6}, Lss/ss/ss/p;->a(Ljava/util/List;Lss/ss/ss/s;)V

    if-eqz p2, :cond_d

    invoke-virtual {v0}, Lss/ss/ss/p;->i()V

    goto/16 :goto_d
.end method

.method public b()V
    .registers 1

    return-void
.end method
