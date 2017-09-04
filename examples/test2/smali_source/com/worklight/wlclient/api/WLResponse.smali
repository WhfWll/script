.class public Lcom/worklight/wlclient/api/WLResponse;
.super Ljava/lang/Object;
.source "WLResponse.java"


# instance fields
.field private headers:[Lorg/apache/http/Header;

.field private httpResponseCache:Lorg/apache/http/HttpResponse;

.field private requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

.field private responseJSON:Lorg/json/JSONObject;

.field protected responseText:Ljava/lang/String;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLResponse;

    const v1, 0x4d0

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/worklight/wlclient/api/WLRequestOptions;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "responseText"    # Ljava/lang/String;
    .param p3, "requestOptions"    # Lcom/worklight/wlclient/api/WLRequestOptions;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/worklight/wlclient/api/WLResponse;->status:I

    .line 73
    iput-object p3, p0, Lcom/worklight/wlclient/api/WLResponse;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    .line 74
    iput-object p2, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    .line 76
    invoke-direct {p0, p2}, Lcom/worklight/wlclient/api/WLResponse;->responseTextToJSON(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/api/WLResponse;)V
    .registers 3
    .param p1, "response"    # Lcom/worklight/wlclient/api/WLResponse;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget v0, p1, Lcom/worklight/wlclient/api/WLResponse;->status:I

    iput v0, p0, Lcom/worklight/wlclient/api/WLResponse;->status:I

    .line 65
    iget-object v0, p1, Lcom/worklight/wlclient/api/WLResponse;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    .line 66
    iget-object v0, p1, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/worklight/wlclient/api/WLResponse;->responseJSON:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->responseJSON:Lorg/json/JSONObject;

    .line 68
    iget-object v0, p1, Lcom/worklight/wlclient/api/WLResponse;->httpResponseCache:Lorg/apache/http/HttpResponse;

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->httpResponseCache:Lorg/apache/http/HttpResponse;

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 6
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/worklight/wlclient/api/WLResponse;->status:I

    .line 40
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    iput-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->headers:[Lorg/apache/http/Header;

    .line 41
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLResponse;->httpResponseCache:Lorg/apache/http/HttpResponse;

    .line 44
    :try_start_15
    const-string v1, "Content-Encoding"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_9b

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content encoding is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Encoding"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 46
    const-string v1, "Content-Encoding"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 47
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->convertGZIPStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    .line 48
    const-string v1, "Content encoding is gzip"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/worklight/common/WLUtils;->log(Ljava/lang/String;I)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_6a} :catch_7f

    .line 60
    :goto_6a
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/worklight/wlclient/api/WLResponse;->responseTextToJSON(Ljava/lang/String;)V

    .line 61
    return-void

    .line 50
    :cond_70
    :try_start_70
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7e} :catch_7f

    goto :goto_6a

    .line 56
    :catch_7f
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response from Worklight server failed because could not read text from response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9b
    :try_start_9b
    const-string v1, "No Content-Encoding header"

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 54
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ae} :catch_7f

    goto :goto_6a
.end method

.method private native responseTextToJSON(Ljava/lang/String;)V
.end method


# virtual methods
.method public native getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
.end method

.method public native getHeaders()[Lorg/apache/http/Header;
.end method

.method public native getInvocationContext()Ljava/lang/Object;
.end method

.method native getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;
.end method

.method public native getResponseJSON()Lorg/json/JSONObject;
.end method

.method public native getResponseText()Ljava/lang/String;
.end method

.method public native getStatus()I
.end method

.method native setInvocationContext(Ljava/lang/Object;)V
.end method

.method public native setOptions(Lcom/worklight/wlclient/api/WLRequestOptions;)V
.end method

.method native setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native toString()Ljava/lang/String;
.end method
