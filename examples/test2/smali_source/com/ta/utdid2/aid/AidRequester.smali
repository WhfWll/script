.class public Lcom/ta/utdid2/aid/AidRequester;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/aid/AidRequester$PostRestThread;
    }
.end annotation


# static fields
.field private static final AIDFUNCNAME:Ljava/lang/String; = "/get_aid/"

.field private static final AIDSERVER:Ljava/lang/String; = "http://hydra.alibaba.com/"

.field private static final NAME_AID:Ljava/lang/String; = "&aid="

.field private static final NAME_ID:Ljava/lang/String; = "&id="

.field private static final NAME_RESULT_ACTION:Ljava/lang/String; = "action"

.field private static final NAME_RESULT_AID:Ljava/lang/String; = "aid"

.field private static final NAME_RESULT_ISERROR:Ljava/lang/String; = "isError"

.field private static final NAME_RESULT_STATUS:Ljava/lang/String; = "status"

.field private static final NAME_RESUTL_DATA:Ljava/lang/String; = "data"

.field private static final NAME_TOKEN:Ljava/lang/String; = "auth[token]="

.field private static final NAME_TYPE:Ljava/lang/String; = "&type="

.field private static final RSP_ACTION_CHANGED:Ljava/lang/String; = "changed"

.field private static final RSP_ACTION_NEW:Ljava/lang/String; = "new"

.field private static final RSP_ACTION_UNCHANGED:Ljava/lang/String; = "unchanged"

.field private static final RSP_ISERROR_FALSE:Ljava/lang/String; = "false"

.field private static final RSP_ISERROR_TRUE:Ljava/lang/String; = "true"

.field private static final RSP_STATUS_INVALID_APP:Ljava/lang/String; = "404"

.field private static final RSP_STATUS_INVALID_TOKEN:Ljava/lang/String; = "401"

.field private static final RSP_STATUS_OK:Ljava/lang/String; = "200"

.field private static final SESSION_TIME_OUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_UTDID:Ljava/lang/String; = "utdid"

.field private static final WEAK_SESSION_TIME_OUT:I = 0xbb8

.field private static sAidRequester:Lcom/ta/utdid2/aid/AidRequester;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ta/utdid2/aid/AidRequester;

    const v1, 0x3e0

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-class v0, Lcom/ta/utdid2/aid/AidRequester;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/aid/AidRequester;->sAidRequester:Lcom/ta/utdid2/aid/AidRequester;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/ta/utdid2/aid/AidRequester;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/ta/utdid2/aid/AidRequester;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ta/utdid2/aid/AidRequester;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/ta/utdid2/aid/AidRequester;->getAidFromJsonRsp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/ta/utdid2/aid/AidRequester;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/ta/utdid2/aid/AidRequester;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static native getAidFromJsonRsp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native declared-synchronized getInstance(Landroid/content/Context;)Lcom/ta/utdid2/aid/AidRequester;
.end method

.method private static native getPostUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public native postRest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native postRestAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ut/device/a;)V
.end method
