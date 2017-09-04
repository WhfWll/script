.class Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread$1;
.super Landroid/os/Handler;
.source "DownloadApkThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;
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

    const-class v0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread$1;

    const v1, 0x12b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread$1;->this$0:Lcom/bontai/mobiads/ads/tour/download/DownloadApkThread;

    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public native handleMessage(Landroid/os/Message;)V
.end method
