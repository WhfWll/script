.class public Lcom/lidroid/xutils/http/HttpHandler;
.super Lcom/lidroid/xutils/task/PriorityAsyncTask;
.source "HttpHandler.java"

# interfaces
.implements Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;,
        Lcom/lidroid/xutils/http/HttpHandler$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lidroid/xutils/task/PriorityAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;"
    }
.end annotation


# static fields
.field private static final UPDATE_FAILURE:I = 0x3

.field private static final UPDATE_LOADING:I = 0x2

.field private static final UPDATE_START:I = 0x1

.field private static final UPDATE_SUCCESS:I = 0x4

.field private static final notUseApacheRedirectHandler:Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;


# instance fields
.field private autoRename:Z

.field private autoResume:Z

.field private callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<TT;>;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private expiry:J

.field private fileSavePath:Ljava/lang/String;

.field private httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

.field private isDownloadingFile:Z

.field private isUploading:Z

.field private lastUpdateTime:J

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;

.field private requestMethod:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;

.field private retriedCount:I

.field private state:Lcom/lidroid/xutils/http/HttpHandler$State;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 344
    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;-><init>(Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler;->notUseApacheRedirectHandler:Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
    .registers 7
    .param p1, "client"    # Lorg/apache/http/impl/client/AbstractHttpClient;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/AbstractHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    .local p4, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<TT;>;"
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->isUploading:Z

    .line 59
    iput v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    .line 62
    iput-boolean v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    .line 63
    iput-boolean v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoRename:Z

    .line 74
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->WAITING:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    .line 80
    invoke-static {}, Lcom/lidroid/xutils/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->expiry:J

    .line 67
    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 68
    iput-object p2, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    .line 69
    iput-object p4, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    .line 70
    iput-object p3, p0, Lcom/lidroid/xutils/http/HttpHandler;->charset:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler;->notUseApacheRedirectHandler:Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 72
    return-void
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseInfo;
    .registers 16
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 227
    if-nez p1, :cond_c

    .line 228
    new-instance v2, Lcom/lidroid/xutils/exception/HttpException;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_c
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/HttpHandler;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 266
    :cond_12
    :goto_12
    return-object v5

    .line 232
    :cond_13
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 233
    .local v8, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 234
    .local v9, "statusCode":I
    const/16 v2, 0x12c

    if-ge v9, v2, :cond_79

    .line 235
    const/4 v7, 0x0

    .line 236
    .local v7, "result":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 237
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_4f

    .line 238
    iput-boolean v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->isUploading:Z

    .line 239
    iget-boolean v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    if-eqz v2, :cond_57

    .line 240
    iget-boolean v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    if-eqz v2, :cond_55

    invoke-static {p1}, Lcom/lidroid/xutils/util/OtherUtils;->isSupportRange(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x1

    :goto_37
    iput-boolean v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    .line 241
    iget-boolean v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoRename:Z

    if-eqz v2, :cond_41

    invoke-static {p1}, Lcom/lidroid/xutils/util/OtherUtils;->getFileNameFromHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "responseFileName":Ljava/lang/String;
    :cond_41
    new-instance v0, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;-><init>()V

    .line 243
    .local v0, "downloadHandler":Lcom/lidroid/xutils/http/callback/FileDownloadHandler;
    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 252
    .end local v0    # "downloadHandler":Lcom/lidroid/xutils/http/callback/FileDownloadHandler;
    .end local v5    # "responseFileName":Ljava/lang/String;
    .end local v7    # "result":Ljava/lang/Object;
    :cond_4f
    :goto_4f
    new-instance v5, Lcom/lidroid/xutils/http/ResponseInfo;

    invoke-direct {v5, p1, v7, v10}, Lcom/lidroid/xutils/http/ResponseInfo;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    goto :goto_12

    .restart local v7    # "result":Ljava/lang/Object;
    :cond_55
    move v2, v10

    .line 240
    goto :goto_37

    .line 245
    :cond_57
    new-instance v0, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;-><init>()V

    .line 246
    .local v0, "downloadHandler":Lcom/lidroid/xutils/http/callback/StringDownloadHandler;
    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, v2}, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "result":Ljava/lang/String;
    sget-object v2, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 248
    sget-object v3, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    move-object v2, v7

    check-cast v2, Ljava/lang/String;

    iget-wide v12, p0, Lcom/lidroid/xutils/http/HttpHandler;->expiry:J

    invoke-virtual {v3, v4, v2, v12, v13}, Lcom/lidroid/xutils/http/HttpCache;->put(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_4f

    .line 253
    .end local v0    # "downloadHandler":Lcom/lidroid/xutils/http/callback/StringDownloadHandler;
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v7    # "result":Ljava/lang/String;
    :cond_79
    const/16 v2, 0x12d

    if-eq v9, v2, :cond_81

    const/16 v2, 0x12e

    if-ne v9, v2, :cond_9a

    .line 254
    :cond_81
    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    if-nez v2, :cond_8c

    .line 255
    new-instance v2, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;

    invoke-direct {v2}, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;-><init>()V

    iput-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 257
    :cond_8c
    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    invoke-interface {v2, p1}, Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;->getDirectRequest(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v6

    .line 258
    .local v6, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    if-eqz v6, :cond_12

    .line 259
    invoke-direct {p0, v6}, Lcom/lidroid/xutils/http/HttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;

    move-result-object v5

    goto/16 :goto_12

    .line 261
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_9a
    const/16 v2, 0x1a0

    if-ne v9, v2, :cond_a6

    .line 262
    new-instance v2, Lcom/lidroid/xutils/exception/HttpException;

    const-string v3, "maybe the file has downloaded completely"

    invoke-direct {v2, v9, v3}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 264
    :cond_a6
    new-instance v2, Lcom/lidroid/xutils/exception/HttpException;

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v9, v3}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;
    .registers 15
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            ")",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/HttpException;
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    iget-object v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v10}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v9

    .line 101
    .local v9, "retryHandler":Lorg/apache/http/client/HttpRequestRetryHandler;
    :cond_6
    iget-boolean v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    if-eqz v10, :cond_47

    iget-boolean v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    if-eqz v10, :cond_47

    .line 102
    new-instance v0, Ljava/io/File;

    iget-object v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "downloadFile":Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 104
    .local v4, "fileLen":J
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_27

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 107
    :cond_27
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_47

    .line 108
    const-string v10, "RANGE"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "bytes="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v0    # "downloadFile":Ljava/io/File;
    .end local v4    # "fileLen":J
    :cond_47
    const/4 v8, 0x1

    .line 113
    .local v8, "retry":Z
    const/4 v2, 0x0

    .line 115
    .local v2, "exception":Ljava/io/IOException;
    :try_start_49
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestMethod:Ljava/lang/String;

    .line 116
    sget-object v10, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v11, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6b

    .line 117
    sget-object v10, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v11, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/lidroid/xutils/http/HttpCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "result":Ljava/lang/String;
    if-eqz v7, :cond_6b

    .line 119
    new-instance v6, Lcom/lidroid/xutils/http/ResponseInfo;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {v6, v10, v7, v11}, Lcom/lidroid/xutils/http/ResponseInfo;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    .line 128
    .end local v7    # "result":Ljava/lang/String;
    :cond_6a
    :goto_6a
    return-object v6

    .line 123
    :cond_6b
    const/4 v6, 0x0

    .line 124
    .local v6, "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<TT;>;"
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/HttpHandler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_6a

    .line 125
    iget-object v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v11, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v10, p1, v11}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 126
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v3}, Lcom/lidroid/xutils/http/HttpHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseInfo;
    :try_end_7d
    .catch Ljava/net/UnknownHostException; {:try_start_49 .. :try_end_7d} :catch_7f
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_7d} :catch_95
    .catch Ljava/lang/NullPointerException; {:try_start_49 .. :try_end_7d} :catch_a4
    .catch Lcom/lidroid/xutils/exception/HttpException; {:try_start_49 .. :try_end_7d} :catch_be
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_7d} :catch_c0

    move-result-object v6

    goto :goto_6a

    .line 129
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<TT;>;"
    :catch_7f
    move-exception v1

    .line 130
    .local v1, "e":Ljava/net/UnknownHostException;
    move-object v2, v1

    .line 131
    iget v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    iget-object v11, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v9, v2, v10, v11}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v8

    .line 146
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_8d
    if-nez v8, :cond_6

    .line 147
    new-instance v10, Lcom/lidroid/xutils/exception/HttpException;

    invoke-direct {v10, v2}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 132
    :catch_95
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    .line 134
    iget v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    iget-object v11, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v9, v2, v10, v11}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v8

    goto :goto_8d

    .line 135
    .end local v1    # "e":Ljava/io/IOException;
    :catch_a4
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/io/IOException;

    .end local v2    # "exception":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v2    # "exception":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    iget v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    iget-object v11, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v9, v2, v10, v11}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v8

    goto :goto_8d

    .line 139
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_be
    move-exception v1

    .line 140
    .local v1, "e":Lcom/lidroid/xutils/exception/HttpException;
    throw v1

    .line 141
    .end local v1    # "e":Lcom/lidroid/xutils/exception/HttpException;
    :catch_c0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/io/IOException;

    .end local v2    # "exception":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v2    # "exception":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    iget v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    iget-object v11, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v9, v2, v10, v11}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v8

    goto :goto_8d
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 274
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    .line 276
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    if-nez v0, :cond_15

    .line 278
    :try_start_10
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_2b

    .line 282
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/HttpHandler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 284
    const/4 v0, 0x1

    :try_start_1c
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/HttpHandler;->cancel(Z)Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_29

    .line 289
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-eqz v0, :cond_28

    .line 290
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onCancelled()V

    .line 292
    :cond_28
    return-void

    .line 285
    :catch_29
    move-exception v0

    goto :goto_1f

    .line 279
    :catch_2b
    move-exception v0

    goto :goto_15
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/http/HttpHandler;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 13
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 154
    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v5, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v2, v5, :cond_10

    if-eqz p1, :cond_10

    array-length v2, p1

    if-nez v2, :cond_11

    .line 185
    :cond_10
    :goto_10
    return-object v9

    .line 156
    :cond_11
    array-length v2, p1

    if-le v2, v8, :cond_37

    .line 157
    aget-object v2, p1, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    .line 158
    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    if-eqz v2, :cond_9f

    move v2, v3

    :goto_21
    iput-boolean v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    .line 159
    aget-object v2, p1, v10

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    .line 160
    aget-object v2, p1, v8

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoRename:Z

    .line 164
    :cond_37
    :try_start_37
    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v5, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v2, v5, :cond_10

    .line 166
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 167
    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-eqz v2, :cond_5b

    .line 169
    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    iget-object v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->setRequestUrl(Ljava/lang/String;)V

    .line 172
    :cond_5b
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->lastUpdateTime:J

    .line 176
    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v2}, Lcom/lidroid/xutils/http/HttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;

    move-result-object v1

    .line 177
    .local v1, "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<TT;>;"
    if-eqz v1, :cond_10

    .line 178
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    aput-object v1, v2, v5

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V
    :try_end_88
    .catch Lcom/lidroid/xutils/exception/HttpException; {:try_start_37 .. :try_end_88} :catch_89

    goto :goto_10

    .line 181
    .end local v1    # "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<TT;>;"
    :catch_89
    move-exception v0

    .line 182
    .local v0, "e":Lcom/lidroid/xutils/exception/HttpException;
    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object v0, v2, v3

    invoke-virtual {v0}, Lcom/lidroid/xutils/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_10

    .end local v0    # "e":Lcom/lidroid/xutils/exception/HttpException;
    :cond_9f
    move v2, v4

    .line 158
    goto :goto_21
