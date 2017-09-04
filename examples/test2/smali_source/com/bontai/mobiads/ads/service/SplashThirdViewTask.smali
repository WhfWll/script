.class public Lcom/bontai/mobiads/ads/service/SplashThirdViewTask;
.super Landroid/os/AsyncTask;
.source "SplashThirdViewTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 14
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 20
    :try_start_1
    const-string v6, "----------------"

    const-string v8, "------SplashThirdViewTask--------"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v6, 0x0

    aget-object v1, p1, v6

    check-cast v1, Landroid/content/Context;

    .line 24
    .local v1, "context":Landroid/content/Context;
    const/4 v6, 0x1

    aget-object v0, p1, v6

    check-cast v0, Lcom/bontai/mobiads/ads/entity/AdDomain;

    .line 27
    .local v0, "adDomain":Lcom/bontai/mobiads/ads/entity/AdDomain;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/bontai/mobiads/ads/entity/AdDomain;->getThirdViewUrls()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_34

    invoke-virtual {v0}, Lcom/bontai/mobiads/ads/entity/AdDomain;->getThirdViewUrls()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 29
    invoke-virtual {v0}, Lcom/bontai/mobiads/ads/entity/AdDomain;->getThirdViewUrls()Ljava/lang/String;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 31
    .local v5, "thirdViewUrls":[Ljava/lang/String;
    array-length v8, v5

    move v6, v7

    :goto_32
    if-lt v6, v8, :cond_3a

    .line 68
    .end local v5    # "thirdViewUrls":[Ljava/lang/String;
    :cond_34
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 71
    .end local v0    # "adDomain":Lcom/bontai/mobiads/ads/entity/AdDomain;
    .end local v1    # "context":Landroid/content/Context;
    :goto_39
    return-object v6

    .line 31
    .restart local v0    # "adDomain":Lcom/bontai/mobiads/ads/entity/AdDomain;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "thirdViewUrls":[Ljava/lang/String;
    :cond_3a
    aget-object v4, v5, v6

    .line 33
    .local v4, "thirdViewUrl":Ljava/lang/String;
    const-string v9, "?"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_76

    .line 34
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&clientType=1&ip="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Lcom/bontai/mobiads/ads/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 39
    :goto_5f
    new-instance v3, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v3}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    .line 40
    .local v3, "http":Lcom/lidroid/xutils/HttpUtils;
    const-wide/16 v10, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/lidroid/xutils/HttpUtils;->configDefaultHttpCacheExpiry(J)Lcom/lidroid/xutils/HttpUtils;

    .line 41
    sget-object v9, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    .line 44
    new-instance v10, Lcom/bontai/mobiads/ads/service/SplashThirdViewTask$1;

    invoke-direct {v10, p0}, Lcom/bontai/mobiads/ads/service/SplashThirdViewTask$1;-><init>(Lcom/bontai/mobiads/ads/service/SplashThirdViewTask;)V

    .line 41
    invoke-virtual {v3, v9, v4, v10}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    .line 31
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 36
    .end local v3    # "http":Lcom/lidroid/xutils/HttpUtils;
    :cond_76
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "?clientType=1&ip="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Lcom/bontai/mobiads/ads/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_90} :catch_92

    move-result-object v4

    goto :goto_5f

    .line 69
    .end local v0    # "adDomain":Lcom/bontai/mobiads/ads/entity/AdDomain;
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "thirdViewUrl":Ljava/lang/String;
    .end local v5    # "thirdViewUrls":[Ljava/lang/String;
    :catch_92
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_39
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/bontai/mobiads/ads/service/SplashThirdViewTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
