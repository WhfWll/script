.class public Lorg/apache/cordova/Echo;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "Echo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/api/CallbackContext;)Z
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    const-string v3, "echo"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 30
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 31
    .local v0, "result":Ljava/lang/String;
    :goto_11
    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    .line 46
    .end local v0    # "result":Ljava/lang/String;
    :goto_14
    return v1

    .line 30
    :cond_15
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 33
    :cond_1a
    const-string v3, "echoAsync"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 34
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 35
    .restart local v0    # "result":Ljava/lang/String;
    :goto_28
    iget-object v2, p0, Lorg/apache/cordova/Echo;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lorg/apache/cordova/Echo$1;

    invoke-direct {v3, p0, p3, v0}, Lorg/apache/cordova/Echo$1;-><init>(Lorg/apache/cordova/Echo;Lorg/apache/cordova/api/CallbackContext;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_14

    .line 34
    .end local v0    # "result":Ljava/lang/String;
    :cond_37
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 41
    :cond_3c
    const-string v3, "echoArrayBuffer"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 42
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getArrayBuffer(I)[B

    move-result-object v0

    .line 43
    .local v0, "result":[B
    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success([B)V

    goto :goto_14

    .end local v0    # "result":[B
    :cond_4c
    move v1, v2

    .line 46
    goto :goto_14
.end method
