.class public Lcom/sdu/didi/openapi/location/LocationManage;
.super Ljava/lang/Object;


# instance fields
.field private sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findRealType()V
    .registers 2

    const-string v0, "com.amap.api.location.AMapLocationClient"

    invoke-direct {p0, v0}, Lcom/sdu/didi/openapi/location/LocationManage;->findSdk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->GAODE:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->setMapSdkType(Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;)V

    :cond_d
    const-string v0, "com.baidu.location.LocationClient"

    invoke-direct {p0, v0}, Lcom/sdu/didi/openapi/location/LocationManage;->findSdk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->BAIDU:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->setMapSdkType(Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;)V

    :cond_1a
    const-string v0, "com.tencent.map.geolocation.TencentLocationManager"

    invoke-direct {p0, v0}, Lcom/sdu/didi/openapi/location/LocationManage;->findSdk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->SOSO:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->setMapSdkType(Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;)V

    :cond_27
    return-void
.end method

.method private findSdk(Ljava/lang/String;)Z
    .registers 3
    .param p1, "sdk"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->getMapSdkType()Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    move-result-object v0

    sget-object v1, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->SYSTEM:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/sdu/didi/openapi/location/LocationManage;->findRealType()V

    :cond_b
    sget-object v0, Lcom/sdu/didi/openapi/location/LocationManage$1;->$SwitchMap$com$sdu$didi$openapi$DIOpenSDK$MapLocationType:[I

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->getMapSdkType()Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    new-instance v0, Lcom/sdu/didi/openapi/location/SystemSDK;

    invoke-direct {v0, p1}, Lcom/sdu/didi/openapi/location/SystemSDK;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationManage;->sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;

    :goto_21
    return-void

    :pswitch_22
    new-instance v0, Lcom/sdu/didi/openapi/location/GaodeSdk;

    invoke-direct {v0, p1}, Lcom/sdu/didi/openapi/location/GaodeSdk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationManage;->sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;

    goto :goto_21

    :pswitch_2a
    new-instance v0, Lcom/sdu/didi/openapi/location/BaiduSdk;

    invoke-direct {v0, p1}, Lcom/sdu/didi/openapi/location/BaiduSdk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationManage;->sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;

    goto :goto_21

    :pswitch_32
    new-instance v0, Lcom/sdu/didi/openapi/location/SosoSdk;

    invoke-direct {v0, p1}, Lcom/sdu/didi/openapi/location/SosoSdk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationManage;->sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;

    goto :goto_21

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method

.method protected registListener(Landroid/os/Looper;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "listener"    # Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationManage;->sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;

    invoke-virtual {v0, p1, p2}, Lcom/sdu/didi/openapi/location/SdkHub;->registListener(Landroid/os/Looper;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V

    return-void
.end method

.method protected unRegistListener()V
    .registers 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationManage;->sdkHub:Lcom/sdu/didi/openapi/location/SdkHub;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/SdkHub;->unRegistListener()V

    return-void
.end method
