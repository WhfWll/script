.class public Lcom/ta/utdid2/device/DeviceInfo;
.super Ljava/lang/Object;


# static fields
.field static final CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

.field static HMAC_KEY:Ljava/lang/String; = null

.field static final UTDID_VERSION_CODE:B = 0x1t

.field private static mDevice:Lcom/ta/utdid2/device/Device;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ta/utdid2/device/DeviceInfo;

    const v1, 0x3f6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;

    const-string v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->HMAC_KEY:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _initDeviceMetadata(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
.end method

.method public static native declared-synchronized getDevice(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
.end method

.method static native getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J
.end method
