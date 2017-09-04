.class final Lcom/sdu/didi/openapi/a;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;)V
    .registers 5

    iput-object p1, p0, Lcom/sdu/didi/openapi/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sdu/didi/openapi/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdu/didi/openapi/a;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/sdu/didi/openapi/a;->d:Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/Map;
    .registers 5
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

    iget-object v0, p0, Lcom/sdu/didi/openapi/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sdu/didi/openapi/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdu/didi/openapi/a;->c:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/sdu/didi/openapi/DIOpenSDK;->syncCallDDApi(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/sdu/didi/openapi/a;->d:Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sdu/didi/openapi/a;->d:Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;

    invoke-interface {v0, p1}, Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;->onFinish(Ljava/util/Map;)V

    :cond_9
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sdu/didi/openapi/a;->a([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sdu/didi/openapi/a;->a(Ljava/util/Map;)V

    return-void
.end method
