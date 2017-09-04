.class synthetic Lcom/sdu/didi/openapi/location/LocationManage$1;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$com$sdu$didi$openapi$DIOpenSDK$MapLocationType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->values()[Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sdu/didi/openapi/location/LocationManage$1;->$SwitchMap$com$sdu$didi$openapi$DIOpenSDK$MapLocationType:[I

    :try_start_9
    sget-object v0, Lcom/sdu/didi/openapi/location/LocationManage$1;->$SwitchMap$com$sdu$didi$openapi$DIOpenSDK$MapLocationType:[I

    sget-object v1, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->GAODE:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/sdu/didi/openapi/location/LocationManage$1;->$SwitchMap$com$sdu$didi$openapi$DIOpenSDK$MapLocationType:[I

    sget-object v1, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->BAIDU:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/sdu/didi/openapi/location/LocationManage$1;->$SwitchMap$com$sdu$didi$openapi$DIOpenSDK$MapLocationType:[I

    sget-object v1, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->SOSO:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
