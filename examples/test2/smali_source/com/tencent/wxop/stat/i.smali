.class Lcom/tencent/wxop/stat/i;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/tencent/wxop/stat/common/StatLogger;

.field private static e:Lcom/tencent/wxop/stat/i;

.field private static f:Landroid/content/Context;


# instance fields
.field a:Lorg/apache/http/impl/client/DefaultHttpClient;

.field b:Lcom/tencent/wxop/stat/common/e;

.field c:Ljava/lang/StringBuilder;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/wxop/stat/common/k;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    sput-object v1, Lcom/tencent/wxop/stat/i;->e:Lcom/tencent/wxop/stat/i;

    sput-object v1, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/i;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    iput-object v0, p0, Lcom/tencent/wxop/stat/i;->b:Lcom/tencent/wxop/stat/common/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/wxop/stat/i;->g:J

    :try_start_15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/wxop/stat/i;->g:J

    new-instance v0, Lcom/tencent/wxop/stat/common/e;

    invoke-direct {v0}, Lcom/tencent/wxop/stat/common/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/i;->b:Lcom/tencent/wxop/stat/common/e;

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_2e} :catch_8f

    move-result v0

    if-eqz v0, :cond_6a

    :try_start_31
    const-string v0, "org.apache.http.wire"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    const-string v0, "org.apache.http.headers"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    const-string v0, "org.apache.commons.logging.Log"

    const-string v1, "org.apache.commons.logging.impl.SimpleLog"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.commons.logging.simplelog.showdatetime"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.commons.logging.simplelog.log.httpclient.wire"

    const-string v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.commons.logging.simplelog.log.org.apache.http"

    const-string v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "org.apache.commons.logging.simplelog.log.org.apache.http.headers"

    const-string v1, "debug"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_6a} :catch_96

    :cond_6a
    :goto_6a
    :try_start_6a
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/tencent/wxop/stat/i;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v0, p0, Lcom/tencent/wxop/stat/i;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/tencent/wxop/stat/j;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/j;-><init>(Lcom/tencent/wxop/stat/i;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_8e} :catch_8f

    :goto_8e
    return-void

    :catch_8f
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_8e

    :catch_96
    move-exception v0

    goto :goto_6a
.end method

.method static a()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 10

    :try_start_0
    const-string v0, "mid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/a/a/a/a/h;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update mid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_26
    sget-object v1, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/a/a/a/a/g;->E(Landroid/content/Context;)Lcom/tencent/a/a/a/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/a/a/a/a/g;->a(Ljava/lang/String;)V

    :cond_2f
    const-string v0, "cfg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "cfg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/wxop/stat/StatConfig;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_42
    const-string v0, "ncts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_88

    const-string v0, "ncts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_7e

    sget-object v2, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "server time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", diff time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_7e
    sget-object v0, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->z(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/wxop/stat/common/k;->a(Landroid/content/Context;I)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_88} :catch_89

    :cond_88
    :goto_88
    return-void

    :catch_89
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_88
.end method

