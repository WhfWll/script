.class public Lcom/worklight/wlclient/api/WLPush;
.super Ljava/lang/Object;
.source "WLPush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;,
        Lcom/worklight/wlclient/api/WLPush$UpdateTokenListener;,
        Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;,
        Lcom/worklight/wlclient/api/WLPush$SubscribeRequestListener;
    }
.end annotation


# static fields
.field private static final ERROR_ID:Ljava/lang/String; = "WLClient.error"

.field private static final FROM_NOTIFICATION_BAR:Ljava/lang/String; = "notificationBar"

.field private static final NOT_UPDATE_FAILURE:Ljava/lang/String; = "WLClient.notificationUpdateFailure"

.field private static final OK:Ljava/lang/String; = "WLClient.ok"

.field private static final RESOURCE_BUNDLE:Ljava/lang/String; = "com/worklight/wlclient/messages"


# instance fields
.field private activity:Landroid/app/Activity;

.field private config:Lcom/worklight/common/WLConfig;

.field private context:Landroid/content/Context;

.field private deviceToken:Ljava/lang/String;

.field private httpContext:Lorg/apache/http/protocol/HttpContext;

.field private isTokenUpdatedOnServer:Z

.field private onMessage:Landroid/content/BroadcastReceiver;

.field private onReadyToSubscribeListener:Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;

.field private onRegister:Landroid/content/BroadcastReceiver;

.field private onRegisterError:Landroid/content/BroadcastReceiver;

.field private pending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/worklight/androidgap/push/WLGCMIntentService$Message;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPushEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private registeredEventSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;",
            ">;"
        }
    .end annotation
.end field

.field private serverToken:Ljava/lang/String;

.field private subscribedEventSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLPush;

    const v1, 0x4df

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lorg/apache/http/protocol/HttpContext;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V
    .registers 11
    .param p1, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p2, "config"    # Lcom/worklight/common/WLConfig;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/worklight/wlclient/api/WLPush;->isTokenUpdatedOnServer:Z

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->pendingPushEvents:Ljava/util/ArrayList;

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->pending:Ljava/util/ArrayList;

    .line 63
    iput-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->serverToken:Ljava/lang/String;

    .line 64
    iput-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->deviceToken:Ljava/lang/String;

    .line 71
    iput-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->onReadyToSubscribeListener:Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;

    .line 382
    new-instance v2, Lcom/worklight/wlclient/api/WLPush$3;

    invoke-direct {v2, p0}, Lcom/worklight/wlclient/api/WLPush$3;-><init>(Lcom/worklight/wlclient/api/WLPush;)V

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->onRegister:Landroid/content/BroadcastReceiver;

    .line 396
    new-instance v2, Lcom/worklight/wlclient/api/WLPush$4;

    invoke-direct {v2, p0}, Lcom/worklight/wlclient/api/WLPush$4;-><init>(Lcom/worklight/wlclient/api/WLPush;)V

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->onRegisterError:Landroid/content/BroadcastReceiver;

    .line 420
    new-instance v2, Lcom/worklight/wlclient/api/WLPush$5;

    invoke-direct {v2, p0}, Lcom/worklight/wlclient/api/WLPush$5;-><init>(Lcom/worklight/wlclient/api/WLPush;)V

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->onMessage:Landroid/content/BroadcastReceiver;

    .line 74
    if-nez p3, :cond_41

    .line 75
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getPush() call failed because the input parameter \'context\' is null. Pass a valid context instance."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_6b

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The current Android version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed to work with push."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "errorMsg":Ljava/lang/String;
    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 82
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_6b
    move-object v2, p3

    .line 85
    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    .line 88
    :try_start_70
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_75} :catch_fd

    .line 95
    :try_start_75
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7a} :catch_11b

    .line 101
    :try_start_7a
    const-string v2, "drawable"

    const-string v3, "push"

    invoke-static {p3, v2, v3}, Lcom/worklight/common/WLUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_81} :catch_139

    .line 106
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 107
    iput-object p2, p0, Lcom/worklight/wlclient/api/WLPush;->config:Lcom/worklight/common/WLConfig;

    .line 108
    iput-object p3, p0, Lcom/worklight/wlclient/api/WLPush;->context:Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLPush;->unregisterReceivers()V

    .line 111
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->onMessage:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".C2DM_MESSAGE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 114
    const-string v2, "Activity started from message notification"

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "notificationBar"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->onMessage:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 119
    :cond_f6
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->cancelAllNotification()V

    .line 120
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->dispatchPending()V

    .line 121
    return-void

    .line 89
    :catch_fd
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your device is not allowed to work with push. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_11b
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your manifest is not allowed to work with push. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_139
    move-exception v0

    .line 103
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to find the icon resource. Add the icon file under the /res/drawable folder."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$1100(Lcom/worklight/wlclient/api/WLPush;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/worklight/wlclient/api/WLPush;)Z
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->hasPendings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/worklight/wlclient/api/WLPush;)V
    .registers 1
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->dispatchPendings()V

    return-void
.end method

.method static synthetic access$1402(Lcom/worklight/wlclient/api/WLPush;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/worklight/wlclient/api/WLPush;->isTokenUpdatedOnServer:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/worklight/wlclient/api/WLPush;)Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->onReadyToSubscribeListener:Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/worklight/wlclient/api/WLPush;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/worklight/wlclient/api/WLPush;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush;->deviceToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/worklight/wlclient/api/WLPush;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLPush;->updateTokenCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/worklight/wlclient/api/WLPush;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->onRegister:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/worklight/wlclient/api/WLPush;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/worklight/wlclient/api/WLPush;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->onRegisterError:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/worklight/wlclient/api/WLPush;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/worklight/wlclient/api/WLPush;->showErrorDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/worklight/wlclient/api/WLPush;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->pending:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/worklight/wlclient/api/WLPush;)V
    .registers 1
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->dispatchPending()V

    return-void
.end method

.method private native cancelAllNotification()V
.end method

.method private native dispatch()V
.end method

.method private native dispatchPending()V
.end method

.method private native dispatchPendings()V
.end method

.method private native hasPendings()Z
.end method

.method private native isAbleToSubscribe(Ljava/lang/String;Z)Z
.end method

.method private native isDeviceSupportPush()Z
.end method

.method private native onMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end method

.method private native showErrorDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native updateRegisteredEventSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/worklight/wlclient/api/WLEventSourceListener;)V
.end method

.method private native updateTokenCallback(Ljava/lang/String;)V
.end method


# virtual methods
.method public native clearSubscribedEventSources()V
.end method

.method native getOnReadyToSubscribeListener()Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;
.end method

.method public native isForeground()Z
.end method

.method public native isPushSupported()Z
.end method

.method public native isSubscribed(Ljava/lang/String;)Z
.end method

.method public native registerEventSourceCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/worklight/wlclient/api/WLEventSourceListener;)V
.end method

.method public native setForeground(Z)V
.end method

.method public native setOnReadyToSubscribeListener(Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;)V
.end method

.method public native subscribe(Ljava/lang/String;Lcom/worklight/wlclient/api/WLPushOptions;Lcom/worklight/wlclient/api/WLResponseListener;)V
.end method

.method public native unregisterReceivers()V
.end method

.method public native unsubscribe(Ljava/lang/String;Lcom/worklight/wlclient/api/WLResponseListener;)V
.end method

.method public native updateSubscribedEventSources(Lorg/json/JSONArray;)V
.end method

.method public native updateToken(Ljava/lang/String;)V
.end method
