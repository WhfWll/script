.class final enum Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$4;
.super Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
.source "SecurityPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;-><init>(Ljava/lang/String;ILcom/worklight/androidgap/plugin/SecurityPlugin$1;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;Landroid/content/Context;)Z
    .registers 7
    .param p1, "args"    # Lorg/json/JSONArray;
    .param p2, "callbackCtx"    # Lorg/apache/cordova/api/CallbackContext;
    .param p3, "androidCtx"    # Landroid/content/Context;

    .prologue
    .line 80
    :try_start_0
    invoke-static {p3, p1}, Lcom/worklight/utils/SecurityUtils;->hashDataFromJSON(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    .line 81
    const/4 v1, 0x1

    .line 83
    :goto_8
    return v1

    .line 82
    :catch_9
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$4;->hashData:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p2, v2}, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$4;->executeError(Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;Lorg/apache/cordova/api/CallbackContext;Ljava/lang/String;)Z

    move-result v1

    goto :goto_8
.end method
