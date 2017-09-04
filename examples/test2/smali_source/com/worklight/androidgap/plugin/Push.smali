.class public Lcom/worklight/androidgap/plugin/Push;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "Push.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/Push$4;,
        Lcom/worklight/androidgap/plugin/Push$ACTION;
    }
.end annotation


# static fields
.field private static final FROM_NOTIFICATION_BAR:Ljava/lang/String; = "notificationBar"

.field private static final WL_CLIENT_PUSH_ONMESSAGE:Ljava/lang/String; = "WL.Client.Push.__onmessage"


# instance fields
.field private badGCMSetupMsg:Ljava/lang/String;

.field private deviceToken:Ljava/lang/String;

.field private isGCMSetupValid:Z

.field private messageCallback:Ljava/lang/String;

.field private onMessageReceiver:Landroid/content/BroadcastReceiver;

.field private onRegisterErrorReceiver:Landroid/content/BroadcastReceiver;

.field private onRegisterReceiver:Landroid/content/BroadcastReceiver;

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


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/Push;

    const v1, 0x466

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->messageCallback:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/Push;->pending:Ljava/util/ArrayList;

    .line 49
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->deviceToken:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->badGCMSetupMsg:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/Push;->isGCMSetupValid:Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/worklight/androidgap/plugin/Push;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/Push;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Push;->pending:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/worklight/androidgap/plugin/Push;)V
    .registers 1
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/Push;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Push;->dispatchPending()V

    return-void
.end method

.method static synthetic access$200(Lcom/worklight/androidgap/plugin/Push;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/Push;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Push;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/worklight/androidgap/plugin/Push;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/Push;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/Push;->deviceToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/worklight/androidgap/plugin/Push;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/Push;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Push;->onRegisterReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/worklight/androidgap/plugin/Push;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/Push;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Push;->onRegisterErrorReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private native cancelAllNotification()V
.end method

.method private native dispatch(Lorg/json/JSONArray;)Z
.end method

.method private native dispatchPending()V
.end method

.method private native subscribe(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
.end method

.method private native unregisterReceivers()V
.end method

.method private native validateGCMSetup()V
.end method


# virtual methods
.method public native dispatchPending(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;)V
.end method

.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native initialize(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
.end method

.method public native onDestroy()V
.end method

.method public native onResume(Z)V
.end method