.end method

.method public getRequestCallBack()Lcom/lidroid/xutils/http/callback/RequestCallBack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    return-object v0
.end method

.method public getState()Lcom/lidroid/xutils/http/HttpHandler$State;
    .registers 2

    .prologue
    .line 77
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .registers 9
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 196
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v0, v1, :cond_12

    if-eqz p1, :cond_12

    array-length v0, p1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-nez v0, :cond_13

    .line 223
    :cond_12
    :goto_12
    return-void

    .line 197
    :cond_13
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_7c

    goto :goto_12

    .line 199
    :pswitch_20
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->STARTED:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    .line 200
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onStart()V

    goto :goto_12

    .line 203
    :pswitch_2a
    array-length v0, p1

    if-ne v0, v2, :cond_12

    .line 204
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->LOADING:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    .line 205
    iget-object v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    .line 206
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 207
    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 208
    iget-boolean v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->isUploading:Z

    .line 205
    invoke-virtual/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onLoading(JJZ)V

    goto :goto_12

    .line 211
    :pswitch_55
    array-length v0, p1

    if-ne v0, v2, :cond_12

    .line 212
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    .line 213
    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    aget-object v0, p1, v3

    check-cast v0, Lcom/lidroid/xutils/exception/HttpException;

    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V

    goto :goto_12

    .line 216
    :pswitch_6a
    array-length v0, p1

    if-ne v0, v4, :cond_12

    .line 217
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->SUCCESS:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    .line 218
    iget-object v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    aget-object v0, p1, v3

    check-cast v0, Lcom/lidroid/xutils/http/ResponseInfo;

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V

    goto :goto_12

    .line 197
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_20
        :pswitch_2a
        :pswitch_55
        :pswitch_6a
    .end packed-switch
