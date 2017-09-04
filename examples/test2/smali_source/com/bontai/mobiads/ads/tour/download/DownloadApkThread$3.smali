.class Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread$3;
.super Ljava/util/TimerTask;
.source "DownloadApkThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;->handlerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread$3;

    const v1, 0x12d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread$3;->this$0:Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;

    .line 94
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
