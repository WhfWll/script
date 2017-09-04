.class Lcom/sdu/didi/openapi/d;
.super Lcom/sdu/didi/openapi/gK/a;


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/c;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/c;)V
    .registers 2

    iput-object p1, p0, Lcom/sdu/didi/openapi/d;->a:Lcom/sdu/didi/openapi/c;

    invoke-direct {p0}, Lcom/sdu/didi/openapi/gK/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "special_url"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sdu/didi/openapi/d;->a:Lcom/sdu/didi/openapi/c;

    iget-object v0, v0, Lcom/sdu/didi/openapi/c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->showDDPage(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_1d
    return-void
.end method