.end method

.method public setExpiry(J)V
    .registers 4
    .param p1, "expiry"    # J

    .prologue
    .line 83
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    iput-wide p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->expiry:J

    .line 84
    return-void
.end method

.method public setHttpRedirectHandler(Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;)V
    .registers 2
    .param p1, "httpRedirectHandler"    # Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .prologue
    .line 48
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    if-eqz p1, :cond_4

    .line 49
    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    .line 51
    :cond_4
    return-void
.end method

.method public setRequestCallBack(Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    .local p1, "callback":Lcom/lidroid/xutils/http/callback/RequestCallBack;, "Lcom/lidroid/xutils/http/callback/RequestCallBack<TT;>;"
    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    .line 88
    return-void
.end method

.method public updateProgress(JJZ)Z
    .registers 17
    .param p1, "total"    # J
    .param p3, "current"    # J
    .param p5, "forceUpdateUI"    # Z

    .prologue
    .local p0, "this":Lcom/lidroid/xutils/http/HttpHandler;, "Lcom/lidroid/xutils/http/HttpHandler<TT;>;"
    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x2

    .line 298
    iget-object v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-eqz v4, :cond_27

    iget-object v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v5, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v4, v5, :cond_27

    .line 299
    if-eqz p5, :cond_2e

    .line 300
    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    .line 309
    :cond_27
    :goto_27
    iget-object v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v5, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v4, v5, :cond_5b

    :goto_2d
    return v2

    .line 302
    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 303
    .local v0, "currTime":J
    iget-wide v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->lastUpdateTime:J

    sub-long v4, v0, v4

    iget-object v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v6}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->getRate()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_27

    .line 304
    iput-wide v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->lastUpdateTime:J

    .line 305
    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    goto :goto_27

    .end local v0    # "currTime":J
    :cond_5b
    move v2, v3

    .line 309
    goto :goto_2d
.end method
