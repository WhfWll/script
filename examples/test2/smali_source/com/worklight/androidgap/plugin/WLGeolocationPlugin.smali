.class public Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "WLGeolocationPlugin.java"


# instance fields
.field private gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

.field private locationManager:Landroid/location/LocationManager;

.field private networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;

    const v1, 0x474

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 62
    return-void
.end method

.method private native addWatch(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method private native clearWatch(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method private native getListener(Lorg/json/JSONArray;IILorg/apache/cordova/api/CallbackContext;)Lcom/worklight/androidgap/plugin/WLLocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method private native getLocation(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method private native removeCallback(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
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

.method public native fail(ILjava/lang/String;Lorg/apache/cordova/api/CallbackContext;Z)V
.end method

.method public native isGlobalListener(Lcom/worklight/androidgap/plugin/WLLocationListener;)Z
.end method

.method public native onDestroy()V
.end method

.method public native onReset()V
.end method

.method public native returnLocationJSON(Landroid/location/Location;)Lorg/json/JSONObject;
.end method

.method public native win(Landroid/location/Location;Lorg/apache/cordova/api/CallbackContext;Z)V
.end method
