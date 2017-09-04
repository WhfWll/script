.class Lcom/bontai/mobiads/ads/tour/TourDetailView$MyWebViewDownLoadListener;
.super Ljava/lang/Object;
.source "TourDetailView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bontai/mobiads/ads/tour/TourDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bontai/mobiads/ads/tour/TourDetailView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/tour/TourDetailView$MyWebViewDownLoadListener;

    const v1, 0x120

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/bontai/mobiads/ads/tour/TourDetailView;)V
    .registers 2

    .prologue
    .line 489
    iput-object p1, p0, Lcom/bontai/mobiads/ads/tour/TourDetailView$MyWebViewDownLoadListener;->this$0:Lcom/bontai/mobiads/ads/tour/TourDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bontai/mobiads/ads/tour/TourDetailView;Lcom/bontai/mobiads/ads/tour/TourDetailView$MyWebViewDownLoadListener;)V
    .registers 3

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/bontai/mobiads/ads/tour/TourDetailView$MyWebViewDownLoadListener;-><init>(Lcom/bontai/mobiads/ads/tour/TourDetailView;)V

    return-void
.end method


# virtual methods
.method public native onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method
