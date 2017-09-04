.class public Lcom/sdu/didi/openapi/ss/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdu/didi/openapi/ss/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/sdu/didi/openapi/ss/a;


# instance fields
.field private b:Lss/ac;


# direct methods
.method private constructor <init>()V
    .registers 7

    const-wide/16 v4, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lss/ac$a;

    invoke-direct {v0}, Lss/ac$a;-><init>()V

    new-instance v1, Lcom/sdu/didi/openapi/ss/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "didi.sdk"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdu/didi/openapi/utils/Utils;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sdu/didi/openapi/ss/a$a;-><init>(Lcom/sdu/didi/openapi/ss/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lss/ac$a;->a(Lss/aa;)Lss/ac$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lss/ac$a;->a(JLjava/util/concurrent/TimeUnit;)Lss/ac$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lss/ac$a;->b(JLjava/util/concurrent/TimeUnit;)Lss/ac$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lss/ac$a;->c(JLjava/util/concurrent/TimeUnit;)Lss/ac$a;

    invoke-virtual {v0}, Lss/ac$a;->a()Lss/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/sdu/didi/openapi/ss/a;->b:Lss/ac;

    return-void
.end method

.method public static declared-synchronized a()Lcom/sdu/didi/openapi/ss/a;
    .registers 2

    const-class v1, Lcom/sdu/didi/openapi/ss/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sdu/didi/openapi/ss/a;->a:Lcom/sdu/didi/openapi/ss/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/sdu/didi/openapi/ss/a;

    invoke-direct {v0}, Lcom/sdu/didi/openapi/ss/a;-><init>()V

    sput-object v0, Lcom/sdu/didi/openapi/ss/a;->a:Lcom/sdu/didi/openapi/ss/a;

    :cond_e
    sget-object v0, Lcom/sdu/didi/openapi/ss/a;->a:Lcom/sdu/didi/openapi/ss/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    new-instance v2, Lss/ag$a;

    invoke-direct {v2}, Lss/ag$a;-><init>()V

    invoke-static {p1}, Lss/y;->e(Ljava/lang/String;)Lss/y;

    move-result-object v0

    invoke-virtual {v0}, Lss/y;->m()Lss/y$a;

    move-result-object v3

    if-eqz p2, :cond_40

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lss/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/y$a;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_1d

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, ""

    :goto_3f
    return-object v0

    :cond_40
    :try_start_40
    invoke-virtual {v3}, Lss/y$a;->c()Lss/y;

    move-result-object v0

    invoke-virtual {v2, v0}, Lss/ag$a;->a(Lss/y;)Lss/ag$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ag$a;->a()Lss/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/ss/a;->b:Lss/ac;

    invoke-virtual {v1, v0}, Lss/ac;->a(Lss/ag;)Lss/g;

    move-result-object v0

    invoke-interface {v0}, Lss/g;->a()Lss/ak;

    move-result-object v0

    invoke-virtual {v0}, Lss/ak;->c()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {v0}, Lss/ak;->f()Lss/am;

    move-result-object v0

    invoke-virtual {v0}, Lss/am;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :cond_65
    const-string v0, ""
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_67} :catch_39

    goto :goto_3f
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lss/ag$a;

    invoke-direct {v0}, Lss/ag$a;-><init>()V

    const-string v1, "application/x-www-form-urlencoded"

    invoke-static {v1}, Lss/ab;->a(Ljava/lang/String;)Lss/ab;

    move-result-object v1

    invoke-static {p2}, Lcom/sdu/didi/openapi/utils/Utils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lss/ai;->a(Lss/ab;Ljava/lang/String;)Lss/ai;

    move-result-object v1

    invoke-virtual {v0, p1}, Lss/ag$a;->a(Ljava/lang/String;)Lss/ag$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lss/ag$a;->a(Lss/ai;)Lss/ag$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/ag$a;->a()Lss/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/ss/a;->b:Lss/ac;

    invoke-virtual {v1, v0}, Lss/ac;->a(Lss/ag;)Lss/g;

    move-result-object v0

    invoke-interface {v0}, Lss/g;->a()Lss/ak;

    move-result-object v0

    invoke-virtual {v0}, Lss/ak;->c()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lss/ak;->f()Lss/am;

    move-result-object v0

    invoke-virtual {v0}, Lss/am;->e()Ljava/lang/String;

    move-result-object v0

    :goto_37
    return-object v0

    :cond_38
    const-string v0, ""
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_37

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, ""

    goto :goto_37
.end method