.method static b(Landroid/content/Context;)Lcom/tencent/wxop/stat/i;
    .registers 3

    sget-object v0, Lcom/tencent/wxop/stat/i;->e:Lcom/tencent/wxop/stat/i;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/wxop/stat/i;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/wxop/stat/i;->e:Lcom/tencent/wxop/stat/i;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/wxop/stat/i;

    invoke-direct {v0, p0}, Lcom/tencent/wxop/stat/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/wxop/stat/i;->e:Lcom/tencent/wxop/stat/i;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tencent/wxop/stat/i;->e:Lcom/tencent/wxop/stat/i;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method a(Lcom/tencent/wxop/stat/a/e;Lcom/tencent/wxop/stat/h;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/tencent/wxop/stat/a/e;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/wxop/stat/i;->b(Ljava/util/List;Lcom/tencent/wxop/stat/h;)V

    return-void
.end method

.method a(Ljava/util/List;Lcom/tencent/wxop/stat/h;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/tencent/wxop/stat/h;",
            ")V"
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    :try_start_14
    iget-object v0, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "rc4"

    move v0, v2

    :goto_2a
    if-ge v0, v3, :cond_47

    iget-object v5, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x1

    if-eq v0, v5, :cond_44

    iget-object v5, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_47
    iget-object v0, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getStatReportUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/?index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/tencent/wxop/stat/i;->g:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/tencent/wxop/stat/i;->g:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/wxop/stat/i;->g:J

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v6

    if-eqz v6, :cond_aa

    sget-object v6, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]Send request("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes), content:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_aa
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v5, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v6, v5, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v6, v5, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Cache-Control"

    invoke-virtual {v6, v5}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/wxop/stat/a;->a()Lorg/apache/http/HttpHost;

    move-result-object v5

    const-string v7, "Content-Encoding"

    invoke-virtual {v6, v7, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_1e8

    iget-object v7, p0, Lcom/tencent/wxop/stat/i;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.route.default-proxy"

    invoke-interface {v7, v8}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    :goto_de
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v8, v0

    sget v9, Lcom/tencent/wxop/stat/StatConfig;->o:I

    if-le v3, v9, :cond_ef

    const/4 v2, 0x1

    :cond_ef
    if-eqz v2, :cond_163

    const-string v2, "Content-Encoding"

    invoke-virtual {v6, v2}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",gzip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Content-Encoding"

    invoke-virtual {v6, v3, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_11a

    const-string v3, "X-Content-Encoding"

    invoke-virtual {v6, v3}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    const-string v3, "X-Content-Encoding"

    invoke-virtual {v6, v3, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11a
    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_163

    sget-object v2, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "before Gzip:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes, after Gzip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_163
    invoke-static {v0}, Lcom/tencent/wxop/stat/common/f;->a([B)[B

    move-result-object v0

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v6, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/i;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v6

    if-eqz v6, :cond_1a9

    sget-object v6, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http recv response status code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", content length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1a9
    cmp-long v6, v4, v10

    if-gtz v6, :cond_22f

    sget-object v2, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v3, "Server response no data."

    invoke-virtual {v2, v3}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    if-eqz p2, :cond_1b9

    invoke-interface {p2}, Lcom/tencent/wxop/stat/h;->b()V

    :cond_1b9
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1bc
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1bc} :catch_1be
    .catchall {:try_start_14 .. :try_end_1bc} :catchall_22d

    goto/16 :goto_c

    :catch_1be
    move-exception v0

    :goto_1bf
    if-eqz v0, :cond_c

    sget-object v2, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1cb

    :try_start_1c8
    invoke-interface {p2}, Lcom/tencent/wxop/stat/h;->b()V
    :try_end_1cb
    .catch Ljava/lang/Throwable; {:try_start_1c8 .. :try_end_1cb} :catch_31c

    :cond_1cb
    :goto_1cb
    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_1dd

    invoke-static {}, Ljava/lang/System;->gc()V

    iput-object v1, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/wxop/stat/i;->c:Ljava/lang/StringBuilder;

    :cond_1dd
    sget-object v0, Lcom/tencent/wxop/stat/i;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/a;->d()V

    goto/16 :goto_c

    :cond_1e8
    :try_start_1e8
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v7

    if-eqz v7, :cond_206

    sget-object v7, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "proxy:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_206
    const-string v7, "X-Content-Encoding"

    invoke-virtual {v6, v7, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/wxop/stat/i;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.route.default-proxy"

    invoke-interface {v7, v8, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v7, "X-Online-Host"

    sget-object v8, Lcom/tencent/wxop/stat/StatConfig;->k:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Accept"

    const-string v8, "*/*"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-Type"

    const-string v8, "json"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22b
    .catch Ljava/lang/Throwable; {:try_start_1e8 .. :try_end_22b} :catch_1be
    .catchall {:try_start_1e8 .. :try_end_22b} :catchall_22d

    goto/16 :goto_de

    :catchall_22d
    move-exception v0

    throw v0

    :cond_22f
    cmp-long v4, v4, v10

    if-lez v4, :cond_318

    :try_start_233
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    long-to-int v0, v8

    new-array v0, v0, [B

    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    const-string v5, "Content-Encoding"

    invoke-interface {v2, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_268

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip,rc4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2ab

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/f;->b([B)[B

    move-result-object v0

    :cond_268
    :goto_268
    new-instance v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v2, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v5

    if-eqz v5, :cond_289

    sget-object v5, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "http get response data:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_289
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-ne v3, v2, :cond_2ed

    invoke-direct {p0, v5}, Lcom/tencent/wxop/stat/i;->a(Lorg/json/JSONObject;)V

    if-eqz p2, :cond_2a2

    const-string v0, "ret"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2e2

    invoke-interface {p2}, Lcom/tencent/wxop/stat/h;->a()V

    :cond_2a2
    :goto_2a2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :goto_2a5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    move-object v0, v1

    goto/16 :goto_1bf

    :cond_2ab
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rc4,gzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c0

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/f;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->a([B)[B

    move-result-object v0

    goto :goto_268

    :cond_2c0
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d1

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->a([B)[B

    move-result-object v0

    goto :goto_268

    :cond_2d1
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v5, "rc4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_268

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/f;->b([B)[B

    move-result-object v0

    goto :goto_268

    :cond_2e2
    sget-object v0, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v2, "response error data."

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/tencent/wxop/stat/h;->b()V

    goto :goto_2a2

    :cond_2ed
    sget-object v2, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Server response error code:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", error:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    if-eqz p2, :cond_2a2

    invoke-interface {p2}, Lcom/tencent/wxop/stat/h;->b()V

    goto :goto_2a2

    :cond_318
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_31b
    .catch Ljava/lang/Throwable; {:try_start_233 .. :try_end_31b} :catch_1be
    .catchall {:try_start_233 .. :try_end_31b} :catchall_22d

    goto :goto_2a5

    :catch_31c
    move-exception v2

    sget-object v3, Lcom/tencent/wxop/stat/i;->d:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v3, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1cb
.end method

.method b(Ljava/util/List;Lcom/tencent/wxop/stat/h;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/tencent/wxop/stat/h;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/wxop/stat/i;->b:Lcom/tencent/wxop/stat/common/e;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/wxop/stat/i;->b:Lcom/tencent/wxop/stat/common/e;

    new-instance v1, Lcom/tencent/wxop/stat/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/wxop/stat/k;-><init>(Lcom/tencent/wxop/stat/i;Ljava/util/List;Lcom/tencent/wxop/stat/h;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/e;->a(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method
