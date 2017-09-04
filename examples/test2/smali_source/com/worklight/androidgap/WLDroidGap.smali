.class public Lcom/worklight/androidgap/WLDroidGap;
.super Lorg/apache/cordova/DroidGap;
.source "WLDroidGap.java"

# interfaces
.implements Lcom/worklight/androidgap/WLDroidGapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;,
        Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;
    }
.end annotation


# static fields
.field private static final ANDROID_ASSET:Ljava/lang/String; = "/android_asset"

.field private static final CLEAR_CACHE_NEXT_LOAD:Ljava/lang/String; = "com.worklight.clearCacheNextLoad"

.field public static final DIRECT_UPDATE_RESULT:Ljava/lang/String; = "directUpdateResult"

.field private static final ENABLE_SETTINGS_FLAG:Ljava/lang/String; = "enableSettings"

.field public static final EXIT_ON_SKIN_LOADER:Ljava/lang/String; = "exitOnSkinLoader"

.field private static final NATIVE_EMPTY_APP_HTML:Ljava/lang/String; = "NativeEmptyApp.html"

.field public static final RESOURCES_CHECKSUM_PREF_KEY:Ljava/lang/String; = "wlResourcesChecksum"

.field public static final SKIN_LOADER_HTML:Ljava/lang/String; = "skinLoader.html"

.field public static final SKIN_NAME_PREF_KEY:Ljava/lang/String; = "wlSkinName"

.field public static final WL_DEFAULT_SERVER_URL:Ljava/lang/String; = "WLDefaultServerURL"

.field private static final WL_IS_EXTERNAL_WEBRESOURCES:Ljava/lang/String; = "WLIsExternalWebResources"

.field private static isForegound:Z

.field private static final logger:Lcom/worklight/common/Logger;

.field private static wlConfig:Lcom/worklight/common/WLConfig;


# instance fields
.field private absolutePathToExternalAppFiles:Ljava/lang/String;

.field private fatalErrorOccurred:Z

.field private longPrepareTask:Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;

.field private optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/WLDroidGap;

    const v1, 0xa

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const-class v0, Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    move-result-object v0

    invoke-static {v0}, Lcom/worklight/common/Logger;->getInstance(Ljava/lang/String;)Lcom/worklight/common/Logger;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/WLDroidGap;->logger:Lcom/worklight/common/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/worklight/androidgap/WLDroidGap;->isForegound:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/WLDroidGap;->optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/WLDroidGap;->fatalErrorOccurred:Z

    .line 712
    return-void
.end method

.method static synthetic access$100()Lcom/worklight/common/Logger;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/worklight/androidgap/WLDroidGap;->logger:Lcom/worklight/common/Logger;

    return-object v0
.end method

.method static synthetic access$200()Lcom/worklight/common/WLConfig;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/worklight/androidgap/WLDroidGap;->wlConfig:Lcom/worklight/common/WLConfig;

    return-object v0
.end method

.method static synthetic access$302(Lcom/worklight/androidgap/WLDroidGap;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/WLDroidGap;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/worklight/androidgap/WLDroidGap;->fatalErrorOccurred:Z

    return p1
.end method

.method static synthetic access$500(Lcom/worklight/androidgap/WLDroidGap;)V
    .registers 1
    .param p0, "x0"    # Lcom/worklight/androidgap/WLDroidGap;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/worklight/androidgap/WLDroidGap;->doPrepareAssetsWork()V

    return-void
.end method

.method private native doPrepareAssetsWork()V
.end method

.method public static native getWLConfig()Lcom/worklight/common/WLConfig;
.end method

.method private native isClearCacheNextLoad()Z
.end method

.method private native isExternalWebResources()Z
.end method

.method public static native isForeGround()Z
.end method

.method private native removeSessionCookies(Lorg/apache/cordova/CordovaWebView;)V
.end method

.method private native setClearCacheNextLoad(Z)V
.end method

.method private static native setForeGround(Z)V
.end method

.method private native testResourcesChecksum()V
.end method


# virtual methods
.method protected native bindBrowser(Lorg/apache/cordova/CordovaWebView;)V
.end method

.method protected native bindBrowser(Lorg/apache/cordova/CordovaWebView;Z)V
.end method

.method public native getAbsolutePathToExternalAppFiles()Ljava/lang/String;
.end method

.method public native getAbsolutePathToExternalWWWAppFiles()Ljava/lang/String;
.end method

.method public native getAppWebUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected native getIntentDataInJSONFormat(Landroid/content/Intent;)Ljava/lang/String;
.end method

.method public native getLocalStorageRoot()Ljava/lang/String;
.end method

.method public native getWebMainFilePath()Ljava/lang/String;
.end method

.method public native getWebResourcesUrl()Ljava/lang/String;
.end method

.method public native getWebUrl()Ljava/lang/String;
.end method

.method public native init()V
.end method

.method public native loadUrl(Ljava/lang/String;)V
.end method

.method public native loadUrl(Ljava/lang/String;Z)V
.end method

.method protected native onActivityResult(IILandroid/content/Intent;)V
.end method

.method public native onCreate(Landroid/os/Bundle;)V
.end method

.method public native onCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public native onDestroy()V
.end method

.method protected native onNewIntent(Landroid/content/Intent;)V
.end method

.method public native onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public native onPause()V
.end method

.method public native onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public native onResume()V
.end method

.method public native onWLInitCompleted(Landroid/os/Bundle;)V
.end method

.method public native removeSplashScreen()V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public native setClearCacheNextLoad()V
.end method

.method public native setExternalWebResources(Z)V
.end method
