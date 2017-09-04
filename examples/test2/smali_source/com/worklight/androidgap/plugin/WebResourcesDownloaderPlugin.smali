.class public Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "WebResourcesDownloaderPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;
    }
.end annotation


# static fields
.field private static final ACTION_SWITCH_APP:Ljava/lang/String; = "switchApp"

.field private static final ACTION_UPDATE_APP:Ljava/lang/String; = "updateApp"

.field private static isUpdating:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin;

    const v1, 0x47a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin;->isUpdating:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 108
    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 59
    sput-boolean p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin;->isUpdating:Z

    return p0
.end method


# virtual methods
.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native isUpdating()Z
.end method
