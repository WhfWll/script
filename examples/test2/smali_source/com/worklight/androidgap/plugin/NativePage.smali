.class public Lcom/worklight/androidgap/plugin/NativePage;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "NativePage.java"


# static fields
.field public static final ACTION_SHOW:Ljava/lang/String; = "show"

.field public static NATIVE_ACTIVITY_REQ_CODE:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/NativePage;

    const v1, 0x461

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const v0, 0xd599

    sput v0, Lcom/worklight/androidgap/plugin/NativePage;->NATIVE_ACTIVITY_REQ_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method

.method private native createIntentFromJSONData(Ljava/lang/String;)Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method private native show(Lorg/json/JSONArray;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
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
