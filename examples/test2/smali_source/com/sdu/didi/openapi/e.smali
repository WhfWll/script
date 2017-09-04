.class Lcom/sdu/didi/openapi/e;
.super Lcom/sdu/didi/openapi/gK/a;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/sdu/didi/openapi/DIOpenSDK;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/DIOpenSDK;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/sdu/didi/openapi/e;->b:Lcom/sdu/didi/openapi/DIOpenSDK;

    iput-object p2, p0, Lcom/sdu/didi/openapi/e;->a:Ljava/util/Map;

    invoke-direct {p0}, Lcom/sdu/didi/openapi/gK/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .registers 6

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sdu/didi/openapi/e;->a:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_1a
    return-void
.end method
