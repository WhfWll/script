.class public Lcom/worklight/common/WLConfig;
.super Ljava/lang/Object;
.source "WLConfig.java"


# static fields
.field public static final ENABLE_SETTINGS:Ljava/lang/String; = "enableSettings"

.field private static final IGNORED_FILE_EXTENSIONS:Ljava/lang/String; = "ignoredFileExtensions"

.field public static final WL_APP_ID:Ljava/lang/String; = "wlAppId"

.field public static final WL_APP_VERSION:Ljava/lang/String; = "wlAppVersion"

.field public static final WL_CLIENT_PROPS_NAME:Ljava/lang/String; = "wlclient.properties"

.field private static final WL_ENVIRONMENT:Ljava/lang/String; = "wlEnvironment"

.field public static final WL_GCM_SENDER:Ljava/lang/String; = "GcmSenderId"

.field public static final WL_MAIN_FILE_PATH:Ljava/lang/String; = "wlMainFilePath"

.field public static final WL_PLATFORM_VERSION:Ljava/lang/String; = "wlPlatformVersion"

.field private static final WL_PREFS:Ljava/lang/String; = "WLPrefs"

.field public static final WL_SERVER_CONTEXT:Ljava/lang/String; = "wlServerContext"

.field public static final WL_SERVER_HOST:Ljava/lang/String; = "wlServerHost"

.field public static final WL_SERVER_PORT:Ljava/lang/String; = "wlServerPort"

.field public static final WL_SERVER_PROTOCOL:Ljava/lang/String; = "wlServerProtocol"

.field private static final WL_TEST_WEB_RESOURCES_CHECKSUM:Ljava/lang/String; = "testWebResourcesChecksum"

.field public static final WL_WEB_RESOURCES_UNPACKD_SIZE:Ljava/lang/String; = "webResourcesSize"

.field public static final WL_X_VERSION_HEADER:Ljava/lang/String; = "x-wl-app-version"


# instance fields
.field private prefs:Landroid/content/SharedPreferences;

.field private wlProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/WLConfig;

    const v1, 0x4ad

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/worklight/common/WLConfig;-><init>(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/worklight/common/WLConfig;->prefs:Landroid/content/SharedPreferences;

    .line 53
    :try_start_d
    iget-object v1, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "wlclient.properties"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 54
    const-string v1, "WLPrefs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/worklight/common/WLConfig;->prefs:Landroid/content/SharedPreferences;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_25} :catch_26

    .line 58
    return-void

    .line 55
    :catch_26
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "WLConfig(): Can\'t load wlclient.properties file"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private native getPropertyOrPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public native getAppId()Ljava/lang/String;
.end method

.method public native getAppURL()Ljava/net/URL;
.end method

.method public native getApplicationVersion()Ljava/lang/String;
.end method

.method public native getContext()Ljava/lang/String;
.end method

.method public native getDefaultRootUrl()Ljava/lang/String;
.end method

.method public native getGCMSender()Ljava/lang/String;
.end method

.method public native getHost()Ljava/lang/String;
.end method

.method public native getMainFileFromDescriptor()Ljava/lang/String;
.end method

.method public native getMediaExtensions()[Ljava/lang/String;
.end method

.method public native getPlatformVersion()Ljava/lang/String;
.end method

.method public native getPort()Ljava/lang/String;
.end method

.method public native getProtocol()Ljava/lang/String;
.end method

.method public native getRootURL()Ljava/lang/String;
.end method

.method public native getSettingsFlag()Ljava/lang/String;
.end method

.method public native getTestWebResourcesChecksumFlag()Ljava/lang/String;
.end method

.method public native getWLEnvironment()Ljava/lang/String;
.end method

.method public native getWebResourcesUnpackedSize()Ljava/lang/String;
.end method
