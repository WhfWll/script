.class public Lcn/domob/android/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcn/domob/android/f/c;


# instance fields
.field private b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/f/c;->a:Lcn/domob/android/f/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcn/domob/android/f/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcn/domob/android/f/c;->c:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/domob/android/f/c;->d:Ljava/util/Map;

    .line 41
    return-void
.end method

.method public static a()Lcn/domob/android/f/c;
    .registers 2

    .prologue
    .line 23
    sget-object v0, Lcn/domob/android/f/c;->a:Lcn/domob/android/f/c;

    if-nez v0, :cond_13

    .line 24
    const-class v1, Lcn/domob/android/f/c;

    monitor-enter v1

    .line 25
    :try_start_7
    sget-object v0, Lcn/domob/android/f/c;->a:Lcn/domob/android/f/c;

    if-nez v0, :cond_12

    .line 26
    new-instance v0, Lcn/domob/android/f/c;

    invoke-direct {v0}, Lcn/domob/android/f/c;-><init>()V

    sput-object v0, Lcn/domob/android/f/c;->a:Lcn/domob/android/f/c;

    .line 28
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 30
    :cond_13
    sget-object v0, Lcn/domob/android/f/c;->a:Lcn/domob/android/f/c;

    return-object v0

    .line 28
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcn/domob/android/f/f;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 181
    if-eqz p1, :cond_26

    .line 182
    invoke-virtual {p1}, Lcn/domob/android/f/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 190
    :cond_26
    :goto_26
    return-object p0

    .line 186
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_26
.end method

