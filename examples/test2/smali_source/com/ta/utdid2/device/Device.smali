.class public Lcom/ta/utdid2/device/Device;
.super Ljava/lang/Object;


# instance fields
.field private deviceId:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private mCheckSum:J

.field private mCreateTimestamp:J

.field private utdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ta/utdid2/device/Device;

    const v1, 0x3f5

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->deviceId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/device/Device;->utdid:Ljava/lang/String;

    iput-wide v2, p0, Lcom/ta/utdid2/device/Device;->mCreateTimestamp:J

    iput-wide v2, p0, Lcom/ta/utdid2/device/Device;->mCheckSum:J

    return-void
.end method


# virtual methods
.method native getCheckSum()J
.end method

.method native getCreateTimestamp()J
.end method

.method public native getDeviceId()Ljava/lang/String;
.end method

.method public native getImei()Ljava/lang/String;
.end method

.method public native getImsi()Ljava/lang/String;
.end method

.method public native getUtdid()Ljava/lang/String;
.end method

.method native setCheckSum(J)V
.end method

.method native setCreateTimestamp(J)V
.end method

.method native setDeviceId(Ljava/lang/String;)V
.end method

.method native setImei(Ljava/lang/String;)V
.end method

.method native setImsi(Ljava/lang/String;)V
.end method

.method native setUtdid(Ljava/lang/String;)V
.end method
