.class public Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;
.super Ljava/lang/Thread;
.source "DownloadApkThread.java"


# instance fields
.field callback:Lcom/bontai/mobiads/ads/tour/download/DownloadFileCallback;

.field private context:Landroid/content/Context;

.field private downLoadUtil:Lcom/bontai/mobiads/ads/tour/download/DownLoadUtil;

.field private final downloadError:I

.field private final downloadSuccess:I

.field private downloadUrl:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private final notificationID:I

.field private notificationManager:Landroid/app/NotificationManager;

.field private saveFile:Ljava/io/File;

.field private task:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;

.field private final updateProgress:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;

    const v1, 0x12e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "fileLocation"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    const v0, 0x989681

    iput v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->notificationID:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->updateProgress:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->downloadSuccess:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->downloadError:I

    .line 104
    new-instance v0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread$1;

    invoke-direct {v0, p0}, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread$1;-><init>(Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;)V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->handler:Landroid/os/Handler;

    .line 167
    new-instance v0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread$2;

    invoke-direct {v0, p0}, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread$2;-><init>(Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;)V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->callback:Lcom/bontai/mobiads/ads/tour/download/DownloadFileCallback;

    .line 39
    iput-object p1, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->downloadUrl:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->saveFile:Ljava/io/File;

    .line 41
    iput-object p4, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->context:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->fileName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;)Lcom/bontai/mobiads/ads/tour/download/DownLoadUtil;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->downLoadUtil:Lcom/bontai/mobiads/ads/tour/download/DownLoadUtil;

    return-object v0
.end method

.method static synthetic access$1(Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;)Landroid/app/NotificationManager;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;)Ljava/io/File;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->saveFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$3(Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;)Ljava/util/Timer;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$6(Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;)Ljava/util/TimerTask;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->task:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$7(Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;Ljava/util/Timer;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->timer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$8(Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;Ljava/util/TimerTask;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->task:Ljava/util/TimerTask;

    return-void
.end method

.method private native handlerTask()V
.end method

.method private native initNofication()V
.end method


# virtual methods
.method public native getDefalutIntent(I)Landroid/app/PendingIntent;
.end method

.method public native run()V
.end method
