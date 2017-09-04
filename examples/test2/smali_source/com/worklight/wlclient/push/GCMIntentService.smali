.class public Lcom/worklight/wlclient/push/GCMIntentService;
.super Lcom/worklight/androidgap/push/WLGCMIntentService;
.source "GCMIntentService.java"


# static fields
.field private static isAppForeground:Z


# instance fields
.field private resultReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/push/GCMIntentService;

    const v1, 0x4e8

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/worklight/wlclient/push/GCMIntentService;->isAppForeground:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/worklight/androidgap/push/WLGCMIntentService;-><init>()V

    .line 44
    new-instance v0, Lcom/worklight/wlclient/push/GCMIntentService$1;

    invoke-direct {v0, p0}, Lcom/worklight/wlclient/push/GCMIntentService$1;-><init>(Lcom/worklight/wlclient/push/GCMIntentService;)V

    iput-object v0, p0, Lcom/worklight/wlclient/push/GCMIntentService;->resultReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    iget-object v0, p0, Lcom/worklight/wlclient/push/GCMIntentService;->resultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/push/GCMIntentService;->setBroadcastReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/worklight/wlclient/push/GCMIntentService;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p0, "x0"    # Lcom/worklight/wlclient/push/GCMIntentService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/worklight/wlclient/push/GCMIntentService;->onUnhandled(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static native isAppForeground()Z
.end method

.method public static native setAppForeground(Z)V
.end method


# virtual methods
.method protected native getNotificationTitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected native getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
.end method

.method protected native setResources()V
.end method
