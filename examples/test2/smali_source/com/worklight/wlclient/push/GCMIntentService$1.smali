.class Lcom/worklight/wlclient/push/GCMIntentService$1;
.super Landroid/content/BroadcastReceiver;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/wlclient/push/GCMIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/push/GCMIntentService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/push/GCMIntentService$1;

    const v1, 0x4e7

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/push/GCMIntentService;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/worklight/wlclient/push/GCMIntentService$1;->this$0:Lcom/worklight/wlclient/push/GCMIntentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public native onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method
