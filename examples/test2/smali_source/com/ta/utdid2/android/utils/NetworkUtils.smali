.class public Lcom/ta/utdid2/android/utils/NetworkUtils;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_WIFI_ADDRESS:Ljava/lang/String; = "00-00-00-00-00-00"

.field private static final TAG:Ljava/lang/String; = "NetworkUtils"

.field private static final WEAK_NETWORK_GROUP:[I

.field public static final WIFI:Ljava/lang/String; = "Wi-Fi"

.field private static sConnManager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ta/utdid2/android/utils/NetworkUtils;

    const v1, 0x3e9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/android/utils/NetworkUtils;->sConnManager:Landroid/net/ConnectivityManager;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/ta/utdid2/android/utils/NetworkUtils;->WEAK_NETWORK_GROUP:[I

    return-void

    :array_14
    .array-data 4
        0x4
        0x7
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _convertIntToIp(I)Ljava/lang/String;
.end method

.method public static native getConnManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
.end method

.method public static native getNetworkState(Landroid/content/Context;)[Ljava/lang/String;
.end method

.method public static native getWifiAddress(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native getWifiIpAddress(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native isConnected(Landroid/content/Context;)Z
.end method

.method public static native isConnectedToWeakNetwork(Landroid/content/Context;)Z
.end method

.method public static native isWifi(Landroid/content/Context;)Z
.end method
