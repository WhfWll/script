.class Lcom/sdu/didi/openapi/ss/h;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/DiDiWebActivity;

.field final synthetic b:Lcom/sdu/didi/openapi/ss/g;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/ss/g;Lcom/sdu/didi/openapi/DiDiWebActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/sdu/didi/openapi/ss/h;->b:Lcom/sdu/didi/openapi/ss/g;

    iput-object p2, p0, Lcom/sdu/didi/openapi/ss/h;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_8

    :cond_5
    const-string v0, ""

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/sdu/didi/openapi/ss/h;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ""

    goto :goto_7

    :cond_11
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/ss/h;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0, v1}, Lcom/sdu/didi/openapi/ss/d;->a(Ljava/lang/String;Lcom/sdu/didi/openapi/DiDiWebActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method protected a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, "jscalljava"

    invoke-static {v0, p1}, Lcom/sdu/didi/openapi/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/h;->b:Lcom/sdu/didi/openapi/ss/g;

    invoke-static {v0}, Lcom/sdu/didi/openapi/ss/g;->a(Lcom/sdu/didi/openapi/ss/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "processRequest"

    const-string v1, "onPostExecute return null"

    invoke-static {v0, v1}, Lcom/sdu/didi/openapi/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_25
    const-string v0, "javascript:window.didi&&window.didi.sdk&&window.didi.sdk._callback(%s);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/ss/h;->b:Lcom/sdu/didi/openapi/ss/g;

    invoke-static {v1}, Lcom/sdu/didi/openapi/ss/g;->b(Lcom/sdu/didi/openapi/ss/g;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_8
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sdu/didi/openapi/ss/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sdu/didi/openapi/ss/h;->a(Ljava/lang/String;)V

    return-void
.end method
