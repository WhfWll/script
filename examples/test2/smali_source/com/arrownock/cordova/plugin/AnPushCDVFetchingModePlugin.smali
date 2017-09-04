.class public Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "AnPushCDVFetchingModePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin$CordovaAnPushCallback;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_MUTE:Ljava/lang/String; = "clearMute"

.field private static final ACTION_CLEAR_SILENT_PERIOD:Ljava/lang/String; = "clearSilentPeriod"

.field private static final ACTION_CONNECT:Ljava/lang/String; = "connect"

.field private static final ACTION_DISABLE:Ljava/lang/String; = "disable"

.field private static final ACTION_DISCONNECT:Ljava/lang/String; = "disconnect"

.field private static final ACTION_ENABLE:Ljava/lang/String; = "enableFetchMode"

.field private static final ACTION_FETCH_LOCAL_STORE:Ljava/lang/String; = "fetchLocalStore"

.field private static final ACTION_GET_ANID:Ljava/lang/String; = "getAnID"

.field private static final ACTION_GET_VERSION:Ljava/lang/String; = "version"

.field private static final ACTION_INITIALIZE:Ljava/lang/String; = "init"

.field private static final ACTION_IS_CONNECTED:Ljava/lang/String; = "isConnected"

.field private static final ACTION_IS_ENABLED:Ljava/lang/String; = "isEnabled"

.field private static final ACTION_REGISTER:Ljava/lang/String; = "register"

.field private static final ACTION_SAVE_TO_LOCAL_STORE:Ljava/lang/String; = "saveToLocalStore"

.field private static final ACTION_SET_DEVICE_ID:Ljava/lang/String; = "setDeviceId"

.field private static final ACTION_SET_FETCHING_INTERVAL:Ljava/lang/String; = "setFetchingInterval"

.field private static final ACTION_SET_MUTE:Ljava/lang/String; = "setMute"

.field private static final ACTION_SET_SCHEDULED_MUTE:Ljava/lang/String; = "setScheduledMute"

.field private static final ACTION_SET_SERVERS:Ljava/lang/String; = "setServerHosts"

.field private static final ACTION_SET_SILENT_PERIOD:Ljava/lang/String; = "setSilentPeriod"

.field private static final ACTION_SHOW_FOREGROUND_NOTIFICATION:Ljava/lang/String; = "showForegroundNotification"

.field private static final ACTION_UNREGISTER:Ljava/lang/String; = "unregister"

.field public static final APP_NAME:Ljava/lang/String; = "12306"

.field private static final LOCAL_STORAGE:Ljava/lang/String; = "LOCAL_STORAGE"

.field public static final NOTIFICATION_ID:I = 0x1

.field private static final PENDING_PUSH_NOTIFICATIONS:Ljava/lang/String; = "PENDING_PUSH_NOTIFICATIONS"

.field private static final PENDING_PUSH_STORAGE:Ljava/lang/String; = "PENDING_PUSH_STORAGE"

.field private static callback:Lcom/arrownock/push/AnPushCallbackAdapter;

.field public static foregroundAlert:Ljava/lang/String;

.field private static instance:Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;

.field public static isAppRunning:Z

.field private static sdk:Lcom/arrownock/push/AnPush;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;

    const v1, 0xbc

    .line 34
    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 66
    const/4 v1, 0x0

    .line 0
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;->isAppRunning:Z

    .line 68
    const-string v0, "You have a new message"

    sput-object v0, Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;->foregroundAlert:Ljava/lang/String;

    sput-object v1, Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;->instance:Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;

    sput-object v1, Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;->sdk:Lcom/arrownock/push/AnPush;

    sput-object v1, Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;->callback:Lcom/arrownock/push/AnPushCallbackAdapter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 71
    sput-object p0, Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;->instance:Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;

    .line 72
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 761
    invoke-static {p0}, Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;->sendJavaScripStatement(Ljava/lang/String;)V

    return-void
.end method

.method private native clearMute()Lorg/json/JSONObject;
.end method

.method private native clearSilentPeriod()Lorg/json/JSONObject;
.end method

.method private native connect()Lorg/json/JSONObject;
.end method

.method private native disable()Lorg/json/JSONObject;
.end method

.method private native disconnect()Lorg/json/JSONObject;
.end method

.method private native enable()Lorg/json/JSONObject;
.end method

.method private native fetchPendingPushNotifications()V
.end method

.method private native getAnID()Ljava/lang/Object;
.end method

.method private native initialize(Ljava/lang/String;ZLorg/json/JSONObject;)Lorg/json/JSONObject;
.end method

.method public static native onReceivePayload(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method private native register(Lorg/json/JSONArray;)Lorg/json/JSONObject;
.end method

.method private static native sendJavaScripStatement(Ljava/lang/String;)V
.end method

.method private native setDeviceId(Lorg/json/JSONArray;)Lorg/json/JSONObject;
.end method

.method private native setFetchingInterval(Lorg/json/JSONArray;)Lorg/json/JSONObject;
.end method

.method private native setMute()Lorg/json/JSONObject;
.end method

.method private native setScheduledMute(Lorg/json/JSONArray;)Lorg/json/JSONObject;
.end method

.method private native setServers(Lorg/json/JSONArray;)Lorg/json/JSONObject;
.end method

.method private native setSilentPeriod(Lorg/json/JSONArray;)Lorg/json/JSONObject;
.end method

.method private native showForegroundNotificaton(Lorg/json/JSONArray;)Lorg/json/JSONObject;
.end method

.method public static native showForegroundNotificaton(Landroid/content/Context;Ljava/lang/String;ZI)V
.end method

.method public static native showForegroundNotificaton(Landroid/content/Context;ZI)V
.end method

.method private native unregister(Lorg/json/JSONArray;)Lorg/json/JSONObject;
.end method

.method private native validateSDKStatus()Lorg/json/JSONObject;
.end method


# virtual methods
.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native initialize(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
.end method

.method public native onPause(Z)V
.end method

.method public native onResume(Z)V
.end method
