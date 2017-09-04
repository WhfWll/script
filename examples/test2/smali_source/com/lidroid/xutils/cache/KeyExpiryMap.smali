.class public Lcom/lidroid/xutils/cache/KeyExpiryMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "KeyExpiryMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<TK;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 43
    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 44
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 39
    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 40
    return-void
.end method

.method public constructor <init>(IFI)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .prologue
    .line 35
    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 86
    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 87
    monitor-exit p0

    return-void

    .line 86
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 69
    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    monitor-enter p0

    const/4 v1, 0x0

    .line 70
    .local v1, "result":Z
    :try_start_2
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 71
    .local v0, "expiryTimestamp":Ljava/lang/Long;
    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_1d

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_19

    .line 72
    const/4 v1, 0x1

    .line 76
    :goto_17
    monitor-exit p0

    return v1

    .line 74
    :cond_19
    :try_start_19
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_17

    .line 69
    .end local v0    # "expiryTimestamp":Ljava/lang/Long;
    :catchall_1d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 52
    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 53
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    .line 55
    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 52
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->get(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 4
    .param p2, "expiryTimestamp"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 62
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;

    .line 64
    :cond_a
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 61
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->put(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
