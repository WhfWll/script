.class public Lcom/worklight/androidgap/plugin/NetworkDetector;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "NetworkDetector.java"


# static fields
.field public static final ACTION_GET_NETWORK_INFO:Ljava/lang/String; = "getNetworkInfo"

.field private static loggerPlugin:Lcom/worklight/androidgap/plugin/LoggerPlugin;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/NetworkDetector;

    const v1, 0x462

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 47
    sget-object v0, Lcom/worklight/androidgap/plugin/NetworkDetector;->loggerPlugin:Lcom/worklight/androidgap/plugin/LoggerPlugin;

    if-nez v0, :cond_e

    .line 48
    new-instance v0, Lcom/worklight/androidgap/plugin/LoggerPlugin;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/LoggerPlugin;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/plugin/NetworkDetector;->loggerPlugin:Lcom/worklight/androidgap/plugin/LoggerPlugin;

    .line 50
    :cond_e
    return-void
.end method

.method private native getAllIpAddresses()[Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public static native getPrimaryAddress([Lorg/json/JSONObject;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method


# virtual methods
.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native getNetworkData(Landroid/content/Context;)Lorg/json/JSONObject;
.end method
