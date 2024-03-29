.class public Lcom/lidroid/xutils/http/client/RetryHandler;
.super Ljava/lang/Object;
.source "RetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field private static final RETRY_SLEEP_INTERVAL:I = 0x1f4

.field private static exceptionBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static exceptionWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final maxRetries:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    .line 43
    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "maxRetries"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/lidroid/xutils/http/client/RetryHandler;->maxRetries:I

    .line 55
    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 16
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "retriedTimes"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    const/4 v8, 0x0

    .line 59
    const/4 v7, 0x1

    .line 61
    .local v7, "retry":Z
    if-eqz p1, :cond_6

    if-nez p3, :cond_7

    .line 103
    :cond_6
    :goto_6
    return v8

    .line 65
    :cond_7
    const-string v9, "http.request_sent"

    invoke-interface {p3, v9}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 66
    .local v4, "isReqSent":Ljava/lang/Object;
    if-nez v4, :cond_39

    .line 68
    .end local v4    # "isReqSent":Ljava/lang/Object;
    .local v8, "sent":Z
    :goto_f
    iget v9, p0, Lcom/lidroid/xutils/http/client/RetryHandler;->maxRetries:I

    if-le p2, v9, :cond_40

    .line 69
    const/4 v7, 0x0

    .line 78
    :cond_14
    :goto_14
    if-eqz v7, :cond_30

    .line 80
    :try_start_16
    const-string v9, "http.request"

    invoke-interface {p3, v9}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, "currRequest":Ljava/lang/Object;
    if-eqz v2, :cond_73

    .line 82
    instance-of v9, v2, Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v9, :cond_60

    .line 83
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    move-object v5, v0

    .line 84
    .local v5, "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    const-string v9, "GET"

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2f} :catch_7a

    move-result v7

    .line 99
    .end local v2    # "currRequest":Ljava/lang/Object;
    .end local v5    # "requestBase":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_30
    :goto_30
    if-eqz v7, :cond_37

    .line 100
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    :cond_37
    move v8, v7

    .line 103
    goto :goto_6

    .line 66
    .end local v8    # "sent":Z
    .restart local v4    # "isReqSent":Ljava/lang/Object;
    :cond_39
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "isReqSent":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_f

    .line 70
    .restart local v8    # "sent":Z
    :cond_40
    sget-object v9, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 71
    const/4 v7, 0x0

    .line 72
    goto :goto_14

    :cond_4e
    sget-object v9, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 73
    const/4 v7, 0x1

    .line 74
    goto :goto_14

    :cond_5c
    if-nez v8, :cond_14

    .line 75
    const/4 v7, 0x1

    goto :goto_14

    .line 85
    .restart local v2    # "currRequest":Ljava/lang/Object;
    :cond_60
    :try_start_60
    instance-of v9, v2, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v9, :cond_30

    .line 86
    move-object v0, v2

    check-cast v0, Lorg/apache/http/impl/client/RequestWrapper;

    move-object v6, v0

    .line 87
    .local v6, "requestWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    const-string v9, "GET"

    invoke-virtual {v6}, Lorg/apache/http/impl/client/RequestWrapper;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 89
    goto :goto_30

    .line 90
    .end local v6    # "requestWrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :cond_73
    const/4 v7, 0x0

    .line 91
    const-string v9, "retry error, curr request is null"

    invoke-static {v9}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_79} :catch_7a

    goto :goto_30

    .line 93
    .end local v2    # "currRequest":Ljava/lang/Object;
    :catch_7a
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 95
    const-string v9, "retry error"

    invoke-static {v9, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30
.end method
