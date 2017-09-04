.class public Lcom/sdu/didi/openapi/Methods;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/sdu/didi/openapi/DiDiWebActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V
    .registers 3
    .param p1, "activity"    # Lcom/sdu/didi/openapi/DiDiWebActivity;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/Methods;->a:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public getAppInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/Methods;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdu/didi/openapi/DiDiWebActivity;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_12
    const-string v2, "weixin"

    const-string v3, "com.tencent.mm"

    invoke-static {v0, v3}, Lcom/sdu/didi/openapi/utils/Utils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "alipay"

    const-string v3, "com.eg.android.AlipayGphone"

    invoke-static {v0, v3}, Lcom/sdu/didi/openapi/utils/Utils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "didipasnger"

    const-string v3, "com.sdu.didi.psnger"

    invoke-static {v0, v3}, Lcom/sdu/didi/openapi/utils/Utils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_33} :catch_38

    :goto_33
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_33
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/Methods;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdu/didi/openapi/DiDiWebActivity;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "key"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-static {v0}, Lcom/sdu/didi/openapi/ss/f;->a(Landroid/content/Context;)Lcom/sdu/didi/openapi/ss/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sdu/didi/openapi/ss/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_36
    const-string v0, ""
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_38} :catch_39

    goto :goto_c

    :catch_39
    move-exception v0

    const-string v0, ""

    goto :goto_c
.end method

.method public getEnvSign(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/Methods;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdu/didi/openapi/DiDiWebActivity;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object v0, v1

    goto :goto_c

    :cond_20
    invoke-static {}, Lcom/sdu/didi/openapi/utils/Utils;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/sdu/didi/openapi/utils/Utils;->getRandomString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sdu/didi/openapi/l;->a()Lcom/sdu/didi/openapi/l;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sdu/didi/openapi/l;->b(Landroid/content/Context;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sdu/didi/openapi/gK/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->getSecrectStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->getSDKSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_71

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_71

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_74

    :cond_71
    const-string v0, ""

    goto :goto_c

    :cond_74
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "openid"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "timestamp"

    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "noncestr"

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel"

    invoke-static {}, Lcom/sdu/didi/openapi/l;->a()Lcom/sdu/didi/openapi/l;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sdu/didi/openapi/l;->b(Landroid/content/Context;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sdu/didi/openapi/gK/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sign"

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "envdata"

    invoke-static {v0}, Lcom/sdu/didi/uuid/l;->a(Landroid/app/Activity;)Lcom/sdu/didi/uuid/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdu/didi/uuid/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    invoke-static {}, Lcom/sdu/didi/openapi/utils/Utils;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c2

    const-string v0, ""

    goto/16 :goto_c

    :cond_c2
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_c5
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_c5} :catch_c8

    move-result-object v0

    goto/16 :goto_c

    :catch_c8
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, ""

    goto/16 :goto_c
.end method

.method public getLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/Methods;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdu/didi/openapi/DiDiWebActivity;

    if-nez v0, :cond_14

    const-string v0, "activity"

    const-string v1, "= null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_13
    return-object v0

    :cond_14
    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->getInstance(Landroid/content/Context;)Lcom/sdu/didi/openapi/location/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->getLocation()Lcom/sdu/didi/openapi/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/Location;->isAvail()Z

    move-result v1

    if-nez v1, :cond_25

    const-string v0, ""

    goto :goto_13

    :cond_25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2a
    const-string v2, "lat"

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/Location;->getLat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "lng"

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/Location;->getLng()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "maptype"

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/Location;->getMapType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_45} :catch_5a

    :goto_45
    const-string v0, "lat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "lng"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_45

    :cond_5f
    const-string v0, ""

    goto :goto_13
.end method

.method public getSign(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/Methods;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdu/didi/openapi/DiDiWebActivity;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object v0, v1

    goto :goto_c

    :cond_20
    invoke-static {}, Lcom/sdu/didi/openapi/utils/Utils;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/sdu/didi/openapi/utils/Utils;->getRandomString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sdu/didi/openapi/l;->a()Lcom/sdu/didi/openapi/l;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sdu/didi/openapi/l;->b(Landroid/content/Context;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sdu/didi/openapi/gK/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/sdu/didi/openapi/DIOpenSDK;->getSecrectStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->getSDKSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_68

    const-string v0, ""

    goto :goto_c

    :cond_68
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_6d} :catch_ae

    :try_start_6d
    const-string v6, "openid"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "timestamp"

    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "noncestr"

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel"

    invoke-static {}, Lcom/sdu/didi/openapi/l;->a()Lcom/sdu/didi/openapi/l;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sdu/didi/openapi/l;->b(Landroid/content/Context;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/gK/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sign"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    invoke-static {}, Lcom/sdu/didi/openapi/utils/Utils;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_6d .. :try_end_9b} :catch_a9

    :goto_9b
    :try_start_9b
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b6

    const-string v0, ""

    goto/16 :goto_c

    :catch_a9
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_ad
    .catch Lorg/json/JSONException; {:try_start_9b .. :try_end_ad} :catch_ae

    goto :goto_9b

    :catch_ae
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, ""

    goto/16 :goto_c

    :cond_b6
    :try_start_b6
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_b9
    .catch Lorg/json/JSONException; {:try_start_b6 .. :try_end_b9} :catch_ae

    move-result-object v0

    goto/16 :goto_c
.end method

.method public getSystemInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/Methods;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdu/didi/openapi/DiDiWebActivity;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_12
    const-string v2, "imei"

    invoke-static {v0}, Lcom/sdu/didi/openapi/utils/Utils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_1b} :catch_20

    :goto_1b
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1b
.end method

.method public getUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    const-string v0, "success"

    return-object v0
.end method

.method public pageClose(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/Methods;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdu/didi/openapi/DiDiWebActivity;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->finish()V

    const-string v0, "success"

    goto :goto_c
.end method

.method public pageRefresh(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/Methods;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdu/didi/openapi/DiDiWebActivity;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Lcom/sdu/didi/openapi/ss/e;

    invoke-direct {v1, v0}, Lcom/sdu/didi/openapi/ss/e;-><init>(Landroid/content/Context;)V

    const-string v2, "didi_webview"

    invoke-virtual {v1, v2}, Lcom/sdu/didi/openapi/ss/e;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/DiDiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_2f

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2f

    const-string v2, "searchBoxJavaBridge_"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_2f
    new-instance v2, Lcom/sdu/didi/openapi/k;

    invoke-direct {v2, p0, v1}, Lcom/sdu/didi/openapi/k;-><init>(Lcom/sdu/didi/openapi/Methods;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v2}, Lcom/sdu/didi/openapi/DiDiWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, "success"

    goto :goto_c
.end method

.method public setData(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/Methods;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdu/didi/openapi/DiDiWebActivity;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/sdu/didi/openapi/ss/f;->a(Landroid/content/Context;)Lcom/sdu/didi/openapi/ss/f;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/sdu/didi/openapi/ss/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_28

    const-string v0, "success"

    goto :goto_c

    :catch_28
    move-exception v0

    const-string v0, ""

    goto :goto_c
.end method

.method public setPassportToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/Methods;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdu/didi/openapi/DiDiWebActivity;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    const-string v1, ""

    :try_start_f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "token"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_1b} :catch_2e

    move-result-object v1

    :goto_1c
    const-string v2, "token"

    const-string v3, "{}"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v1, ""

    :cond_28
    invoke-static {v0, v2, v1}, Lcom/sdu/didi/openapi/utils/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "success"

    goto :goto_c

    :catch_2e
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1c
.end method
