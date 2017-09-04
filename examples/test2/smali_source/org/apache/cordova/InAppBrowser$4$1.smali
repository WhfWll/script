.class Lorg/apache/cordova/InAppBrowser$4$1;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/InAppBrowser$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/InAppBrowser$4;


# direct methods
.method constructor <init>(Lorg/apache/cordova/InAppBrowser$4;)V
    .registers 2

    .prologue
    .line 357
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser$4$1;->this$1:Lorg/apache/cordova/InAppBrowser$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 360
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 361
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "type"

    const-string v3, "exit"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    iget-object v2, p0, Lorg/apache/cordova/InAppBrowser$4$1;->this$1:Lorg/apache/cordova/InAppBrowser$4;

    iget-object v2, v2, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    const/4 v3, 0x0

    # invokes: Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V
    invoke-static {v2, v1, v3}, Lorg/apache/cordova/InAppBrowser;->access$200(Lorg/apache/cordova/InAppBrowser;Lorg/json/JSONObject;Z)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_14} :catch_15

    .line 367
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_14
    return-void

    .line 364
    :catch_15
    move-exception v0

    .line 365
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "InAppBrowser"

    const-string v3, "Should never happen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method
