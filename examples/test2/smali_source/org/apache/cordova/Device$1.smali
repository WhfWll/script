.class Lorg/apache/cordova/Device$1;
.super Landroid/content/BroadcastReceiver;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/Device;->initTelephonyReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/Device;


# direct methods
.method constructor <init>(Lorg/apache/cordova/Device;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/cordova/Device$1;->this$0:Lorg/apache/cordova/Device;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    if-eqz p2, :cond_36

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 118
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 119
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "extraData":Ljava/lang/String;
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 121
    const-string v1, "Device"

    const-string v2, "Telephone RINGING"

    invoke-static {v1, v2}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lorg/apache/cordova/Device$1;->this$0:Lorg/apache/cordova/Device;

    iget-object v1, v1, Lorg/apache/cordova/Device;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v2, "telephone"

    const-string v3, "ringing"

    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/CordovaWebView;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    .end local v0    # "extraData":Ljava/lang/String;
    :cond_36
    :goto_36
    return-void

    .line 124
    .restart local v0    # "extraData":Ljava/lang/String;
    :cond_37
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 125
    const-string v1, "Device"

    const-string v2, "Telephone OFFHOOK"

    invoke-static {v1, v2}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lorg/apache/cordova/Device$1;->this$0:Lorg/apache/cordova/Device;

    iget-object v1, v1, Lorg/apache/cordova/Device;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v2, "telephone"

    const-string v3, "offhook"

    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/CordovaWebView;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_36

    .line 128
    :cond_52
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 129
    const-string v1, "Device"

    const-string v2, "Telephone IDLE"

    invoke-static {v1, v2}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lorg/apache/cordova/Device$1;->this$0:Lorg/apache/cordova/Device;

    iget-object v1, v1, Lorg/apache/cordova/Device;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v2, "telephone"

    const-string v3, "idle"

    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/CordovaWebView;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_36
.end method