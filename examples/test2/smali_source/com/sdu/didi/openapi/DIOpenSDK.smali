.class public final Lcom/sdu/didi/openapi/DIOpenSDK;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;,
        Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;,
        Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;
    }
.end annotation


# static fields
.field protected static a:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Lcom/sdu/didi/openapi/DIOpenSDK;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->SYSTEM:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->a:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    const-string v0, "didi_secure"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized a()Lcom/sdu/didi/openapi/DIOpenSDK;
    .registers 2

    const-class v1, Lcom/sdu/didi/openapi/DIOpenSDK;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->d:Lcom/sdu/didi/openapi/DIOpenSDK;

    if-nez v0, :cond_e

    new-instance v0, Lcom/sdu/didi/openapi/DIOpenSDK;

    invoke-direct {v0}, Lcom/sdu/didi/openapi/DIOpenSDK;-><init>()V

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->d:Lcom/sdu/didi/openapi/DIOpenSDK;

    :cond_e
    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->d:Lcom/sdu/didi/openapi/DIOpenSDK;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/sdu/didi/openapi/l;->a()Lcom/sdu/didi/openapi/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sdu/didi/openapi/l;->b(Landroid/content/Context;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/gK/b;->c()Z

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {v1}, Lcom/sdu/didi/openapi/gK/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sdu/didi/openapi/utils/Utils;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/sdu/didi/openapi/utils/Utils;->getRandomString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "openid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timestamp"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "noncestr"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_36
    const-string v1, "apiname"

    invoke-virtual {v5, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_7f

    const-string v1, "lat"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "lng"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "maptype"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    :cond_55
    invoke-static {p1}, Lcom/sdu/didi/openapi/location/LocationHelper;->getInstance(Landroid/content/Context;)Lcom/sdu/didi/openapi/location/LocationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/location/LocationHelper;->getLocation()Lcom/sdu/didi/openapi/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/location/Location;->isAvail()Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "lat"

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/location/Location;->getLat()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "lng"

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/location/Location;->getLng()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    const-string v1, "params"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_7f} :catch_b2

    :cond_7f
    :goto_7f
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "package"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sign"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/sdu/didi/openapi/DIOpenSDK;->b:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->getv11Sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :catch_b2
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7f
.end method

.method static synthetic a(Lcom/sdu/didi/openapi/DIOpenSDK;Ljava/lang/String;)Ljava/util/Map;
    .registers 3

    invoke-direct {p0, p1}, Lcom/sdu/didi/openapi/DIOpenSDK;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return-void
.end method

.method public static asynCallDDApi(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiname"    # Ljava/lang/String;
    .param p3, "callBack"    # Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/sdu/didi/openapi/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sdu/didi/openapi/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static asynGetTicket(Landroid/content/Context;Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;
    .param p2, "callBack"    # Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;

    .prologue
    new-instance v0, Lcom/sdu/didi/openapi/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdu/didi/openapi/b;-><init>(Landroid/content/Context;Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/sdu/didi/openapi/e;

    invoke-direct {v1, p0, v0}, Lcom/sdu/didi/openapi/e;-><init>(Lcom/sdu/didi/openapi/DIOpenSDK;Ljava/util/Map;)V

    invoke-virtual {v1, p1}, Lcom/sdu/didi/openapi/gK/a;->a(Ljava/lang/String;)V

    const-string v2, "errno"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/gK/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "errmsg"

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/gK/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static callPhone(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/sdu/didi/openapi/l;->a()Lcom/sdu/didi/openapi/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sdu/didi/openapi/l;->c(Landroid/content/Context;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/gK/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/gK/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->callPhone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private native callPhone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static getAppId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v0

    const-string v1, "a1b2c3_1"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/sdu/didi/openapi/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->c:Ljava/lang/String;

    :cond_1a
    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v0

    const-string v1, "a1b2c3_2"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/sdu/didi/openapi/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->b:Ljava/lang/String;

    :cond_34
    const-string v0, "appid or secrect illegal you should call registerApp first"

    invoke-static {v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getMapSdkType()Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;
    .registers 1

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->a:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    return-object v0
.end method

.method public static getSecrectStr(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v0

    const-string v1, "a1b2c3_2"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/sdu/didi/openapi/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->b:Ljava/lang/String;

    :cond_1a
    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v0

    const-string v1, "a1b2c3_1"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/sdu/didi/openapi/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->c:Ljava/lang/String;

    :cond_34
    const-string v0, "appid or secrect illegal you should call registerApp first"

    invoke-static {v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static isLogin(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "token"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sdu/didi/openapi/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static openPage(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "page"    # Ljava/lang/String;
    .param p3, "callBack"    # Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/sdu/didi/openapi/c;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/sdu/didi/openapi/c;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static registerApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "secrect"    # Ljava/lang/String;

    .prologue
    sput-object p2, Lcom/sdu/didi/openapi/DIOpenSDK;->b:Ljava/lang/String;

    sput-object p1, Lcom/sdu/didi/openapi/DIOpenSDK;->c:Ljava/lang/String;

    const-string v0, "appid or secrect illegal you should call registerApp first"

    invoke-static {v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->a(Ljava/lang/String;)V

    const-string v0, "a1b2c3_1"

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v1

    invoke-direct {v1, p1}, Lcom/sdu/didi/openapi/DIOpenSDK;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdu/didi/openapi/utils/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "a1b2c3_2"

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v1

    invoke-direct {v1, p2}, Lcom/sdu/didi/openapi/DIOpenSDK;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdu/didi/openapi/utils/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMapSdkType(Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;)V
    .registers 1
    .param p0, "type"    # Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    .prologue
    sput-object p0, Lcom/sdu/didi/openapi/DIOpenSDK;->a:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    return-void
.end method

.method public static showDDPage(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "appid or secrect illegal you should call registerApp first"

    invoke-static {v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    instance-of v1, p0, Landroid/view/ContextThemeWrapper;

    if-nez v1, :cond_1a

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1a
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static syncCallDDApi(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lcom/sdu/didi/openapi/DIOpenSDK;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, ""

    :goto_10
    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v1

    invoke-direct {v1, v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_19
    invoke-static {}, Lcom/sdu/didi/openapi/ss/a;->a()Lcom/sdu/didi/openapi/ss/a;

    move-result-object v1

    const-string v2, "https://api.xiaojukeji.com/v1/remote"

    invoke-virtual {v1, v2, v0}, Lcom/sdu/didi/openapi/ss/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public static syncGetTicket(Landroid/content/Context;Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;)Ljava/util/Map;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v1

    const-string v2, "getTicket"

    invoke-direct {v1, p0, v2, v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v0, ""

    :goto_20
    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v1

    invoke-direct {v1, v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_29
    invoke-static {}, Lcom/sdu/didi/openapi/ss/a;->a()Lcom/sdu/didi/openapi/ss/a;

    move-result-object v1

    const-string v2, "https://api.xiaojukeji.com/v1/remote"

    invoke-virtual {v1, v2, v0}, Lcom/sdu/didi/openapi/ss/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method


# virtual methods
.method public native getSDKId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getSDKSign(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getv11Sign(Ljava/lang/String;)Ljava/lang/String;
.end method
