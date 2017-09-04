.class public Lcom/tl/uic/util/ConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionReceiver.java"


# instance fields
.field private _isOnline:Ljava/lang/Boolean;

.field private connectionType:Ljava/lang/String;

.field private networkReachability:Lcom/tl/uic/model/ReachabilityType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/ConnectionReceiver;

    const v1, 0x41e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/util/ConnectionReceiver;->_isOnline:Ljava/lang/Boolean;

    .line 21
    sget-object v0, Lcom/tl/uic/model/ReachabilityType;->Unknown:Lcom/tl/uic/model/ReachabilityType;

    iput-object v0, p0, Lcom/tl/uic/util/ConnectionReceiver;->networkReachability:Lcom/tl/uic/model/ReachabilityType;

    .line 19
    return-void
.end method


# virtual methods
.method public final native getConnectionType()Ljava/lang/String;
.end method

.method public final native getNetworkReachability()Lcom/tl/uic/model/ReachabilityType;
.end method

.method public final native isOnline()Ljava/lang/Boolean;
.end method

.method public final native onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method
