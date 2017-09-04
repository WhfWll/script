.class final Lcom/sdu/didi/openapi/c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;)V
    .registers 5

    iput-object p1, p0, Lcom/sdu/didi/openapi/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sdu/didi/openapi/c;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/sdu/didi/openapi/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sdu/didi/openapi/c;->d:Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
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

    invoke-static {}, Lcom/sdu/didi/openapi/l;->a()Lcom/sdu/didi/openapi/l;

    move-result-object v1

    iget-object v2, p0, Lcom/sdu/didi/openapi/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sdu/didi/openapi/l;->b(Landroid/content/Context;)Lcom/sdu/didi/openapi/gK/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdu/didi/openapi/gK/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sdu/didi/openapi/utils/Utils;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/sdu/didi/openapi/utils/Utils;->getRandomString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_27
    iget-object v6, p0, Lcom/sdu/didi/openapi/c;->b:Ljava/util/Map;

    if-eqz v6, :cond_3f

    iget-object v6, p0, Lcom/sdu/didi/openapi/c;->b:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3f

    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/sdu/didi/openapi/c;->b:Ljava/util/Map;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v7, "data"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3f
    const-string v6, "page"

    iget-object v7, p0, Lcom/sdu/didi/openapi/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "apiname"

    const-string v7, "getPageUrl"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "params"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_52} :catch_e1

    :goto_52
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "openid"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "timestamp"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "noncestr"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "package"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sign"

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->getv11Sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sdu/didi/openapi/ss/a;->a()Lcom/sdu/didi/openapi/ss/a;

    move-result-object v1

    const-string v2, "https://api.xiaojukeji.com/v1/remote"

    invoke-virtual {v1, v2, v0}, Lcom/sdu/didi/openapi/ss/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sdu/didi/openapi/d;

    invoke-direct {v2, p0}, Lcom/sdu/didi/openapi/d;-><init>(Lcom/sdu/didi/openapi/c;)V

    invoke-virtual {v2, v1}, Lcom/sdu/didi/openapi/gK/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v3, "errno"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sdu/didi/openapi/gK/a;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "errmsg"

    invoke-virtual {v2}, Lcom/sdu/didi/openapi/gK/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-static {}, Lcom/sdu/didi/openapi/DIOpenSDK;->a()Lcom/sdu/didi/openapi/DIOpenSDK;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->a(Lcom/sdu/didi/openapi/DIOpenSDK;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :cond_e0
    return-object v0

    :catch_e1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_52
.end method

.method protected a(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdu/didi/openapi/c;->d:Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sdu/didi/openapi/c;->d:Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;

    invoke-interface {v0, p1}, Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;->onFinish(Ljava/util/Map;)V

    :cond_9
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sdu/didi/openapi/c;->a([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sdu/didi/openapi/c;->a(Ljava/util/Map;)V

    return-void
.end method
