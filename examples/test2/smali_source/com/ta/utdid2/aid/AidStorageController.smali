.class public Lcom/ta/utdid2/aid/AidStorageController;
.super Ljava/lang/Object;


# static fields
.field private static final KEY_PREF_AID_GEN_TIME:Ljava/lang/String; = "rKrMJgyAEbVtSQGi"

.field private static final KEY_PREF_AID_VALUE:Ljava/lang/String; = "EvQwnbilKezpOJey"

.field private static final PREF_AID:Ljava/lang/String; = "OfJbkLdFbPOMbGyP"

.field private static final TAG:Ljava/lang/String;

.field private static sAidGenTimeMapInSP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sAidMapInSP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ta/utdid2/aid/AidStorageController;

    const v1, 0x3e1

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-class v0, Lcom/ta/utdid2/aid/AidStorageController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/aid/AidStorageController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ta/utdid2/aid/AidStorageController;->sAidMapInSP:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ta/utdid2/aid/AidStorageController;->sAidGenTimeMapInSP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getAidGenTimeFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static native getAidValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getEncodedAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native setAidValueToSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
