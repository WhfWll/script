.class public Lcom/sdu/didi/openapi/ss/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/sdu/didi/openapi/Methods;


# direct methods
.method public static a(Ljava/lang/String;Lcom/sdu/didi/openapi/DiDiWebActivity;)Ljava/lang/String;
    .registers 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cmd"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sdu/didi/openapi/ss/d;->a:Ljava/lang/String;

    const-string v2, "params"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sdu/didi/openapi/Methods;

    invoke-direct {v2, p1}, Lcom/sdu/didi/openapi/Methods;-><init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V

    sput-object v2, Lcom/sdu/didi/openapi/ss/d;->b:Lcom/sdu/didi/openapi/Methods;

    sget-object v2, Lcom/sdu/didi/openapi/ss/d;->b:Lcom/sdu/didi/openapi/Methods;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/sdu/didi/openapi/ss/d;->b:Lcom/sdu/didi/openapi/Methods;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v0, "success"

    :goto_4a
    return-object v0

    :cond_4b
    sget-object v1, Lcom/sdu/didi/openapi/ss/d;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdu/didi/openapi/ss/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_50} :catch_52
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_50} :catch_5f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_50} :catch_6c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_50} :catch_78

    move-result-object v0

    goto :goto_4a

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v0, Lcom/sdu/didi/openapi/ss/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sdu/didi/openapi/ss/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    sget-object v0, Lcom/sdu/didi/openapi/ss/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sdu/didi/openapi/ss/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    :catch_6c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    sget-object v0, Lcom/sdu/didi/openapi/ss/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdu/didi/openapi/ss/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    :catch_78
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    sget-object v0, Lcom/sdu/didi/openapi/ss/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sdu/didi/openapi/ss/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_1d

    const-string v0, "404"

    :goto_9
    :try_start_9
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "errorcode"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_1b} :catch_29

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "500"

    goto :goto_9

    :cond_26
    const-string v0, "200"

    goto :goto_9

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, ""

    goto :goto_1c
.end method
