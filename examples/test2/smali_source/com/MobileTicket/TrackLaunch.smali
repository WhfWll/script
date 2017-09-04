.class public Lcom/MobileTicket/TrackLaunch;
.super Landroid/os/AsyncTask;
.source "TrackLaunch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/MobileTicket/TrackLaunch;

    const v1, 0x14

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static native trackLaunch()V
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 11
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 31
    :try_start_1
    new-instance v1, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v1}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    .line 32
    .local v1, "http":Lcom/lidroid/xutils/HttpUtils;
    new-instance v3, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v3}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    .line 34
    .local v3, "params":Lcom/lidroid/xutils/http/RequestParams;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "yyyyMMddHHmmss"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "ld":Ljava/lang/String;
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/MobileTicket/CheckCodeUtil;->checkcode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "sld":Ljava/lang/String;
    const-string v5, "para"

    invoke-virtual {v3, v5, v4}, Lcom/lidroid/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v5, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->POST:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    const-string v6, "https://mobile.12306.cn/otsmobile/track/alaunch"

    .line 38
    new-instance v7, Lcom/MobileTicket/TrackLaunch$1;

    invoke-direct {v7, p0}, Lcom/MobileTicket/TrackLaunch$1;-><init>(Lcom/MobileTicket/TrackLaunch;)V

    .line 37
    invoke-virtual {v1, v5, v6, v3, v7}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5a} :catch_5b

    .line 58
    .end local v1    # "http":Lcom/lidroid/xutils/HttpUtils;
    .end local v2    # "ld":Ljava/lang/String;
    .end local v3    # "params":Lcom/lidroid/xutils/http/RequestParams;
    .end local v4    # "sld":Ljava/lang/String;
    :goto_5a
    return-object v8

    .line 56
    :catch_5b
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_5a
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/MobileTicket/TrackLaunch;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
