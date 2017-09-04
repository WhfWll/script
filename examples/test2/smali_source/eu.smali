.class final Leu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private final a:Lev;

.field private final a:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final a:Lorg/apache/http/protocol/HttpContext;

.field private a:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lev;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Leu;->a:Lorg/apache/http/protocol/HttpContext;

    iput-object p3, p0, Leu;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p4, p0, Leu;->a:Lev;

    instance-of v0, p4, Lex;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu;->a:Z

    :cond_12
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Leu;->a:Lev;

    if-eqz v0, :cond_a

    iget-object v0, p0, Leu;->a:Lev;

    invoke-virtual {v0}, Lev;->a()V

    :cond_a
    const/4 v0, 0x1

    iget-object v2, p0, Leu;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_53

    move-result-object v3

    move v2, v0

    move-object v0, v1

    :goto_13
    if-eqz v2, :cond_b9

    :try_start_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Leu;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Leu;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v4, p0, Leu;->a:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v2, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Leu;->a:Lev;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Leu;->a:Lev;

    invoke-virtual {v2, v0}, Lev;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_3c
    .catch Ljava/net/UnknownHostException; {:try_start_15 .. :try_end_3c} :catch_46
    .catch Ljava/net/SocketException; {:try_start_15 .. :try_end_3c} :catch_67
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_3c} :catch_74
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3c} :catch_81
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_3c} :catch_8f

    :cond_3c
    :goto_3c
    :try_start_3c
    iget-object v0, p0, Leu;->a:Lev;

    if-eqz v0, :cond_45

    iget-object v0, p0, Leu;->a:Lev;

    invoke-virtual {v0}, Lev;->b()V

    :cond_45
    :goto_45
    return-void

    :catch_46
    move-exception v0

    iget-object v2, p0, Leu;->a:Lev;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Leu;->a:Lev;

    const-string v3, "can\'t resolve host"

    invoke-virtual {v2, v0, v3}, Lev;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_52} :catch_53

    goto :goto_3c

    :catch_53
    move-exception v0

    iget-object v2, p0, Leu;->a:Lev;

    if-eqz v2, :cond_45

    iget-object v2, p0, Leu;->a:Lev;

    invoke-virtual {v2}, Lev;->b()V

    iget-boolean v2, p0, Leu;->a:Z

    if-eqz v2, :cond_c2

    iget-object v2, p0, Leu;->a:Lev;

    invoke-virtual {v2, v0, v1}, Lev;->a(Ljava/lang/Throwable;[B)V

    goto :goto_45

    :catch_67
    move-exception v0

    :try_start_68
    iget-object v2, p0, Leu;->a:Lev;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Leu;->a:Lev;

    const-string v3, "can\'t resolve host"

    invoke-virtual {v2, v0, v3}, Lev;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3c

    :catch_74
    move-exception v0

    iget-object v2, p0, Leu;->a:Lev;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Leu;->a:Lev;

    const-string v3, "socket time out"

    invoke-virtual {v2, v0, v3}, Lev;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3c

    :catch_81
    move-exception v0

    iget v2, p0, Leu;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Leu;->a:I

    iget-object v4, p0, Leu;->a:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v2, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    goto :goto_13

    :catch_8f
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NPE in HttpClient"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Leu;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Leu;->a:I

    iget-object v4, p0, Leu;->a:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v2, v0, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    goto/16 :goto_13

    :cond_b9
    new-instance v2, Ljava/net/ConnectException;

    invoke-direct {v2}, Ljava/net/ConnectException;-><init>()V

    invoke-virtual {v2, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_c2} :catch_53

    :cond_c2
    iget-object v2, p0, Leu;->a:Lev;

    invoke-virtual {v2, v0, v1}, Lev;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_45
.end method