.method private b(Lcn/domob/android/f/e;)Lcn/domob/android/f/h;
    .registers 6

    .prologue
    .line 156
    new-instance v0, Lcn/domob/android/f/d;

    invoke-direct {v0, p1}, Lcn/domob/android/f/d;-><init>(Lcn/domob/android/f/e;)V

    .line 157
    invoke-virtual {p1}, Lcn/domob/android/f/e;->a()Landroid/content/Context;

    move-result-object v1

    .line 158
    invoke-virtual {p1}, Lcn/domob/android/f/e;->e()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 160
    invoke-virtual {v0}, Lcn/domob/android/f/d;->a()Lcn/domob/android/f/h;

    move-result-object v0

    .line 177
    :goto_13
    return-object v0

    .line 163
    :cond_14
    iget-object v2, p0, Lcn/domob/android/f/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 164
    if-eqz v1, :cond_38

    .line 166
    iget-object v0, p0, Lcn/domob/android/f/c;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 167
    if-nez v0, :cond_30

    .line 168
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 169
    iget-object v3, p0, Lcn/domob/android/f/c;->c:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_30
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_38
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/android/f/h;
    .registers 5

    .prologue
    .line 126
    new-instance v0, Lcn/domob/android/f/e;

    invoke-direct {v0}, Lcn/domob/android/f/e;-><init>()V

    .line 127
    invoke-virtual {v0, p1}, Lcn/domob/android/f/e;->a(Landroid/content/Context;)Lcn/domob/android/f/e;

    .line 128
    invoke-virtual {v0, p2}, Lcn/domob/android/f/e;->a(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 129
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcn/domob/android/f/e;->c(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/e;->a(Z)Lcn/domob/android/f/e;

    .line 131
    invoke-virtual {p0, v0}, Lcn/domob/android/f/c;->a(Lcn/domob/android/f/e;)Lcn/domob/android/f/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcn/domob/android/f/e;)Lcn/domob/android/f/h;
    .registers 3

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcn/domob/android/f/c;->b(Lcn/domob/android/f/e;)Lcn/domob/android/f/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/f/f;Lcn/domob/android/f/g;)V
    .registers 7

    .prologue
    .line 118
    new-instance v0, Lcn/domob/android/f/e;

    invoke-direct {v0}, Lcn/domob/android/f/e;-><init>()V

    .line 119
    invoke-virtual {v0, p2}, Lcn/domob/android/f/e;->a(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 120
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcn/domob/android/f/e;->c(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 121
    invoke-virtual {v0, p4}, Lcn/domob/android/f/e;->a(Lcn/domob/android/f/g;)Lcn/domob/android/f/e;

    .line 122
    invoke-virtual {p0, v0}, Lcn/domob/android/f/c;->a(Lcn/domob/android/f/e;)Lcn/domob/android/f/h;

    .line 123
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/f/g;)V
    .registers 6

    .prologue
    .line 101
    new-instance v0, Lcn/domob/android/f/e;

    invoke-direct {v0}, Lcn/domob/android/f/e;-><init>()V

    .line 102
    invoke-virtual {v0, p2}, Lcn/domob/android/f/e;->a(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 103
    invoke-virtual {v0, p3}, Lcn/domob/android/f/e;->a(Lcn/domob/android/f/g;)Lcn/domob/android/f/e;

    .line 104
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcn/domob/android/f/e;->c(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 105
    invoke-virtual {p0, v0}, Lcn/domob/android/f/c;->a(Lcn/domob/android/f/e;)Lcn/domob/android/f/h;

    .line 106
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/f/g;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 109
    new-instance v0, Lcn/domob/android/f/e;

    invoke-direct {v0}, Lcn/domob/android/f/e;-><init>()V

    .line 110
    invoke-virtual {v0, p2}, Lcn/domob/android/f/e;->a(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 111
    invoke-virtual {v0, p3}, Lcn/domob/android/f/e;->a(Lcn/domob/android/f/g;)Lcn/domob/android/f/e;

    .line 112
    invoke-virtual {v0, p4}, Lcn/domob/android/f/e;->b(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 113
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcn/domob/android/f/e;->c(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 114
    invoke-virtual {p0, v0}, Lcn/domob/android/f/c;->a(Lcn/domob/android/f/e;)Lcn/domob/android/f/h;

    .line 115
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 5

    .prologue
    .line 84
    iget-object v0, p0, Lcn/domob/android/f/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 85
    if-eqz v0, :cond_26

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 87
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 88
    if-eqz v0, :cond_e

    .line 89
    invoke-interface {v0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_e

    .line 93
    :cond_26
    iget-object v0, p0, Lcn/domob/android/f/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcn/domob/android/f/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public a(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcn/domob/android/f/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 53
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/f/f;Lcn/domob/android/f/g;)V
    .registers 6

    .prologue
    .line 135
    new-instance v0, Lcn/domob/android/f/e;

    invoke-direct {v0}, Lcn/domob/android/f/e;-><init>()V

    .line 136
    invoke-virtual {v0, p1}, Lcn/domob/android/f/e;->a(Landroid/content/Context;)Lcn/domob/android/f/e;

    .line 137
    invoke-virtual {v0, p2}, Lcn/domob/android/f/e;->a(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 138
    invoke-virtual {v0, p3}, Lcn/domob/android/f/e;->a(Lcn/domob/android/f/f;)Lcn/domob/android/f/e;

    .line 139
    invoke-virtual {v0, p4}, Lcn/domob/android/f/e;->a(Lcn/domob/android/f/g;)Lcn/domob/android/f/e;

    .line 140
    invoke-virtual {p0, v0}, Lcn/domob/android/f/c;->a(Lcn/domob/android/f/e;)Lcn/domob/android/f/h;

    .line 141
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/f/f;Lcn/domob/android/f/g;)V
    .registers 7

    .prologue
    .line 144
    new-instance v0, Lcn/domob/android/f/e;

    invoke-direct {v0}, Lcn/domob/android/f/e;-><init>()V

    .line 145
    invoke-virtual {v0, p1}, Lcn/domob/android/f/e;->a(Landroid/content/Context;)Lcn/domob/android/f/e;

    .line 146
    invoke-virtual {v0, p2}, Lcn/domob/android/f/e;->a(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 147
    invoke-virtual {v0, p3}, Lcn/domob/android/f/e;->a(Lcn/domob/android/f/f;)Lcn/domob/android/f/e;

    .line 148
    invoke-virtual {v0, p4}, Lcn/domob/android/f/e;->a(Lcn/domob/android/f/g;)Lcn/domob/android/f/e;

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/e;->b(Z)Lcn/domob/android/f/e;

    .line 150
    invoke-virtual {p0, v0}, Lcn/domob/android/f/c;->a(Lcn/domob/android/f/e;)Lcn/domob/android/f/h;

    .line 151
    return-void
.end method
