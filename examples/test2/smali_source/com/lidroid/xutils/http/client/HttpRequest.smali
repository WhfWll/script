.class public Lcom/lidroid/xutils/http/client/HttpRequest;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "HttpRequest.java"

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    }
.end annotation


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;

.field private method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field private uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

.field private uriCharset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;)V
    .registers 2
    .param p1, "method"    # Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;)V
    .registers 3
    .param p1, "method"    # Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    .line 60
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/HttpRequest;->setURI(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/net/URI;)V
    .registers 3
    .param p1, "method"    # Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    .param p2, "uri"    # Ljava/net/URI;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    .line 66
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/HttpRequest;->setURI(Ljava/net/URI;)V

    .line 67
    return-void
.end method


# virtual methods
.method public addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/HttpRequest;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;

    .line 71
    return-object p0
.end method

.method public addQueryStringParameter(Lorg/apache/http/NameValuePair;)Lcom/lidroid/xutils/http/client/HttpRequest;
    .registers 5
    .param p1, "nameValuePair"    # Lorg/apache/http/NameValuePair;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;

    .line 76
    return-object p0
.end method

.method public addQueryStringParams(Ljava/util/List;)Lcom/lidroid/xutils/http/client/HttpRequest;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/lidroid/xutils/http/client/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p1, :cond_c

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 85
    :cond_c
    return-object p0

    .line 81
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 82
    .local v0, "nameValuePair":Lorg/apache/http/NameValuePair;
    iget-object v2, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;

    goto :goto_6
.end method

.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-super {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/http/client/HttpRequest;

    .line 183
    .local v0, "clone":Lcom/lidroid/xutils/http/client/HttpRequest;
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_14

    .line 184
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpEntity;

    iput-object v1, v0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    .line 186
    :cond_14
    return-object v0
.end method

.method public expectContinue()Z
    .registers 4

    .prologue
    .line 176
    const-string v1, "Expect"

    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/http/client/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 177
    .local v0, "expect":Lorg/apache/http/Header;
    if-eqz v0, :cond_16

    const-string v1, "100-Continue"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .registers 4

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v1, :cond_a

    .line 138
    invoke-static {p0}, Lcom/lidroid/xutils/util/OtherUtils;->getCharsetFromHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    .line 140
    :cond_a
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v1, :cond_16

    .line 141
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    .line 143
    :cond_16
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->build(Ljava/nio/charset/Charset;)Ljava/net/URI;
    :try_end_1d
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result-object v1

    .line 146
    :goto_1e
    return-object v1

    .line 144
    :catch_1f
    move-exception v0

    .line 145
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .registers 2
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    .line 172
    return-void
.end method

.method public setRequestParams(Lcom/lidroid/xutils/http/RequestParams;)V
    .registers 6
    .param p1, "param"    # Lcom/lidroid/xutils/http/RequestParams;

    .prologue
    .line 89
    if-eqz p1, :cond_2e

    .line 90
    iget-object v2, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v2, :cond_10

    .line 91
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    iput-object v2, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    .line 93
    :cond_10
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getHeaders()Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, "headerItems":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/http/RequestParams$HeaderItem;>;"
    if-eqz v1, :cond_20

    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 103
    :cond_20
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/http/client/HttpRequest;->addQueryStringParams(Ljava/util/List;)Lcom/lidroid/xutils/http/client/HttpRequest;

    .line 104
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/http/client/HttpRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 106
    .end local v1    # "headerItems":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/http/RequestParams$HeaderItem;>;"
    :cond_2e
    return-void

    .line 95
    .restart local v1    # "headerItems":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/http/RequestParams$HeaderItem;>;"
    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    .line 96
    .local v0, "headerItem":Lcom/lidroid/xutils/http/RequestParams$HeaderItem;
    iget-boolean v3, v0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->overwrite:Z

    if-eqz v3, :cond_3f

    .line 97
    iget-object v3, v0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v3}, Lcom/lidroid/xutils/http/client/HttpRequest;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_1a

    .line 99
    :cond_3f
    iget-object v3, v0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v3}, Lcom/lidroid/xutils/http/client/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_1a
.end method

.method public setRequestParams(Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .registers 8
    .param p1, "param"    # Lcom/lidroid/xutils/http/RequestParams;
    .param p2, "callBackHandler"    # Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    .prologue
    .line 109
    if-eqz p1, :cond_3a

    .line 110
    iget-object v3, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v3, :cond_10

    .line 111
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    iput-object v3, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    .line 113
    :cond_10
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getHeaders()Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, "headerItems":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/http/RequestParams$HeaderItem;>;"
    if-eqz v2, :cond_20

    .line 115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 123
    :cond_20
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lidroid/xutils/http/client/HttpRequest;->addQueryStringParams(Ljava/util/List;)Lcom/lidroid/xutils/http/client/HttpRequest;

    .line 124
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 125
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_3a

    .line 126
    instance-of v3, v0, Lcom/lidroid/xutils/http/client/entity/UploadEntity;

    if-eqz v3, :cond_37

    move-object v3, v0

    .line 127
    check-cast v3, Lcom/lidroid/xutils/http/client/entity/UploadEntity;

    invoke-interface {v3, p2}, Lcom/lidroid/xutils/http/client/entity/UploadEntity;->setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V

    .line 129
    :cond_37
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 132
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "headerItems":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/http/RequestParams$HeaderItem;>;"
    :cond_3a
    return-void

    .line 115
    .restart local v2    # "headerItems":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/http/RequestParams$HeaderItem;>;"
    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    .line 116
    .local v1, "headerItem":Lcom/lidroid/xutils/http/RequestParams$HeaderItem;
    iget-boolean v4, v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->overwrite:Z

    if-eqz v4, :cond_4b

    .line 117
    iget-object v4, v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v4}, Lcom/lidroid/xutils/http/client/HttpRequest;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_1a

    .line 119
    :cond_4b
    iget-object v4, v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v4}, Lcom/lidroid/xutils/http/client/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_1a
.end method

.method public setURI(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    .line 157
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 152
    new-instance v0, Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    .line 153
    return-void
.end method
