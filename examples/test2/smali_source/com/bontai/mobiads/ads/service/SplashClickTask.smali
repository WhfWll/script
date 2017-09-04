.class public Lcom/bontai/mobiads/ads/service/SplashClickTask;
.super Landroid/os/AsyncTask;
.source "SplashClickTask.java"


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
    .registers 11
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 21
    :try_start_1
    const-string v5, "----------------"

    const-string v6, "------SplashClickTask--------"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v5, 0x0

    aget-object v2, p1, v5

    check-cast v2, Landroid/content/Context;

    .line 24
    .local v2, "context":Landroid/content/Context;
    const/4 v5, 0x1

    aget-object v0, p1, v5

    check-cast v0, Lcom/bontai/mobiads/ads/entity/AdDomain;

    .line 27
    .local v0, "adDomain":Lcom/bontai/mobiads/ads/entity/AdDomain;
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/bontai/mobiads/ads/entity/AdDomain;->getClickUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_61

    invoke-virtual {v0}, Lcom/bontai/mobiads/ads/entity/AdDomain;->getClickUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    .line 29
    invoke-virtual {v0}, Lcom/bontai/mobiads/ads/entity/AdDomain;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "clickUrl":Ljava/lang/String;
    const-string v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&clientType=1&ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/bontai/mobiads/ads/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    :goto_4d
    new-instance v4, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v4}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    .line 37
    .local v4, "http":Lcom/lidroid/xutils/HttpUtils;
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/lidroid/xutils/HttpUtils;->configDefaultHttpCacheExpiry(J)Lcom/lidroid/xutils/HttpUtils;

    .line 38
    sget-object v5, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    .line 41
    new-instance v6, Lcom/bontai/mobiads/ads/service/SplashClickTask$1;

    invoke-direct {v6, p0}, Lcom/bontai/mobiads/ads/service/SplashClickTask$1;-><init>(Lcom/bontai/mobiads/ads/service/SplashClickTask;)V

    .line 38
    invoke-virtual {v4, v5, v1, v6}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    .line 63
    .end local v1    # "clickUrl":Ljava/lang/String;
    .end local v4    # "http":Lcom/lidroid/xutils/HttpUtils;
    :cond_61
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 66
    .end local v0    # "adDomain":Lcom/bontai/mobiads/ads/entity/AdDomain;
    .end local v2    # "context":Landroid/content/Context;
    :goto_66
    return-object v5

    .line 33
    .restart local v0    # "adDomain":Lcom/bontai/mobiads/ads/entity/AdDomain;
    .restart local v1    # "clickUrl":Ljava/lang/String;
    .restart local v2    # "context":Landroid/content/Context;
    :cond_67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "?clientType=1&ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/bontai/mobiads/ads/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_81} :catch_83

    move-result-object v1

    goto :goto_4d

    .line 64
    .end local v0    # "adDomain":Lcom/bontai/mobiads/ads/entity/AdDomain;
    .end local v1    # "clickUrl":Ljava/lang/String;
    .end local v2    # "context":Landroid/content/Context;
    :catch_83
    move-exception v3

    .line 66
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_66
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/bontai/mobiads/ads/service/SplashClickTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
