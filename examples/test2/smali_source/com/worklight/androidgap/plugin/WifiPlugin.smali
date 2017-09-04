.class public Lcom/worklight/androidgap/plugin/WifiPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "WifiPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/WifiPlugin$2;,
        Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;,
        Lcom/worklight/androidgap/plugin/WifiPlugin$Action;
    }
.end annotation


# static fields
.field private static final MACArray:[Ljava/lang/String;

.field private static final SSIDArray:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "Wifi"

.field private static final randomGenerator:Ljava/util/Random;


# instance fields
.field private ctx:Landroid/content/Context;

.field wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/worklight/androidgap/plugin/WifiPlugin;

    const v1, 0x47d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 74
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin;->randomGenerator:Ljava/util/Random;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "foo"

    .line 75
    aput-object v1, v0, v2

    const-string v1, "spam"

    aput-object v1, v0, v3

    const-string v1, "last"

    aput-object v1, v0, v4

    sput-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin;->SSIDArray:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "egg"

    aput-object v1, v0, v2

    const-string v1, "bar"

    aput-object v1, v0, v3

    const-string v1, "least"

    aput-object v1, v0, v4

    sput-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin;->MACArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/worklight/androidgap/plugin/WifiPlugin;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/WifiPlugin;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WifiPlugin;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 46
    invoke-static {}, Lcom/worklight/androidgap/plugin/WifiPlugin;->isEmulator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/util/Random;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin;->randomGenerator:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin;->SSIDArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin;->MACArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/ScanResult;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/worklight/androidgap/plugin/WifiPlugin;->createScanResult(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/worklight/androidgap/plugin/WifiPlugin;Ljava/lang/Iterable;)Lorg/json/JSONArray;
    .registers 3
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/WifiPlugin;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/WifiPlugin;->resultToJSONArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private static native createScanResult(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/ScanResult;
.end method

.method private native getCurrentSsid(Landroid/content/Context;)Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;
.end method

.method private static native getStrength(Landroid/net/wifi/ScanResult;)I
.end method

.method private static native isEmulator()Z
.end method

.method private native resultToJSONArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation
.end method

.method private native scanWifi(Lorg/apache/cordova/api/CallbackContext;)V
.end method

.method private static native toAllCaps(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
