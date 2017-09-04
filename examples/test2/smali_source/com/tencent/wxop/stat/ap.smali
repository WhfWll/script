.class Lcom/tencent/wxop/stat/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/ap;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/wxop/stat/ap;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/wxop/stat/ap;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    iput-object p1, p0, Lcom/tencent/wxop/stat/ap;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/wxop/stat/ap;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    if-eqz p2, :cond_12

    iput-object p2, p0, Lcom/tencent/wxop/stat/ap;->b:Ljava/util/Map;

    :cond_12
    return-void
.end method

.method private a(Ljava/lang/String;I)Lcom/tencent/wxop/stat/NetworkMonitor;
    .registers 11

    new-instance v2, Lcom/tencent/wxop/stat/NetworkMonitor;

    invoke-direct {v2}, Lcom/tencent/wxop/stat/NetworkMonitor;-><init>()V

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    const/4 v0, 0x0

    :try_start_b
    invoke-virtual {v2, p1}, Lcom/tencent/wxop/stat/NetworkMonitor;->setDomain(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/tencent/wxop/stat/NetworkMonitor;->setPort(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0x7530

    invoke-virtual {v3, v1, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v2, v4, v5}, Lcom/tencent/wxop/stat/NetworkMonitor;->setMillisecondsConsume(J)V

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/NetworkMonitor;->setRemoteIp(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_36} :catch_46
    .catchall {:try_start_b .. :try_end_36} :catchall_5d

    :try_start_36
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_3d

    :goto_39
    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/NetworkMonitor;->setStatusCode(I)V

    return-object v2

    :catch_3d
    move-exception v1

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_39

    :catch_46
    move-exception v0

    move-object v1, v0

    const/4 v0, -0x1

    :try_start_49
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_5d

    :try_start_50
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_39

    :catch_54
    move-exception v1

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_39

    :catchall_5d
    move-exception v0

    :try_start_5e
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_62

    :goto_61
    throw v0

    :catch_62
    move-exception v1

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_61
.end method

.method private a()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "__MTA_TEST_SPEED__"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/wxop/stat/StatConfig;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1a

    :cond_19
    return-object v0

    :cond_1a
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_22
    if-ge v2, v5, :cond_19

    aget-object v1, v4, v2

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_52

    array-length v6, v1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_52

    aget-object v6, v1, v3

    if-eqz v6, :cond_52

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_52

    const/4 v7, 0x1

    :try_start_41
    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_4a} :catch_56

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    :goto_52
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_22

    :catch_56
    move-exception v1

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_52
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/ap;->b:Ljava/util/Map;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/tencent/wxop/stat/ap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/ap;->b:Ljava/util/Map;

    :cond_a
    iget-object v0, p0, Lcom/tencent/wxop/stat/ap;->b:Ljava/util/Map;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/wxop/stat/ap;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_20

    :cond_16
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "empty domain list."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/tencent/wxop/stat/ap;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5c

    :cond_49
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "empty domain name."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_2f

    :catch_53
    move-exception v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1f

    :cond_5c
    :try_start_5c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_7b

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "port is null for "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_7b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/tencent/wxop/stat/ap;->a(Ljava/lang/String;I)Lcom/tencent/wxop/stat/NetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/NetworkMonitor;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2f

    :cond_97
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/tencent/wxop/stat/a/j;

    iget-object v1, p0, Lcom/tencent/wxop/stat/ap;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/wxop/stat/ap;->a:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/wxop/stat/ap;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-static {v2, v4, v5}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/wxop/stat/StatSpecifyReportedInfo;)I

    move-result v2

    iget-object v4, p0, Lcom/tencent/wxop/stat/ap;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-direct {v0, v1, v2, v4}, Lcom/tencent/wxop/stat/a/j;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/a/j;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/wxop/stat/aq;

    invoke-direct {v1, v0}, Lcom/tencent/wxop/stat/aq;-><init>(Lcom/tencent/wxop/stat/a/e;)V

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/aq;->a()V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_be} :catch_53

    goto/16 :goto_1f
.end method
