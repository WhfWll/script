.class public Lcom/ta/utdid2/aid/AidManager;
.super Ljava/lang/Object;


# static fields
.field private static final NUM_DAY_OUT_OF_DATE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sAidManager:Lcom/ta/utdid2/aid/AidManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ta/utdid2/aid/AidManager;

    const v1, 0x3de

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/aid/AidManager;->sAidManager:Lcom/ta/utdid2/aid/AidManager;

    const-class v0, Lcom/ta/utdid2/aid/AidManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/aid/AidManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ta/utdid2/aid/AidManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private native declared-synchronized genAidValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native declared-synchronized getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidManager;
.end method


# virtual methods
.method public native getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native requestAid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/a;)V
.end method
