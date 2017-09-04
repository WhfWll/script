.class public Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "SSLWebResourcesDownloaderPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;
    }
.end annotation


# static fields
.field private static final ACTION_SWITCH_APP:Ljava/lang/String; = "switchApp"

.field private static final ACTION_UPDATE_APP:Ljava/lang/String; = "updateApp"

.field private static isUpdating:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;

    const v1, 0x468

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->isUpdating:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .registers 1

    .prologue
    .line 75
    sput-boolean p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->isUpdating:Z

    return-void
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
