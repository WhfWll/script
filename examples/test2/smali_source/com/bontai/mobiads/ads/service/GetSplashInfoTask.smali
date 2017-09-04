.class public Lcom/bontai/mobiads/ads/service/GetSplashInfoTask;
.super Landroid/os/AsyncTask;
.source "GetSplashInfoTask.java"


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
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/service/GetSplashInfoTask;

    const v1, 0xfc

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/bontai/mobiads/ads/service/GetSplashInfoTask;Lcom/bontai/mobiads/ads/entity/AdDomain;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 316
    invoke-direct {p0, p1, p2}, Lcom/bontai/mobiads/ads/service/GetSplashInfoTask;->downloadPic(Lcom/bontai/mobiads/ads/entity/AdDomain;Landroid/content/Context;)V

    return-void
.end method

.method private native downloadPic(Lcom/bontai/mobiads/ads/entity/AdDomain;Landroid/content/Context;)V
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 13
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 38
    const/4 v7, 0x0

    :try_start_2
    aget-object v2, p1, v7

    check-cast v2, Landroid/content/Context;

    .line 39
    .local v2, "context":Landroid/content/Context;
    const/4 v7, 0x2

    aget-object v5, p1, v7

    check-cast v5, Ljava/lang/String;

    .line 42
    .local v5, "placementNo":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/bontai/mobiads/ads/AppHelp;->getBontaiMobiAdsUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/bontai/mobiads/ads/AppHelp;->GT_CDN_AD_URL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".html"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "url":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, p1, v7

    if-eqz v7, :cond_d8

    .line 46
    const/4 v7, 0x1

    aget-object v0, p1, v7

    check-cast v0, Lcom/bontai/mobiads/ads/entity/AdDomain;

    .line 47
    .local v0, "adDomainOld":Lcom/bontai/mobiads/ads/entity/AdDomain;
    invoke-virtual {v0}, Lcom/bontai/mobiads/ads/entity/AdDomain;->getServiceType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a5

    invoke-virtual {v0}, Lcom/bontai/mobiads/ads/entity/AdDomain;->getServiceType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 48
    invoke-virtual {v0}, Lcom/bontai/mobiads/ads/entity/AdDomain;->getServiceUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a5

    invoke-virtual {v0}, Lcom/bontai/mobiads/ads/entity/AdDomain;->getServiceUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a5

    .line 50
    invoke-static {v2}, Lcom/bontai/mobiads/ads/DeviceScreen;->getAdSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "adSize":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bontai/mobiads/ads/entity/AdDomain;->getServiceUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v8, "?placementNo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&placementType=1&screenSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 54
    const-string v8, "&appKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/bontai/mobiads/ads/AppHelp;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 55
    const-string v8, "&clientType=1&ip="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/bontai/mobiads/ads/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 52
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 65
    .end local v1    # "adSize":Ljava/lang/String;
    :cond_a5
    :goto_a5
    const-string v7, "---------"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v7, "ad12306"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "url:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v4, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v4}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    .line 68
    .local v4, "http":Lcom/lidroid/xutils/HttpUtils;
    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/lidroid/xutils/HttpUtils;->configDefaultHttpCacheExpiry(J)Lcom/lidroid/xutils/HttpUtils;

    .line 69
    sget-object v7, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    .line 71
    new-instance v8, Lcom/bontai/mobiads/ads/service/GetSplashInfoTask$1;

    invoke-direct {v8, p0, v0, v2}, Lcom/bontai/mobiads/ads/service/GetSplashInfoTask$1;-><init>(Lcom/bontai/mobiads/ads/service/GetSplashInfoTask;Lcom/bontai/mobiads/ads/entity/AdDomain;Landroid/content/Context;)V

    .line 69
    invoke-virtual {v4, v7, v6, v8}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    .line 308
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d6} :catch_da

    move-result-object v7

    .line 311
    .end local v0    # "adDomainOld":Lcom/bontai/mobiads/ads/entity/AdDomain;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "http":Lcom/lidroid/xutils/HttpUtils;
    .end local v5    # "placementNo":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :goto_d7
    return-object v7

    .line 58
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v5    # "placementNo":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_d8
    const/4 v0, 0x0

    .restart local v0    # "adDomainOld":Lcom/bontai/mobiads/ads/entity/AdDomain;
    goto :goto_a5

    .line 309
    .end local v0    # "adDomainOld":Lcom/bontai/mobiads/ads/entity/AdDomain;
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "placementNo":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :catch_da
    move-exception v3

    .line 311
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_d7
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/bontai/mobiads/ads/service/GetSplashInfoTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
