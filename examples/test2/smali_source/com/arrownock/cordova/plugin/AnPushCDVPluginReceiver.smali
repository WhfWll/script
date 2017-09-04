.class public Lcom/arrownock/cordova/plugin/AnPushCDVPluginReceiver;
.super Lcom/arrownock/push/PushBroadcastReceiver;
.source "AnPushCDVPluginReceiver.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/cordova/plugin/AnPushCDVPluginReceiver;

    const v1, 0xbe

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/arrownock/push/PushBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public native showNotification(Landroid/content/Context;Lorg/json/JSONObject;I)V
.end method
