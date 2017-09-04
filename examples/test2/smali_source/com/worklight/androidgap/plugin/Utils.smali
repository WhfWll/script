.class public Lcom/worklight/androidgap/plugin/Utils;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/Utils$4;,
        Lcom/worklight/androidgap/plugin/Utils$ACTION;
    }
.end annotation


# static fields
.field private static final MARKET_ANDROID_WEB_URL:Ljava/lang/String; = "https://market.android.com/"

.field private static final MARKET_URL_PREFIX:Ljava/lang/String; = "market://"

.field private static final RESULT_ERROR:Ljava/lang/String; = "result:error"

.field private static final RESULT_HEIGHT:Ljava/lang/String; = "height"

.field private static final RESULT_WIDTH:Ljava/lang/String; = "width"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/Utils;

    const v1, 0x46d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 51
    return-void
.end method

.method private native callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z
.end method

.method private native clearHistory()Ljava/lang/String;
.end method

.method private native clearSeassionCookie()Ljava/lang/String;
.end method

.method private native copyToClipboard(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getInitParamaters(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method private native getScreenHeight()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method private native getScreenSize()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method private native getScreenWidth()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method private native loadSkin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native openURL(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native showToast(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native webViewReload()Ljava/lang/String;
.end method


# virtual methods
.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method native reloadApp()Ljava/lang/String;
.end method
