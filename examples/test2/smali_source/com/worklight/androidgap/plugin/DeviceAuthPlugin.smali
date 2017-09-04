.class public Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "DeviceAuthPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$1;,
        Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;
    }
.end annotation


# static fields
.field private static final RESULT_ERROR:Ljava/lang/String; = "result:error"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;

    const v1, 0x45a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 30
    return-void
.end method

.method private native callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z
.end method

.method private native clearDeviceCertCredentials(Lorg/json/JSONArray;)Ljava/lang/String;
.end method

.method private native getDeviceUUID()Ljava/lang/String;
.end method

.method private native init(Lorg/json/JSONArray;)Ljava/lang/String;
.end method

.method private native isIfCertificateExists(Lorg/json/JSONArray;)Ljava/lang/String;
.end method

.method private native saveCertificate(Lorg/json/JSONArray;)Ljava/lang/String;
.end method

.method private native signCsr(Lorg/json/JSONArray;)Ljava/lang/String;
.end method

.method private native signDeviceAuth(Lorg/json/JSONArray;)Ljava/lang/String;
.end method


# virtual methods
.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
