.class public Lcom/tencent/wxop/stat/common/b;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/tencent/wxop/stat/common/d;

.field private static d:Lcom/tencent/wxop/stat/common/StatLogger;

.field private static e:Lorg/json/JSONObject;


# instance fields
.field b:Ljava/lang/Integer;

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/tencent/wxop/stat/common/k;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/common/b;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/common/b;->e:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/b;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/b;->c:Ljava/lang/String;

    :try_start_8
    invoke-static {p1}, Lcom/tencent/wxop/stat/common/b;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->m(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/b;->b:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/b;->c:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/common/b;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/d;
    .registers 5

    const-class v1, Lcom/tencent/wxop/stat/common/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/wxop/stat/common/b;->a:Lcom/tencent/wxop/stat/common/d;

    if-nez v0, :cond_13

    new-instance v0, Lcom/tencent/wxop/stat/common/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/tencent/wxop/stat/common/d;-><init>(Landroid/content/Context;Lcom/tencent/wxop/stat/common/c;)V

    sput-object v0, Lcom/tencent/wxop/stat/common/b;->a:Lcom/tencent/wxop/stat/common/d;

    :cond_13
    sget-object v0, Lcom/tencent/wxop/stat/common/b;->a:Lcom/tencent/wxop/stat/common/d;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v3, Lcom/tencent/wxop/stat/common/b;->e:Lorg/json/JSONObject;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_10
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/Thread;)V
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    sget-object v1, Lcom/tencent/wxop/stat/common/b;->a:Lcom/tencent/wxop/stat/common/d;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/tencent/wxop/stat/common/b;->a:Lcom/tencent/wxop/stat/common/d;

    invoke-virtual {v1, v0, p2}, Lcom/tencent/wxop/stat/common/d;->a(Lorg/json/JSONObject;Ljava/lang/Thread;)V

    :cond_e
    const-string v1, "cn"

    iget-object v2, p0, Lcom/tencent/wxop/stat/common/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/wxop/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/wxop/stat/common/b;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    const-string v1, "tn"

    iget-object v2, p0, Lcom/tencent/wxop/stat/common/b;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_20
    if-nez p2, :cond_3b

    const-string v1, "ev"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_27
    sget-object v0, Lcom/tencent/wxop/stat/common/b;->e:Lorg/json/JSONObject;

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/tencent/wxop/stat/common/b;->e:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3a

    const-string v0, "eva"

    sget-object v1, Lcom/tencent/wxop/stat/common/b;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    const-string v1, "errkv"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_27

    :catch_45
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/common/b;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_3a
.end method
