.class public final Lcom/alipay/b/a/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/b/a/a/c/a;


# static fields
.field private static d:Lcom/alipay/b/a/a/c/b;

.field private static e:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;


# instance fields
.field private a:Lcom/alipay/android/phone/mrpc/core/ad;

.field private b:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

.field private c:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/b/a/a/c/b;

    const v1, 0x63

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/b/a/a/c/b;->d:Lcom/alipay/b/a/a/c/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/b/a/a/c/b;->a:Lcom/alipay/android/phone/mrpc/core/ad;

    iput-object v0, p0, Lcom/alipay/b/a/a/c/b;->b:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/b/a/a/c/b;->c:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/e;

    invoke-direct {v1}, Lcom/alipay/android/phone/mrpc/core/e;-><init>()V

    iput-object p2, v1, Lcom/alipay/android/phone/mrpc/core/e;->a:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/o;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/mrpc/core/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/b/a/a/c/b;->a:Lcom/alipay/android/phone/mrpc/core/ad;

    iget-object v0, p0, Lcom/alipay/b/a/a/c/b;->a:Lcom/alipay/android/phone/mrpc/core/ad;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/ad;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/b/a/a/c/b;->b:Lcom/alipay/tscenter/biz/rpc/deviceFp/BugTrackMessageService;

    iget-object v0, p0, Lcom/alipay/b/a/a/c/b;->a:Lcom/alipay/android/phone/mrpc/core/ad;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/ad;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    iput-object v0, p0, Lcom/alipay/b/a/a/c/b;->c:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    return-void
.end method

.method public static native declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/b/a/a/c/b;
.end method

.method static synthetic a(Lcom/alipay/b/a/a/c/b;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;
    .registers 2

    iget-object v0, p0, Lcom/alipay/b/a/a/c/b;->c:Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    return-object v0
.end method

.method static synthetic a()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .registers 1

    sget-object v0, Lcom/alipay/b/a/a/c/b;->e:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .registers 1

    sput-object p0, Lcom/alipay/b/a/a/c/b;->e:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object p0
.end method


# virtual methods
.method public final native a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
.end method

.method public final native a(Ljava/lang/String;)Z
.end method
