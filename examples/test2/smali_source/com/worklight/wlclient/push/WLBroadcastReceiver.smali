.class public Lcom/worklight/wlclient/push/WLBroadcastReceiver;
.super Lcom/google/android/gcm/GCMBroadcastReceiver;
.source "WLBroadcastReceiver.java"


# static fields
.field private static final INTENT_SERVICE:Ljava/lang/String; = "com.worklight.wlclient.push.GCMIntentService"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/push/WLBroadcastReceiver;

    const v1, 0x4e9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected native getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
.end method
